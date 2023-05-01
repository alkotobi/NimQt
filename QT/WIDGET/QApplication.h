#pragma once

typedef void   QApplication;
QApplication* qt_app_new(int argc, char** argv);
QApplication* qt_app_new2();
int  qt_app_exec(QApplication* self);
void  qt_app_quit(QApplication* self);