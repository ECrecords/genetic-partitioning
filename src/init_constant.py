import random

def generate_sleep_periods(num_modules, min_start_time, max_start_time, min_duration, max_duration):
    """
    Generate random start and finish sleep times for each module in the circuit.

    :param num_modules: Number of modules in the circuit.
    :param min_start_time: Minimum start time for any module.
    :param max_start_time: Maximum start time for any module.
    :param min_duration: Minimum duration of sleep time for any module.
    :param max_duration: Maximum duration of sleep time for any module.
    :return: A list of tuples with start and finish sleep times for each module.
    """
    sleep_periods = []
    for _ in range(num_modules):
        start_time = round(random.uniform(min_start_time, max_start_time))
        duration = round(random.uniform(min_duration, max_duration))
        finish_time = start_time + duration
        sleep_periods.append((start_time, finish_time))

    return sleep_periods

# Example usage
num_modules = 10  # Number of modules in your circuit
min_start_time = 0  # Minimum start sleep time in seconds
max_start_time = 20  # Maximum start sleep time in seconds
min_duration = 1  # Minimum duration of sleep in seconds
max_duration = 5  # Maximum duration of sleep in seconds

module_sleep_periods = generate_sleep_periods(num_modules, min_start_time, max_start_time, min_duration, max_duration)
print("Sleep periods for each module (start, finish):", module_sleep_periods)


