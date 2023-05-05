import QWidget,QObject,QFrame,mnlibrary

proc qt_label_new(parent:QTObject): QTObject {.importc: "qt_label_new", dynlib: wid_lib}
proc qt_label_set_text(parent:QTObject,text:cstring): void {.importc: "qt_label_set_text", dynlib: wid_lib}
proc qt_label_get_text(self:QTObject): cstring {.importc: "qt_label_get_text", dynlib: wid_lib}

type
    QLabel* = ref object of QFrame

proc newQLabel*(parent:QWidget = nil): QLAbel =
    new result
    var obj = qt_label_new(nil)
    result.setObj(obj)
    result.setParent(parent)

proc setText*(self:QLabel,text:string)=
    qt_label_set_text(self.getObj,text.cstring)

proc getText*(self:QLabel): string =
    let s:cstring = qt_label_get_text(self.getObj)
    result = $qt_label_get_text(self.getObj)
    cstring_free(s)
    
    