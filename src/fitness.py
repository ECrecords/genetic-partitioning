import numpy as np

def count_cuts_with_indices(connectivity_graph, net_graph, partitioning_graph):
    num_modules = len(connectivity_graph)
    num_nets = len(net_graph)
    num_partitions = len(partitioning_graph)
    cuts = 0
    cut_indices = []

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

partitioning_graph = np.array([
    [1, 3],
    [2, 4]
])

cuts, cut_indices = count_cuts_with_indices(connectivity_graph, net_graph, partitioning_graph)
print("Number of cuts:", cuts)
print("Indices of cuts in net_graph:", cut_indices)
