const wid_lib* = "C:\\dev\\nim\\NimQt\\QT\\cmake-build-release\\WIDGET\\Widget.dll"
type QTObject* =pointer

proc qt_qobject_del(self: QTObject): void  {.importc: "qt_qobject_del", dynlib: wid_lib}
proc qt_qobject_new(parent: QTObject): QTObject  {.importc: "qt_qobject_new", dynlib: wid_lib}
proc qt_object_set_parent(self: QTObject,parent:QTObject): void  {.importc: "qt_object_set_parent", dynlib: wid_lib}
proc qt_object_get_parent(self: QTObject): QTObject  {.importc: "qt_object_get_parent", dynlib: wid_lib}
proc qt_object_set_object_name(self: QTObject,name:cstring): void  {.importc: "qt_object_set_object_name", dynlib: wid_lib}
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
    var obj = qt_qobject_new(nil)
    result=newQObject(obj,parent) 

proc getObj*(self:QObject): QTObject =
    return self.obj

proc setObj*(self:QObject,obj:QTObject) =
    self.obj = obj
    
    
proc setParent*(self:QObject,parent:QObject) =
    if not isNil(parent):
      qt_object_set_parent(self.obj,parent.obj)
    else:
      echo("else me")  
      qt_object_set_parent(self.obj,nil)
    self.parent=parent

proc setParent*(self:QObject,parent:QTObject) =
    qt_object_set_parent(self.obj,parent)
    self.parent = newQObject(parent,nil)

# todo: test getParent
proc getParent*(self:QObject): QObject =
    var parent = qt_object_get_parent(self.getObj)
    if not parent.isNil:
       var obj= newQObject(parent,nil)
       obj.setParent(obj.getParent)
       return obj
    else: return nil
        
    result = self.parent

proc setObjectName*(self:QObject,name:string)=
    qt_object_set_object_name(self.getObj,name.cstring)


proc free*(self: QObject) =
    qt_qobject_del(self.obj)
    


