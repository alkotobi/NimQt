#include <QLayout>
#include <QWidget>

extern "C"
void qt_add_widget(QLayout* self,QWidget* widget){
    self->addWidget(widget);
}

extern "C"
void qt_remove_widget(QLayout* self,QWidget* widget){
    self->removeWidget(widget);
}
