#include "QApplication.h"
#include "QPushButton.h"
#include "QLabel.h"
#include "QWidget.h"
#include "QAbstractButton.h"

int main(int argc, char const *argv[])
{
    /* code */
    QApplication* app=qt_app_new2();
    QWidget* wid = qt_widget_new(0);
    QPushButton* btn = qt_push_button_new(wid);
    QLabel* lab = qt_label_new(wid);
    qt_label_set_text(lab,"ana");
    char* str = qt_label_get_text(lab);
    qt_abstractButton_set_text(btn,str);
    qt_widget_show(wid);
    qt_app_exec(app);
    return 0;
}
