# I do not want to use standard joint state because also velocity and effort are present, which are not used by an action

# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.

string[] name
float64[] position
