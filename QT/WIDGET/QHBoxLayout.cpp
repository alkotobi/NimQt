#include <QHBoxLayout>

extern "C"
QHBoxLayout* qt_hbox_layout_new(QWidget* parent){
    return new (std::nothrow) QHBoxLayout(parent);
}

extern "C"
QHBoxLayout* qt_hbox_layout_new_v1(){
    return new (std::nothrow) QHBoxLayout();
}
