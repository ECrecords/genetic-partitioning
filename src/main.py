import numpy as np
from VLSIPartitioningGA import VLSIPartitionGA

if __name__ == "__main__":
    # Usage
    signals = ["a", "b", "sel", "not_sel", "a_and_not_sel", "b_and_sel", "out"]
    connections = {
        "sel": ["not_sel", "b_and_sel"],
        "not_sel": ["a_and_not_sel"],
        "a": ["a_and_not_sel"],
        "b": ["b_and_sel"],
        "a_and_not_sel": ["out"],
        "b_and_sel": ["out"]
    }
    n_partitions = 3
    pop_size = 13

    ga = VLSIPartitionGA(signals, connections, n_partitions, pop_size)
    population = ga.create_population()
    ga.display_matrices()

    print("\nPopulation:")
    for individual in population:
        print(individual)
