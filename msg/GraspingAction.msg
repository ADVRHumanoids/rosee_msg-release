## Info message, used by GraspingActionsAvailable service, which store the infos about a specific action

# action type, that is an enum and with msg we can only define it like this
# remember to add here if we add new type in Action.h and ActionPrimitive.h ..

uint8 PRIMITIVE = 0
uint8 GENERIC = 1
uint8 COMPOSED  = 2
uint8 TIMED = 3
uint8 NONE = 4
uint8 action_type

# subtype for primitive, no meaning if action_type is not 1
uint8 PRIMITIVE_PINCHTIGHT = 0
uint8 PRIMITIVE_PINCHLOOSE = 1
uint8 PRIMITIVE_MULTIPLEPINCHTIGHT = 2
uint8 PRIMITIVE_TRIG = 3
uint8 PRIMITIVE_TIPFLEX = 4
uint8 PRIMITIVE_FINGFLEX = 5
uint8 PRIMITIVE_SINGLEJOINTMULTIPLETIPS = 6
uint8 PRIMITIVE_NONE = 7
uint8 primitive_type

# name of the action
string action_name

# names of the selectable fingers/joints (eg 2 finger for pinch) if any
string[] elements_involved

# The mask which says if the motor is used by the action (count > 0) or not (count = 0). 
# It is unique for each action (differently from action_motor_positions which is a vector) 
JointsInvolvedCount action_motor_count

# actuator position associated with the action. Can be more than one for some action (like pinches and PRIMITIVE_SINGLEJOINTMULTIPLETIPS)
MotorPosition[] action_motor_positions

#used only for timed and composed
string[] inner_actions

## used only for timed.. better to make a new msg?
float64[] before_time_margins
float64[] after_time_margins

