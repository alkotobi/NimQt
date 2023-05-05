#include <QVBoxLayout>

extern "C"
QVBoxLayout* qt_vbox_layout_new(QWidget* parent){
    return new (std::nothrow) QVBoxLayout(parent);
}

extern "C"
QVBoxLayout* qt_vbox_layout_new_v1(){
    return new (std::nothrow) QVBoxLayout();
}
