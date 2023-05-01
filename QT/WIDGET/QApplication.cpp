#include <QApplication>
#include <iostream>

extern "C"
QApplication* qt_app_new(int argc, char** argv)   
{
    std::cout << " [TRACE] Create QAppliction Object Ok" << std::endl;
    return new QApplication(argc, argv);
}

extern "C"
QApplication* qt_app_new2()   
{
    std::cout << " [TRACE] Create QAppliction Object Ok" << std::endl;
    static int   argc = 1;
    static const char* argv [] = { "dummy_app" };    
    return new QApplication(argc, (char**) argv);
}

extern "C"
int  qt_app_exec(QApplication* self){
    return self->exec();
}

extern "C"
void  qt_app_quit(QApplication* self){
    return self->quit();
}