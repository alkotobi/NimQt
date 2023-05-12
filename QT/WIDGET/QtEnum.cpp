#include <Qt>
#include "QtEnum.h"


extern "C"
int qt_window_type_flags(WindowType flag) {
    switch (flag) {

        case Widget:
            return Qt::Widget;
        case Window:
            return Qt::Window;
        case Dialog:
            return Qt::Dialog;
        case Sheet:
            return Qt::Sheet;
        case Drawer:
            return Qt::Drawer;
        case Popup:
            return Qt::Popup;
        case Tool:
            return Qt::Tool;
        case ToolTip:
            return Qt::ToolTip;
        case SplashScreen:
            return Qt::SplashScreen;
        case SubWindow:
            return Qt::SubWindow;
        case ForeignWindow:
            return Qt::ForeignWindow;
        case CoverWindow:
            return Qt::CoverWindow;
    }
}
extern "C"
int qt_alignment_flags(Alignment flag) {
    switch (flag) {
        default:
            break;
        case AlignLeft:
            return Qt::AlignLeft;
        case AlignRight:
            return Qt::AlignRight;
        case AlignHCenter:
            return Qt::AlignHCenter;
        case AlignJustify:
            return Qt::AlignJustify;
        case AlignTop:
            return Qt::AlignTop;
        case AlignBottom:
            return Qt::AlignBottom;
        case AlignVCenter:
            return Qt::AlignVCenter;
        case AlignBaseline:
            return Qt::AlignBaseline;
        case AlignCenter:
            return Qt::AlignCenter;
        case AlignAbsolute:
            return Qt::AlignAbsolute;
        case AlignLeading:
            return Qt::AlignLeading;
        case AlignTrailing:
            return Qt::AlignTrailing;
        case AlignHorizontal_Mask:
            return Qt::AlignHorizontal_Mask;
        case AlignVertical_Mask:
            return Qt::AlignVertical_Mask;
        case Default:
            return Qt::Alignment();
    }

}

extern "C"
int qt_orientation_flags(Orientation flag) {
    switch (flag) {
        case Horizontal:
            return Qt::Horizontal;
        case Vertical:
            return Qt::Vertical;
    }
    return 0;
}
