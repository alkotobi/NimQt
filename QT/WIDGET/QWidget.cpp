#include <QWidget>

extern "C"
QWidget* qt_widget_new(QWidget* parent){
    return new (std::nothrow) QWidget(parent);
}

extern "C"
void qt_widget_show(QWidget* self){
    self->show();
}