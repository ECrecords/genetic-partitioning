import random
import numpy as np
from deap import base, creator, tools
import fitness

class VLSIPartitionGA:
    def __init__(self, connectivity_matrix, net_matrix, n_partitions, pop_size):
        self.n_partitions = n_partitions
        self.pop_size = pop_size
        self.connectivity_matrix = connectivity_matrix
        self.net_matrix = net_matrix

        self.connectivity_matrix = np.array( [
            [0, 0, 0, 0, 1, 0, 0, 0], # 0
            [0, 0, 0, 0, 0, 1, 0, 0], # 1
            [0, 0, 0, 1, 0, 1, 0, 0], # 2
            [0, 0, 1, 0, 1, 0, 0, 0], # 3
            [1, 0, 0, 1, 0, 0, 1, 0], # 4
            [0, 1, 1, 0, 0, 0, 1, 0], # 5
            [0, 0, 0, 0, 1, 1, 0, 1], # 6
            [0, 0, 0, 0, 0, 0, 1, 0]  # 7
        ])

        self.net_matrix = np.array([
            [1, 0, 0, 0, 1, 0, 0, 0], # 0
            [0, 1, 0, 0, 0, 1, 0, 0], # 1
            [0, 0, 1, 1, 0, 0, 0, 0], # 2
            [0, 0, 1, 0, 0, 1, 0, 0], # 3
            [0, 0, 0, 1, 1, 0, 0, 0], # 4
            [0, 0, 0, 0, 1, 0, 1, 0], # 5
            [0, 0, 0, 0, 0, 1, 1, 0], # 6
            [0, 0, 0, 0, 0, 0, 1, 1]  # 7     
        ])
        self.sleep_periods = fitness.generate_sleep_periods(len(signals), 0, 100, 3, 100)
        self.toolbox = base.Toolbox()
        self.setup_deap()

    def gen_chromosome(self, net_mat):
        modules = list(range(len(net_mat)))
        random.shuffle(modules)
        partitions = [[] for _ in range(self.n_partitions)]
        for i, module in enumerate(modules):
            partitions[i % self.n_partitions].append(module)

        chromosome = np.zeros((len(self.con_mat)), dtype=int)
        
        for p, partition in enumerate(partitions):
            for module in partition:
                chromosome[module] = p

        return chromosome
    
    # fitness function used to calculed number of uncut nets
    def y1(self, partition):
        num_nets = self.net_mat.shape[0]
        num_partitions = np.max(partition) + 1
        
        uncut_nets = 0

        # Iterate over each net
        for j in range(num_nets):
            net_in_partition = np.full(num_partitions, False)

            # Check which partitions the modules connected to this net belong to
            for i in range(len(partition)):
                if self.net_mat[j, i] == 1:
                    net_in_partition[partition[i]] = True

            # If the net is in exactly one partition, it is uncut
            if np.sum(net_in_partition) == 1:
                uncut_nets += 1

        return (uncut_nets,)
     
    def eval_fitness(self, individual):
        # Calculate the number of nets crossing partitions
        nets_crossing = 0
        for i, row in enumerate(self.net_matrix):
            for j, col in enumerate(row):
                if col == 1 and individual[i] != individual[j]:
                    nets_crossing += 1
        return (nets_crossing,)
    
    def eval_fitness_by_time(self, individual):
        # Calculate Y3
        y3 = fitness.calculate_Y2(individual, self.sleep_periods, 0.5)
        return (y3,)

    
    def setup_deap(self):

        creator.create("FitnessMin", base.Fitness, weights=(1.0,))
        creator.create("Individual", list, fitness=creator.FitnessMin)

        self.toolbox.register("chromosome", self.gen_chromosome, net_mat=self.net_mat)
        self.toolbox.register("individual", tools.initIterate, creator.Individual, self.toolbox.chromosome)
        self.toolbox.register("population", tools.initRepeat, list, self.toolbox.individual)

        # Tournament Selection with a tournament size of 3
        self.toolbox.register("select", tools.selTournament, tournsize=3)
        # One-point Crossover
        self.toolbox.register("mate", tools.cxOnePoint)
        # Mutation: Randomly change the partition assignment of a module
        self.toolbox.register("mutate", tools.mutUniformInt, low=1, up=self.n_partitions, indpb=0.1)
        # Fitness function
        self.toolbox.register("evaluate", self.eval_fitness_by_time)


    def create_population(self):
        return self.toolbox.population(n=self.pop_size)

    def display_matrices(self):
        print("Connectivity Matrix:\n", self.con_mat)
        print("\nNet Matrix:\n", self.net_mat)