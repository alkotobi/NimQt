import QWidget,QObject,QAbstractButton

proc qt_push_button_new(parent:QTObject): QTObject {.importc: "qt_push_button_new", dynlib: wid_lib}
type
    QPushButton* = ref object of QAbstractButton

proc newQPushButton*(parent:QWidget=nil):QPushButton=
    new result
    var obj = qt_push_button_new(nil)
    result.setObj(obj)
    result.setParent(parent)
