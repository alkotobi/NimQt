import QLayoutItem,QObject,QWidget
proc qt_add_widget(self:QTObject,widget:QTObject): void {.importc: "qt_add_widget", dynlib: wid_lib}
proc qt_remove_widget(self:QTObject,widget:QTObject): void {.importc: "qt_remove_widget", dynlib: wid_lib}

type
    QLayout* = ref object of QLayoutItem

proc addWidget*(self:QLayout,widget:QWidget)=
    qt_add_widget(self.getObj,widget.getObj)

proc removeWidget*(self:QLayout,widget:QWidget)=
    qt_remove_widget(self.getObj,widget.getObj)
    