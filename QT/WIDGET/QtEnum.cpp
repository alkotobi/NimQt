#include <Qt>
#include "QtEnum.h"

extern "C"
int qt_alignment_flag(Alignment flag) {
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
    }

}