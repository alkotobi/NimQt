#include <QLabel>
#include <QWidget>
#include "mncstring.h"

extern "C"
QLabel* qt_label_new(QWidget* parent){
    return new (std::nothrow) QLabel(parent);
}
extern "C"
void qt_label_set_text(QLabel* self,const char* text){
    self->setText(text);
}
extern "C"
char* qt_label_get_text(QLabel* self){ 
    return cstring_new_clone(self->text().toUtf8().data());
}