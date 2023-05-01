const core_lib* = "./libCore.dylib"
type QTObject* =pointer

proc qt_qobject_del(self: QTObject): void  {.importc: "qt_qobject_del", dynlib: core_lib}
proc qt_qobject_new(self: QTObject): QTObject  {.importc: "qt_qobject_new", dynlib: core_lib}
proc qt_object_set_parent(self: QTObject,parent:QTObject): void  {.importc: "qt_object_set_parent", dynlib: core_lib}
proc qt_object_get_parent(self: QTObject): QTObject  {.importc: "qt_object_get_parent", dynlib: core_lib}
type
  QObject* = ref object of RootObj
    obj: QTObject
    parent : QObject

proc newQObject*(obj:QTObject, parent:QObject):QObject=
    new result
    result.obj= obj
    result.parent = parent
    if not isNil(parent):
      result.obj= qt_qobject_new(parent.obj)
    else:
        result.obj= qt_qobject_new(nil)

proc newQObject*(parent:QObject):QObject=
    result=newQObject(qt_qobject_new(nil),parent) 





proc getObj*(self:QObject): QTObject =
    return self.obj

proc setObj*(self:QObject,obj:QTObject) =
    self.obj = obj
    
    
proc setParent*(self:QObject,parent:QObject) =
    if not isNil(parent):
      qt_object_set_parent(self.obj,parent.obj)
    else:
        qt_object_set_parent(self.obj,nil)
    self.parent=parent

proc setParent*(self:QObject,parent:QTObject) =
    qt_object_set_parent(self.obj,parent)
    self.parent = newQObject(parent,nil)

proc getParent*(self:QObject): QObject =
    result = self.parent


proc free*(self: QObject) =
    qt_qobject_del(self.obj)
    


