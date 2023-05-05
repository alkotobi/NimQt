//
// Created by merhab on 2023/5/5.
//

#pragma once
#include "qtEnum.h"
enum Shape{NoFrame,Box,Panel,StyledPanel,HLine,VLine,WinPanel};
enum Shadow{Plain,Raised,Sunken};
typedef void QFrame;
typedef void QWidget;
QFrame* qt_frame_new(QWidget* parent,WindowType win_type);
void qt_frame_set_frame_shape(QFrame* self, Shape shape);
void qt_frame_set_frame_shadow(QFrame* self, Shadow shadow);

