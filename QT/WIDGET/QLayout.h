#pragma once 
#include "QWidget.h"
typedef void QLayout;

void qt_add_widget(QLayout* self,QWidget* widget);
void qt_remove_widget(QLayout* self,QWidget* widget);