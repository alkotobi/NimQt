import ../QBoxLayout,../QHBoxLayout,../QVBoxLayout,../QWidget
,../QLabel,../QPushButton,../QApplication,../QAbstractButton,../QObject

let app=newQApplication()
var wid = newQWidget(nil)
wid.setObjectName("wid")
var vbox = newQVBoxLayout()
wid.setLayout(vbox)
var hbox1 = newQHBoxLayout()
var btn1 = newQPushButton(wid)
proc click(){.cdecl.}=
    btn1.setText("clicked")
btn1.setText("kilck me")
btn1.onClickedConnect(click)
hbox1.addWidget(btn1)
vbox.addLayout(hbox1)
var lbl = newQLabel(wid)
lbl.setText("Nono")
var hbox2 = newQHBoxLayout()
hbox2.addWidget(lbl)
vbox.addLayout(hbox2)
wid.show()
let res= app.exec
echo res
