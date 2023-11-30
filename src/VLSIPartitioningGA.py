import random
import numpy as np
from deap import base, creator, tools

class VLSIPartitionGA:
    def __init__(self, signals, connections, n_partitions, pop_size):
        self.signals = signals
        self.connections = connections
        self.n_partitions = n_partitions
        self.pop_size = pop_size

        
        self.connectivity_matrix = [
            [0, 0, 0, 0, 1, 0, 0, 0], # 0
            [0, 0, 0, 0, 0, 1, 0, 0], # 1
            [0, 0, 0, 1, 0, 1, 0, 0], # 2
            [0, 0, 1, 0, 1, 0, 0, 0], # 3
            [1, 0, 0, 1, 0, 0, 1, 0], # 4
            [0, 1, 1, 0, 0, 0, 1, 0], # 5
            [0, 0, 0, 0, 1, 1, 0, 1], # 6
            [0, 0, 0, 0, 0, 0, 1, 0]  # 7
        ]
        self.net_matrix = [
            [1, 0, 0, 0, 1, 0, 0, 0], # 0
            [0, 1, 0, 0, 0, 1, 0, 0], # 1
            [0, 0, 1, 1, 0, 0, 0, 0], # 2
            [0, 0, 1, 0, 0, 1, 0, 0], # 3
            [0, 0, 0, 1, 1, 0, 0, 0], # 4
            [0, 0, 0, 0, 1, 0, 1, 0], # 5
            [0, 0, 0, 0, 0, 1, 1, 0], # 6
            [0, 0, 0, 0, 0, 0, 1, 1] # 7 
            
        ]
        self.toolbox = base.Toolbox()
        self.setup_deap()

    # def create_connectivity_matrix(self):
    #     matrix = np.zeros((len(self.signals), len(self.signals)), dtype=int)
    #     for src, dests in self.connections.items():
    #         for dest in dests:
    #             matrix[self.signals.index(src), self.signals.index(dest)] = 1
    #     return matrix

    # def create_net_matrix(self):
    #     matrix = np.zeros((len(self.signals), len(self.signals)), dtype=int)
    #     for i, signal in enumerate(self.signals):
    #         if signal in self.connections:
    #             for dest in self.connections[signal]:
    #                 matrix[i, self.signals.index(dest)] = 1
    #                 matrix[self.signals.index(dest), i] = 1
    #     return matrix

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
    
    def eval_fitness(self, individual):
        # Calculate the number of nets crossing partitions
        nets_crossing = 0
        for i, row in enumerate(self.net_matrix):
            for j, col in enumerate(row):
                if col == 1 and individual[i] != individual[j]:
                    nets_crossing += 1
        return (nets_crossing,)
    
    
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
        self.toolbox.register("evaluate", self.eval_fitness)


    def create_population(self):
        return self.toolbox.population(n=self.pop_size)

    def display_matrices(self):
        print("Connectivity Matrix:\n", self.connectivity_matrix)
        print("\nNet Matrix:\n", self.net_matrix)