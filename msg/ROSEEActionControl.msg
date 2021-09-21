# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq

#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp

# first finger to use to pinch
string action_name

# action type, that is an enum and with msg we can only define it like this
# remember to add here if we add new type in Action.h and ActionPrimitive.h ..
uint8 PRIMITIVE = 0
uint8 GENERIC = 1 
uint8 COMPOSED = 2 
uint8 TIMED = 3
uint8 NONE = 4
uint8 action_type

uint8 PRIMITIVE_PINCHSTRONG = 0
uint8 PRIMITIVE_PINCHWEAK = 1
uint8 PRIMITIVE_MULTIPLEPINCHSTRONG = 2
uint8 PRIMITIVE_TRIG = 3
uint8 PRIMITIVE_TIPFLEX = 4
uint8 PRIMITIVE_FINGFLEX = 5
uint8 PRIMITIVE_SINGLEJOINTMULTIPLETIPS = 6
uint8 PRIMITIVE_NONE = 7
uint8 actionPrimitive_type

# array for additional items (like 2 finger for pinch). It can be also empty 
string[] selectable_items

# grasp percentage from 0.0 to 1.0
float64 percentage

# wanted maximum error norm for joints positions error (if not set, ie it is 0, default one will be used)
# the action will not be considered completed until the norm error of joint pos is below this value
float64 error_norm

#Optional fields, since now we use them to send also a current/torque to heri ii
string[] optional_motors_names
float64[] optional_motors_commands
