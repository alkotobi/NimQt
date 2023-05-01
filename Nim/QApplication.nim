import QObject
import QWidget
proc qt_app_new(): QTObject {.importc: "qt_app_new2", dynlib: wid_lib}
proc qt_app_exec(self:QTObject): cint {.importc: "qt_app_exec", dynlib: wid_lib}
proc qt_app_quit(self:QTObject): void {.importc: "qt_app_quit", dynlib: wid_lib}
type
    QApplication* = ref object of QObject

proc newQApplication*():QApplication=
    new result
    result.setObj(qt_app_new())

proc exec*(self:QApplication):int=
    result = qt_app_exec(self.getObj)

proc quit* (self:QApplication)=
    qt_app_quit(self.getObj)





