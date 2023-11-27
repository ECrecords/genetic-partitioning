import numpy as np

def generate_connectivity_matrix(size):
    # Initializing a size x size matrix with zeros
    matrix = np.zeros((size, size), dtype=int)
    
    # In a simple model, each input can connect to each output
    for i in range(size):
        for j in range(size):
            matrix[i][j] = 1  # Indicating a potential connection
    return matrix

def generate_net_matrix(size):
    # In a simplified view, each input is connected to one output
    matrix = np.zeros((size, size), dtype=int)
    
    for i in range(size):
        matrix[i][i] = 1  # Each input connects to a corresponding output
    return matrix

# Size of the barrel shifter
size = 16

# Generate matrices
connectivity_matrix = generate_connectivity_matrix(size)
net_matrix = generate_net_matrix(size)

# Display the matrices
print("Connectivity Matrix:")
print(connectivity_matrix)
print("\nNet Matrix:")
print(net_matrix)
