#include <QBoxLayout>
#include "QtEnum.h"
enum Direction { LeftToRight=0, RightToLeft=1, TopToBottom=2, BottomToTop=3 };

extern "C"
QBoxLayout* qt_box_layout_new(Direction dir, QWidget* parent){
    return new (std::nothrow) QBoxLayout(QBoxLayout::Direction (dir), parent);
}

extern "C"
void qt_box_layout_add_layout(QBoxLayout*self,QLayout *layout, int stretch){
    self->addLayout(layout,stretch );
}

extern "C"
void qt_box_layout_add_layout_v1(QBoxLayout*self,QLayout *layout){
    self->addLayout(layout,0);
}

extern "C"
void qt_box_layout_add_widget(QBoxLayout*self,QWidget *widget, int stretch , Alignment alignment){
    self->addWidget(widget,  stretch , (Qt::Alignment) qt_alignment_flags(alignment));
}

extern "C"
void qt_box_layout_add_widget_v1(QBoxLayout*self,QWidget *widget){
    self->addWidget(widget);
}

extern "C"
void qt_box_layout_set_direction(QBoxLayout*self,Direction direction){
    self->setDirection((QBoxLayout::Direction)direction);
}

