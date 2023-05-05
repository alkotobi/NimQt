#pragma once
typedef void QIcon;

QIcon* qt_icon_new();
void qt_icon_add_file(QIcon* self,const char* file_name);