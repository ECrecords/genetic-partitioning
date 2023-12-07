import numpy as np
import random

# calculate the count of the cuts of graph.
def count_cuts_with_indices(connectivity_graph, net_graph, partitioning_graph, is_chromsome = False):
    num_modules = len(connectivity_graph)
    num_nets = len(net_graph)
    num_partitions = len(partitioning_graph)
    cuts = 0
    cut_indices = []
    module_partition = []

    if is_chromsome:
        module_partition = partitioning_graph
    else:
        module_partition = list(range(num_modules))
        for partitioning_idx, partitioning in enumerate(partitioning_graph):
            for module in partitioning:
                module_partition[module-1] = partitioning_idx

    # Convert partitioning_graph to a more easily searchable format
    # module_partition = np.argmax(partitioning_graph, axis=0)
    print(module_partition)


    # Check each net
    for net_idx in range(num_nets):
        connected_modules = np.where(net_graph[net_idx] == 1)[0]
        partitions_in_net = set()

        # Find which partitions are connected by this net
        for module in connected_modules:
            partitions_in_net.add(module_partition[module])

        # If more than one partition is connected, this is a cut
        if len(partitions_in_net) > 1:
            cuts += 1
            cut_indices.append(net_idx)

    return cuts, cut_indices

# Example usage
connectivity_graph = np.array([
    [0, 1, 0, 0],
    [1, 0, 1, 1],
    [0, 1, 0, 1],
    [0, 1, 1, 0]
])

net_graph = np.array([
    [1, 1, 0, 0],
    [0, 1, 1, 0],
    [0, 1, 0, 1],
    [0, 0, 1, 1]
])

# partitioning_graph = np.array([
#     [1, 0, 1, 0],
#     [0, 1, 0, 1]
# ])

# partitioning_graph = np.array([
#     [1, 3],
#     [2, 4]
# ])

# partitioning_graph = [0,1,0,1]

# cuts, cut_indices = count_cuts_with_indices(connectivity_graph, net_graph, partitioning_graph, is_chromsome=True)
# print("Number of cuts:", cuts)
# print("Indices of cuts in net_graph:", cut_indices)


# def calculate_elmore_delay(resistances, capacitances):
#     """
#     Calculate the Elmore delay for a simple linear circuit.
    
#     :param resistances: List of resistances between nodes.
#     :param capacitances: List of capacitances at each node.
#     :return: Elmore delay of the circuit.
#     """
#     total_delay = 0
#     for i in range(len(resistances)):
#         r_total = sum(resistances[:i + 1])  # Total resistance up to the current node
#         for c in capacitances[i:]:
#             total_delay += r_total * c  # Add the RC product for each capacitance

#     return total_delay

# # Example usage
# resistances = [1, 2, 3]  # Resistances between nodes (Ohms)
# capacitances = [0.5, 0.5, 0.5, 0.5]  # Capacitances at each node (Farads)

# elmore_delay = calculate_elmore_delay(resistances, capacitances)
# print(f"Elmore Delay: {elmore_delay} seconds")


def generate_sleep_periods(num_modules, min_start_time, max_start_time, min_duration, max_duration):
    """
    Generate random start and finish sleep times for each module in the circuit.

    :param num_modules: Number of modules in the circuit.
    :param min_start_time: Minimum start time for any module.
    :param max_start_time: Maximum start time for any module.
    :param min_duration: Minimum duration of sleep time for any module.
    :param max_duration: Maximum duration of sleep time for any module.
    :return: A list of tuples with start and finish sleep times for each module.
    
        num_modules = 10  # Number of modules in your circuit
        min_start_time = 0  # Minimum start sleep time in seconds
        max_start_time = 5  # Maximum start sleep time in seconds
        min_duration = 1  # Minimum duration of sleep in seconds
        max_duration = 3  # Maximum duration of sleep in seconds
    """
    sleep_periods = []
    for _ in range(num_modules):
        start_time = round(random.uniform(min_start_time, max_start_time))
        duration = round(random.uniform(min_duration, max_duration))
        finish_time = start_time + duration
        sleep_periods.append((start_time, finish_time))

    return sleep_periods

# get the sleep peried and the switch on time (SD(sp) and SWp)
def find_common_intervals(intervals):
    """ Find common intervals in a list of intervals """
    if not intervals:
        return []

    # Sort intervals by start time
    intervals.sort(key=lambda x: x[0])
    common_intervals = [intervals[0]]

    for start, end in intervals[1:]:
        last_start, last_end = common_intervals[-1]
        if start <= last_end:  # Overlapping interval
            common_intervals[-1] = (max(last_start, start), min(last_end, end))
        else:  # Non-overlapping interval, break as no further intersection possible
            break
    return [interval for interval in common_intervals if interval[0] < interval[1]]

def calculate_sleep_intervals_and_switches(partitioning_graph, sleep_periods):
    num_partitions = len(partitioning_graph)
    partition_sleep_intervals = []
    partition_switch_counts = []
    partition_interval_counts = []

    for partition in partitioning_graph:
        # Find intersecting sleep periods for each partition
        intervals = [sleep_periods[module] for module in partition]
        common_sleep = find_common_intervals(intervals)
        partition_sleep_intervals.append(common_sleep)

        # Count the number of switches for each partition
        s = set()
        for interval in intervals:
            s.add(interval[0])
            s.add(interval[1])
        switch_count = len(s)
        partition_switch_counts.append(switch_count)

        # Count the number of intervals for each partition
        interval_count = 0
        if len(common_sleep) is not 0:
            interval_count = common_sleep[0][1] - common_sleep[0][0] + 1
        partition_interval_counts.append(interval_count)
    return partition_sleep_intervals, partition_switch_counts, partition_interval_counts

def calculate_Y3(individuals, sleep_periods, b = 1.0):
    partitioning_graph = list()
    for idx in range(max(individuals) + 1):
        partitioning = list()
        for i, individual in enumerate(individuals):
            if idx == individual:
                partitioning.append(i)
        partitioning_graph.append(partitioning)
        pass
    sleep_intervals, switch_counts, interval_counts = calculate_sleep_intervals_and_switches(partitioning_graph, sleep_periods)
    # print(sum(np.array(interval_counts)))
    # print(b * sum(np.array(switch_counts)))
    return sum(np.array(interval_counts)) -  b * sum(np.array(switch_counts))


# # # Example usage
# partitioning_graph = [[0, 1], [2, 3]]
# individuals = [0, 0, 1, 1]  
# sleep_periods = [(1, 4), (3, 5), (2, 6), (0, 7)]  # Sleep periods for each module

# print(calculate_Y2(individuals, sleep_periods, 0.5))