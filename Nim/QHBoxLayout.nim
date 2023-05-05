import QBoxLayout,QObject,QWidget

proc qt_hbox_layout_new(parent:QTObject):QTObject {.importc: "qt_hbox_layout_new", dynlib: wid_lib}
type
    QHBoxLayout* = object of QBoxLayout

proc newQHBoxLayout*(parent:QWidget=nil):QBoxLayout=
    new result
    if parent.isNil:
      result.setObj(qt_hbox_layout_new(nil))
      return
    result.setObj(qt_hbox_layout_new(parent.getObj))



