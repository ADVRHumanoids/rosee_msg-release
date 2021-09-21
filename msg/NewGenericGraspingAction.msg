# Message which include all the infos necessary to insert a new action in the system 
# (https://github.com/ADVRHumanoids/ROSEndEffector/issues/71)

# name of the action
string action_name

# Motor Position
MotorPosition action_motor_position

# OPTIONAL The mask which says if the motor is used by the action (count > 0) or not (count = 0).
# take care that if it is not included, the not used joint will be considered the ones with 0 position
JointsInvolvedCount action_motor_count
                                  
# OPTIONAL field to indicate which hand element will be moved by the action
string[] elements_involved
