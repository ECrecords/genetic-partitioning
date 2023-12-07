import random
import numpy as np
from deap import base, creator, tools
import fitness

class VLSIPartitionGA:
    def __init__(self, connectivity_matrix, net_matrix, sleep_periods, n_partitions, pop_size):
        self.n_partitions = n_partitions
        self.pop_size = pop_size
        self.connectivity_matrix = connectivity_matrix
        self.net_matrix = net_matrix
        self.sleep_periods = sleep_periods
        self.toolbox = base.Toolbox()
        self.setup_deap()

    def gen_chromosome(self, net_mat):
        modules = list(range(len(net_mat)))
        random.shuffle(modules)
        partitions = [[] for _ in range(self.n_partitions)]
        for i, module in enumerate(modules):
            partitions[i % self.n_partitions].append(module)

        chromosome = np.zeros((len(self.connectivity_matrix)), dtype=int)
        
        for p, partition in enumerate(partitions):
            for module in partition:
                chromosome[module] = p

        return chromosome
    
    # fitness function used to calculed number of uncut nets
    def y1(self, partition):
        num_nets = self.net_matrix.shape[0]
        num_partitions = np.max(partition) + 1
        
        cut_nets = 0  # Changed from uncut_nets to cut_nets

        # Iterate over each net
        for j in range(num_nets):
            net_in_partition = np.full(num_partitions, False)

            # Check which partitions the modules connected to this net belong to
            for i in range(len(partition)):
                if self.net_matrix[j, i] == 1:
                    net_in_partition[partition[i]] = True

            # If the net spans more than one partition, it is cut
            if np.sum(net_in_partition) > 1:  # Changed the condition here
                cut_nets += 1

        return (cut_nets,)  # Returning the number of cut nets

    def y3(self, individual):
        # Calculate Y3
        y3 = fitness.calculate_Y3(individual, self.sleep_periods, 0.5)
        y3 = max(y3,0)
        return (y3,)
    
    def y(self, partition):
        gamma_c = 0.2
        gamma_5 = 1

        if hasattr(partition, "y1_value"):
            setattr(partition, "y1_value", self.y1(partition)[0])
        else:
            partition.y1_value = self.y1(partition)[0]
        
        if hasattr(partition, "y3_value"):
            setattr(partition, "y3_value", self.y3(partition)[0])
        else:
            partition.y3_value = self.y3(partition)[0]
        
        power = gamma_5 * (1 / (1 + partition.y3_value))
        cuts = gamma_c * partition.y1_value

        return ((power + cuts),)

    
    def setup_deap(self):

        creator.create("FitnessMin", base.Fitness, weights=(-1.0,))
        creator.create("Individual", list, fitness=creator.FitnessMin)

        self.toolbox.register("chromosome", self.gen_chromosome, net_mat=self.net_matrix)
        self.toolbox.register("individual", tools.initIterate, creator.Individual, self.toolbox.chromosome)
        self.toolbox.register("population", tools.initRepeat, list, self.toolbox.individual)

        # Tournament Selection with a tournament size of 3
        self.toolbox.register("select", tools.selTournament, tournsize=3)
        # One-point Crossover
        self.toolbox.register("mate", tools.cxOnePoint)
        # Mutation: Randomly change the partition assignment of a module
        self.toolbox.register("mutate", tools.mutUniformInt, low=1, up=self.n_partitions, indpb=0.1)
        # Fitness function
        self.toolbox.register("evaluate", self.y)


    def create_population(self):
        return self.toolbox.population(n=self.pop_size)

    def display_matrices(self):
        print("Connectivity Matrix:\n", self.connectivity_matrix)
        print("\nNet Matrix:\n", self.net_matrix)