#include <QPushButton>

extern "C"
QPushButton* qt_push_button_new(QWidget* parent){
    return new (std::nothrow)QPushButton(parent);
}


