import numpy as np
from VLSIPartitioningGA import VLSIPartitionGA
import random
import deap.tools as tools
import fitness

# Global parameters for the genetic algorithm
CROSSOVER_PROB = 0.7  # Probability with which two individuals are crossed
MUTATION_PROB = 0.2   # Probability of mutating an individual


if __name__ == "__main__":
    # Usage
    # signals = ["a", "b", "sel", "not_sel", "a_and_not_sel", "b_and_sel", "or", "out"]
    # connections = {
    #     "sel": ["not_sel", "b_and_sel"],
    #     "not_sel": ["a_and_not_sel"],
    #     "a": ["a_and_not_sel"],
    #     "b": ["b_and_sel"],
    #     "a_and_not_sel": ["or", "a", "not_sel"],
    #     "b_and_sel": ["or", "b", "sel"],
    #     "or": ["a_and_not_sel", "b_and_sel"],
    #     "out": ["or"]
    # }

    connectivity_matrix = np.array( [
            [0, 0, 0, 0, 1, 0, 0, 0], # 0
            [0, 0, 0, 0, 0, 1, 0, 0], # 1
            [0, 0, 0, 1, 0, 1, 0, 0], # 2
            [0, 0, 1, 0, 1, 0, 0, 0], # 3
            [1, 0, 0, 1, 0, 0, 1, 0], # 4
            [0, 1, 1, 0, 0, 0, 1, 0], # 5
            [0, 0, 0, 0, 1, 1, 0, 1], # 6
            [0, 0, 0, 0, 0, 0, 1, 0]  # 7
        ])
    
    net_matrix = np.array([
            [1, 0, 0, 0, 1, 0, 0, 0], # 0
            [0, 1, 0, 0, 0, 1, 0, 0], # 1
            [0, 0, 1, 1, 0, 0, 0, 0], # 2
            [0, 0, 1, 0, 0, 1, 0, 0], # 3
            [0, 0, 0, 1, 1, 0, 0, 0], # 4
            [0, 0, 0, 0, 1, 0, 1, 0], # 5
            [0, 0, 0, 0, 0, 1, 1, 0], # 6
           [0, 0, 0, 0, 0, 0, 1, 1] # 7     
        ])

    n_partitions = 3
    pop_size = 13

    sleep_periods = fitness.generate_sleep_periods(len(connectivity_matrix), 0, 50, 3, 100)

    ga = VLSIPartitionGA(connectivity_matrix, net_matrix, sleep_periods, n_partitions, pop_size)
    population = ga.create_population()

    ga.display_matrices()

    # Assuming you have a method in your class to evaluate fitness
    for individual in population:
        individual.fitness.values = ga.y1(individual)

    # Number of generations
    n_generations = 100

    for gen in range(n_generations):
        # Select the next generation individuals
        offspring = ga.toolbox.select(population, len(population))

        # Clone the selected individuals
        offspring = list(map(ga.toolbox.clone, offspring))

        # Apply crossover and mutation on the offspring
        for child1, child2 in zip(offspring[::2], offspring[1::2]):
            if random.random() < CROSSOVER_PROB:
                ga.toolbox.mate(child1, child2)
                del child1.fitness.values
                del child2.fitness.values

        for mutant in offspring:
            if random.random() < MUTATION_PROB:
                ga.toolbox.mutate(mutant)
                del mutant.fitness.values

        # Evaluate the individuals with an invalid fitness
        invalid_ind = [ind for ind in offspring if not ind.fitness.valid]
        fitnesses = map(ga.toolbox.evaluate, invalid_ind)
        for ind, fit in zip(invalid_ind, fitnesses):
            ind.fitness.values = fit

        # Replace the old population by the offspring
        population[:] = offspring

        # Optional: Print out statistics or log data here

    # Extracting the best solution
    best_ind = tools.selBest(population, 1)[0]
    print(f"Best Individual: {best_ind}")
    print(f"Best Fitness: {best_ind.fitness.values}")