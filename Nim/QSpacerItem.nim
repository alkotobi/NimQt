import QLayoutItem,QObject
type
    Orientation* = enum
      Horizontal = 0x1
      Vertical = 0x2
    
proc qt_spacer_item_new(w:cint,h:cint,orientation:cint):QtObject {.importc: "qt_spacer_item_new", dynlib: wid_lib}
type
    QSpacerItem* = ref object of QLayoutItem

proc newQSpacerItem*(w:int,h:int,orientation:Orientation):QSpacerItem=
    new result
    result.setObj(qt_spacer_item_new(w.cint,h.cint,orientation.cint))
