import QWidget,QObject
proc qt_frame_new(parent:QTObject,win_type:cint): QTObject {.importc: "qt_frame_new", dynlib: wid_lib}
proc qt_frame_set_frame_shape(self:QTObject,win_type:cint): void {.importc: "qt_frame_set_frame_shape", dynlib: wid_lib}
proc qt_frame_set_frame_shadow(self:QTObject,shadow:cint): void {.importc: "qt_frame_set_frame_shadow", dynlib: wid_lib}
type
    QFrame* = ref object of QWidget
    Shape* =enum
        NoFrame
        Box
        Panel
        StyledPanel
        HLine
        VLine
        WinPanel
    Shadow* = enum
      Plain
      Raised
      Sunken

proc newQframe*(parent:QWidget=nil,shape:Shape=Panel):QFrame=
    new result
    if parent.isNil:
       result.setObj(qt_frame_new(nil,shape.cint))
       return
    result.setObj(qt_frame_new(parent.getObj,shape.cint))
    result.setParent(parent)

proc setShape*(self: QFrame,shape:Shape)=
    qt_frame_set_frame_shape(self.getObj,shape.cint)

proc setShadow*(self:QFrame,shadow:Shadow)=
    qt_frame_set_frame_shadow(self.getObj,shadow.cint)