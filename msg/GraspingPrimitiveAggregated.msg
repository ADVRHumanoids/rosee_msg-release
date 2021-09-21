## Info about aggregated primitive (for all trig there is only a single message)
## used only by GUI for now

# name of the action
string action_name

uint8 PRIMITIVE_PINCHSTRONG = 0
uint8 PRIMITIVE_PINCHWEAK = 1
uint8 PRIMITIVE_MULTIPLEPINCHSTRONG = 2
uint8 PRIMITIVE_TRIG = 3
uint8 PRIMITIVE_TIPFLEX = 4
uint8 PRIMITIVE_FINGFLEX = 5
uint8 PRIMITIVE_SINGLEJOINTMULTIPLETIPS = 6
uint8 PRIMITIVE_NONE = 7
uint8 primitive_type

# names of the selectable fingers/joints ALL aggregated. This means that
# for example, a trig primitive will have in this field all the fingers that can be used
# for a trig; also the pinch, and the "pairing" info here is lost (can be retrieved 
# by the other service SelectablePairInfo
string[] selectable_names

# number of necessary selectable_names to select before sending message
# (eg 1 for trig, 2 for pinch, 1 for moreTips)
uint8 max_selectable

