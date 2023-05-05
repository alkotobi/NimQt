import QLayout,QObject,QWidget,Qt
type
    Direction* =enum
        LeftToRight=0
        RightToLeft=1
        TopToBottom=2
        BottomToTop=3
proc qt_box_layout_new(dir:cint,parent:QTObject): QTObject {.importc: "qt_box_layout_new", dynlib: wid_lib}
proc qt_box_layout_add_layout(self:QTObject,laout:QTObject,stretch:cint):void {.importc: "qt_box_layout_add_layout", dynlib: wid_lib}
proc qt_box_layout_add_widget(self:QTObject,widget:QTObject,stretch:cint,alignment:cint):void {.importc: "qt_box_layout_add_widget", dynlib: wid_lib}
proc qt_box_layout_add_widget_v1(self:QTObject,widget:QTObject):void {.importc: "qt_box_layout_add_widget_v1", dynlib: wid_lib}
proc qt_box_layout_set_direction(self:QTObject,direction:cint):void {.importc: "qt_box_layout_set_direction", dynlib: wid_lib}
type
    QBoxLayout* = ref object of QLayout

proc newQBoxLayout*(dir:Direction,parent:QWidget=nil):QBoxLayout=
    new result
    result.setObj(qt_box_layout_new(dir.cint,nil))
    result.setParent(parent)

proc addLayout*(self:QBoxLayout,layout:QLayout,stretch:int=0)=
    qt_box_layout_add_layout(self.getObj,layout.getObj,stretch.cint)

proc addWidget*(self:QBoxLayout,widget:QWidget,stretch:int,alignment:Alignment=Default)=
    qt_box_layout_add_widget(self.getObj,widget.getObj,stretch.cint,alignment.cint)

proc addWidget*(self:QBoxLayout,widget:QWidget)=
    qt_box_layout_add_widget_v1(self.getObj,widget.getObj)

proc setdirection*(self:QBoxLayout,direction:Direction)=
    qt_box_layout_set_direction(self.getObj,direction.cint)