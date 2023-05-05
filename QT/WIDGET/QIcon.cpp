#include <QIcon>

extern "C"
QIcon* qt_icon_new(){
    return new (std::nothrow) QIcon();
}

extern "C"
void qt_icon_add_file(QIcon* self,const char* file_name){
    self->addFile(QString::fromUtf8(file_name));
}