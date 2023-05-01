import QApplication
import QPushButton,QWidget,QAbstractButton


    
var app = newQApplication()
var btn = newQPushButton(nil)
proc onClick()=
    btn.setText("clicked")
btn.show
btn.onClickedConnect(onClick)
var ret=app.exec
echo ret

