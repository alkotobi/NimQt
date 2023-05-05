//
// Created by merhab on 2023/5/5.
//
#pragma once
#include "QtEnum.h"
typedef void QGridLayout;
typedef void QWidget;
typedef void QLayout;
QGridLayout* qt_grid_layout_new(QWidget *parent);
void qt_grid_layout_add_layout(QGridLayout*self,QLayout *layout, int row, int column,
                               int rowSpan,
                               int columnSpan,Alignment alignment);
void qt_grid_layout_add_widget(QGridLayout*self,QWidget *widget, int row, int column,
                               int rowSpan,
                               int columnSpan,Alignment alignment);
