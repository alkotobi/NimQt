//
// Created by merhab on 2023/5/5.
//

#include <QGridLayout>
#include "QtEnum.h"
extern "C"
QGridLayout* qt_grid_layout_new(QWidget *parent){
    return new (std::nothrow) QGridLayout(parent);
}

extern "C"
void qt_grid_layout_add_layout(QGridLayout*self,QLayout *layout, int row, int column,
                               int rowSpan,
                               int columnSpan,Alignment alignment){
    self->addLayout(layout,row,column,rowSpan,columnSpan,(Qt::Alignment) qt_alignment_flags(alignment));
}

extern "C"
void qt_grid_layout_add_widget(QGridLayout*self,QWidget *widget, int row, int column,
                               int rowSpan,
                               int columnSpan,Alignment alignment){
    self->addWidget(widget,row,column,rowSpan,columnSpan,(Qt::Alignment) qt_alignment_flags(alignment));
}

