#pragma once

enum Alignment{Default,AlignLeft,AlignRight,AlignHCenter,AlignJustify,AlignTop,AlignBottom,AlignVCenter,AlignBaseline,AlignCenter,AlignAbsolute,AlignLeading,AlignTrailing,AlignHorizontal_Mask,AlignVertical_Mask};
enum WindowType{Widget,Window,Dialog,Sheet,Drawer,Popup,Tool,ToolTip,SplashScreen,SubWindow,ForeignWindow,CoverWindow};
enum Orientation {
    Horizontal = 0x1,
    Vertical = 0x2
};
extern "C" {
int qt_alignment_flags(Alignment flag);
int qt_window_type_flags(WindowType flag);
int qt_orientation_flags(Orientation flag);
}