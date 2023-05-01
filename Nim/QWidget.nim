import QObject
const wid_lib* = "/Users/merhab/dev/nim/NimQt/QT/build/WIDGET/libWidget.dylib"
proc qt_widget_new(parent: QTObject): QTObject  {.importc: "qt_widget_new", dynlib: wid_lib}
proc qt_widget_show(self: QTObject): void  {.importc: "qt_widget_show", dynlib: wid_lib}
type
    QWidget* =ref object of QObject

proc newQWidget*(parent:QObject=nil):QWidget=
    var obj = qt_widget_new(nil)
    new result
    result.setObj(obj)
    result.setParent(parent)

proc show*(self:QWidget)=
    qt_widget_show(self.getObj)
        
    