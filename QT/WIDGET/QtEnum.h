#pragma once

enum Alignment{AlignLeft,AlignRight,AlignHCenter,AlignJustify,AlignTop,AlignBottom,AlignVCenter,AlignBaseline,AlignCenter,AlignAbsolute,AlignLeading,AlignTrailing,AlignHorizontal_Mask,AlignVertical_Mask};
enum WindowType{Widget,Window,Dialog,Sheet,Drawer,Popup,Tool,ToolTip,SplashScreen,SubWindow,ForeignWindow,CoverWindow};

extern "C" {
int qt_alignment_flags(Alignment flag);
int qt_window_type_flags(WindowType flag);
}