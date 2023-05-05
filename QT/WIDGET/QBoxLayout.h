#pragma once
#include "QtEnum.h"
typedef void QBoxLayout;
typedef void QWidget;
typedef void QLayout;
enum Direction { LeftToRight=0, RightToLeft=1, TopToBottom=2, BottomToTop=3 };

QBoxLayout* qt_box_layout_new(Direction dir, QWidget* parent);
void qt_box_layout_add_layout(QBoxLayout*self,QLayout *layout, int stretch);
void qt_box_layout_add_layout_v1(QBoxLayout*self,QLayout *layout);
void qt_box_layout_add_widget(QBoxLayout*self,QWidget *widget, int stretch , Alignment alignment);
void qt_box_layout_add_widget_v1(QBoxLayout*self,QWidget *widget);
void qt_box_layout_set_direction(QBoxLayout*self,Direction direction);