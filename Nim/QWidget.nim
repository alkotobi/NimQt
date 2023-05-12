import QObject,QLayoutItem
proc qt_widget_new(parent: QTObject): QTObject  {.importc: "qt_widget_new", dynlib: wid_lib}
proc qt_widget_show(self: QTObject): void  {.importc: "qt_widget_show", dynlib: wid_lib}
proc qt_widget_set_layout(self: QTObject,layout:QTObject): void  {.importc: "qt_widget_set_layout", dynlib: wid_lib}
proc qt_widget_set_parent(self: QTObject,parent:QTObject): void  {.importc: "qt_widget_set_parent", dynlib: wid_lib}

type
    QWidget* =ref object of QLayoutItem

proc newQWidget*(parent:QObject=nil):QWidget=
    var obj = qt_widget_new(nil)
    new result
    result.setObj(obj)
    result.setParent(parent)

proc show*(self:QWidget)=
    qt_widget_show(self.getObj)

proc setParent*(self:QWidget,parent:QWidget)=
    if parent.isNil:
       qt_widget_set_parent(self.getObj,nil)
       return 
    qt_widget_set_parent(self.getObj,parent.getObj)

proc setLayout*(self: QWidget , layout:QLayoutItem)=
    qt_widget_set_layout(self.getObj,layout.getObj)
        
    