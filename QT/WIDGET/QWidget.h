#pragma once

typedef void QWidget;
typedef void QLayout;
QWidget* qt_widget_new(QWidget* parent);
void qt_widget_show(QWidget* self);
void qt_widget_set_layout(QWidget* self,QLayout* layout);
void qt_widget_set_parent(QWidget* self,QWidget* parent);