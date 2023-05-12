//
// Created by merhab on 2023/5/9.
//
#include <QSpacerItem>
#include "QtEnum.h"

extern "C"
QSpacerItem* qt_spacer_item_new(int w,int h,int direction,Orientation orientation){
    QSpacerItem* s =0;
    switch (orientation) {
        case Horizontal:
            s= new (std::nothrow) QSpacerItem(0,0,QSizePolicy::Expanding, QSizePolicy::Minimum);
            break;
        case Vertical:
            s= new (std::nothrow) QSpacerItem(0,0,QSizePolicy::Minimum, QSizePolicy::Expanding);
            break;
    }
    return s;
}