import QObject


proc qt_action_new(parent: QTObject): QTObject  {.importc: "qt_action_new", dynlib: wid_lib}

type
    QAction = ref object of QObject

proc newQAction*(parent :QObject = nil):QAction =
    new result
    result.setObj(qt_action_new(nil))   
    result.setParent(parent)
