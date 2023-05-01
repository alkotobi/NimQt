#pragma once
#include "QWidget.h"

typedef void QLabel;
QLabel* qt_label_new(QWidget* parent);
void qt_label_set_text(QLabel* self,const char* text);
char* qt_label_get_text(QLabel* self);