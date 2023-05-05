#include <QWidget>

extern "C"
QWidget* qt_widget_new(QWidget* parent){
    return new (std::nothrow) QWidget(parent);
}

extern "C"
void qt_widget_show(QWidget* self){
    self->show();
}

extern "C"
void qt_widget_set_layout(QWidget* self,QLayout* layout){
    self->setLayout(layout);
}

extern "C"
void qt_widget_set_parent(QWidget* self,QWidget* parent){
    self->setParent(parent);
}