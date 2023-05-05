import Qaction,QPushButton,QApplication,QWidget

var app = newQApplication()
var btn = newQPushButton(nil)
var ac = newQAction(btn)
btn.show()
let a =app.exec()
echo a