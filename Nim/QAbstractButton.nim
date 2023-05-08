import QWidget,QObject

    
proc qt_abstractButton_set_text(self: QTObject, text: cstring): void {.importc: "qt_abstractButton_set_text", dynlib: wid_lib}
type
    QAbstractButton* = ref object of QWidget
    abstractButton_clicked* = proc(): void {.cdecl.}


proc qt_abstractButton_onClicked(self:QTObject,ctx:pointer  ,on_clicked: abstractButton_clicked ): void {.cdecl,importc: "qt_abstractButton_onClicked", dynlib: wid_lib}
proc onClickedConnect*(self:QAbstractButton,callback:abstractButton_clicked ) =
    qt_abstractButton_onClicked(self.getObj,nil,callback )

proc setText*(self:QAbstractButton,text: string)=
    var obj = self.getObj
    qt_abstractButton_set_text(obj,text.cstring)

    

