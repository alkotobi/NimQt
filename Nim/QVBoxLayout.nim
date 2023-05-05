import QBoxLayout,QObject,QWidget

proc qt_vbox_layout_new(parent:QTObject):QTObject {.importc: "qt_vbox_layout_new", dynlib: wid_lib}
type
    QHBoxLayout* = object of QBoxLayout

proc newQVBoxLayout*(parent:QWidget=nil):QBoxLayout=
    new result
    if parent.isNil:
      result.setObj(qt_vbox_layout_new(nil))
      return
    result.setObj(qt_vbox_layout_new(parent.getObj))


