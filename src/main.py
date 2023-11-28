import numpy as np

from genetic_test import GeneticAlgorithm
import deap.tools as tools

if __name__ == "__main__":
    # Define the signals
    signals = ["a", "b", "sel", "not_sel", "a_and_not_sel", "b_and_sel", "out"]

    # Initialize matrices
    connectivity_matrix = np.zeros((len(signals), len(signals)), dtype=int)
    net_matrix = np.zeros((len(signals), len(signals)), dtype=int)

    # Define connections for the connectivity matrix
    connections = {
        "sel": ["not_sel", "b_and_sel"],
        "not_sel": ["a_and_not_sel"],
        "a": ["a_and_not_sel"],
        "b": ["b_and_sel"],
        "a_and_not_sel": ["out"],
        "b_and_sel": ["out"]
    }

    # Populate the connectivity matrix
    for src, dests in connections.items():
        for dest in dests:
            connectivity_matrix[signals.index(src), signals.index(dest)] = 1

    # Populate the net matrix
    for i, signal in enumerate(signals):
        if signal in connections:
            for dest in connections[signal]:
                net_matrix[i, signals.index(dest)] = 1
                net_matrix[signals.index(dest), i] = 1

    # Display the matrices
    print("Connectivity Matrix:\n", connectivity_matrix)
    print("\nNet Matrix:\n", net_matrix)

    # Example usage
    # fitness_evaluator = MyFitnessEvaluator()
    crossover_operator = tools.cxTwoPoint
    mutation_operator = tools.mutFlipBit
    selection_operator = tools.selTournament

    ga = GeneticAlgorithm(None, crossover_operator, mutation_operator, selection_operator)
    pop = ga.create_population(connectivity_matrix, net_matrix, 3, 10)

    print("\nPopulation:")
    for individual in pop:
        print(individual)
    
    
