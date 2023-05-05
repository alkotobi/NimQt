//
// Created by merhab on 2023/5/5.
//

#include <QFrame>
#include "QtEnum.h"
enum Shape{NoFrame,Box,Panel,StyledPanel,HLine,VLine,WinPanel};
enum Shadow{Plain,Raised,Sunken};
int qt_frame_shadow_flags(Shadow shadow){
    switch (shadow) {

        case Plain:
            return QFrame::Plain;
        case Raised:
            return QFrame::Raised;
        case Sunken:
            return QFrame::Sunken;
    }
}
int qt_frame_shape_flags(Shape shape){
    switch (shape) {

        case NoFrame:
            return QFrame::NoFrame;
        case Box:
            return QFrame::Box;
        case Panel:
            return QFrame::Panel;
        case StyledPanel:
            return QFrame::StyledPanel;
        case HLine:
            return QFrame::HLine;
        case VLine:
            return QFrame::VLine;
        case WinPanel:
            return QFrame::WinPanel;
    }
}
extern "C"
QFrame* qt_frame_new(QWidget* parent,WindowType win_type){
    return new (std::nothrow) QFrame(parent,(Qt::WindowFlags) qt_window_type_flags(win_type));
}

extern "C"
void qt_frame_set_frame_shape(QFrame* self,Shape shape){
    self->setFrameShape((QFrame::Shape)qt_frame_shape_flags(shape));
}

extern "C"
void qt_frame_set_frame_shadow(QFrame* self,Shadow shadow){
    self->setFrameShadow((QFrame::Shadow)qt_frame_shadow_flags(shadow));
}

