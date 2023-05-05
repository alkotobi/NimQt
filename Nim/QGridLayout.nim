import QLayout,QWidget,QObject,Qt,QLayoutItem
proc qt_grid_layout_new(parent:QTObject):QTObject {.importc: "qt_grid_layout_new", dynlib: wid_lib}
proc qt_grid_layout_add_layout(self:QTObject,layout:QTObject,row:cint,column:cint,rowSpan:cint,columnSpan:cint,alingnment:cint){.importc: "qt_grid_layout_add_layout", dynlib: wid_lib}
proc qt_grid_layout_add_widget(self:QTObject,widget:QTObject,row:cint,column:cint,rowSpan:cint,columnSpan:cint,alingnment:cint){.importc: "qt_grid_layout_add_widget", dynlib: wid_lib}
type
    QGridLayout* = ref object of QLayout

proc newQGridLayout*(parent:QWidget=nil):QGridLayout =
    new result
    if parent.isNil:
      result.setObj(qt_grid_layout_new(nil)) 
      return   
    result.setObj(qt_grid_layout_new(parent.getObj))
    result.setParent(parent)

proc addLayout*(self:QGridLayout,layout:QLayoutItem,row:int,column:int,rowSpan:int=1,columnSpan:int=1,alignment:Alignment=Default)=
  qt_grid_layout_add_layout(self.getObj,layout.getObj,row.cint,column.cint,rowSpan.cint,columnSpan.cint,alignment.cint)
    
proc addWidget*(self:QGridLayout,widget:QWidget,row:int,column:int,rowSpan:int=1,columnSpan:int=1,alignment:Alignment=Default)=
  qt_grid_layout_add_widget(self.getObj,widget.getObj,row.cint,column.cint,rowSpan.cint,columnSpan.cint,alignment.cint)
    