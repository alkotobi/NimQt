# Necessary for defining lambdas in Nim, otherwise compilation errors happen.
import sugar

# For converting number to string
import strutils


const wid_lib* = "C:\\dev\\nim\\NimQt\\QT\\cmake-build-release\\WIDGET\\Widget.dll"
import QAbstractButton
type 
    QApplication = pointer 
    QLineEdit    = pointer 
    QWidget      = pointer  
    QPushButton  = pointer
    QFormLayout  = pointer 
    Context      = pointer

type 
    callback_clicked = proc(ctx: Context): void




proc qt_app_new2(): QApplication {.importc: "qt_app_new2", dynlib: wid_lib}

proc qt_app_exec2(qapp: QApplication): void {.importc: "qt_app_exec", dynlib: wid_lib}

proc qt_qobject_del(self: QWidget): void  {.importc: "qt_qobject_del", dynlib: wid_lib}

# Set text and label


# Factory function for instantiating any QT widget
proc qt_widget_new(parent: QWidget): QWidget
    {.importc: "qt_widget_new", dynlib: wid_lib}

proc qt_widget_show(self: QWidget): void
    {.importc: "qt_widget_show", dynlib: wid_lib}


proc qt_push_button_new(parent: QWidget): QPushButton
    {.importc: "qt_push_button_new", dynlib: wid_lib}
#  void  qt_button_onClicked(QAbstractButton* self, void* ctx, void (* callback) (void*) );


# Retrieves text from QLineEdit widget



    #-------------------------------------------------#
    #             QT Application                      #
    #-------------------------------------------------#

echo " [TRACE] Staring application OK."


var app = qt_app_new2()

# Create a button QPushButton object
var button = qt_push_button_new(nil)

  # qt_widget_setText(button, "Click to run robotic arm.")


# Using UFS - Universal function call 
proc clicked()=
    echo "clicked"
button.onClickedConnect(nil)
#   qt_button_onClicked(button, nil, () => (block:
#       counter  = counter + 1
#       echo (" [INFO] Button was clicked by user. Ok. =>> Counter = " & strutils.intToStr(counter))
#       qt_msgbox_info(button, "Information", " Button was clicked => Counter = " & counter.intToStr() )
#   ))


 # qt_button_onClicked(button, nil) do (ctx: Context):
 #     counter  = counter + 1
 #     echo (" [INFO] Button was clicked by user. Ok. =>> Counter = " & strutils.intToStr(counter))
 #     qt_msgbox_info(button, "Information", " Button was clicked => Counter = " & counter.intToStr() )

 # Syntax sugar 
 # It is the same a: qt_button_onClicked(button, nil, callback_here)

# Display root widget  
qt_widget_show(button)

# Run QT application and block current thread 
qt_app_exec2(app)

# ---- Dispose QT objects -------------#
#
qt_qobject_del(button)
qt_qobject_del(app)

echo " [TRACE] Application terminated. Ok."
