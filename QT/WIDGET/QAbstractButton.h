#pragma once

typedef void QAbstractButton;
typedef void (* qt_abstractButton_callback) (void);
void qt_abstractButton_onClicked(QAbstractButton* self, void* ctx,qt_abstractButton_callback on_clicked);
void qt_abstractButton_set_text(QAbstractButton* self,const char* text);