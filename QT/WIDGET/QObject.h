#pragma once

typedef void QObject;

void qt_qobject_del(QObject* self);
QObject* qt_qobject_new(QObject*parent);
void qt_object_set_parent(QObject* self , QObject* parent);
QObject* qt_object_get_parent(QObject* self);
void qt_object_set_object_name(QObject* self,const char* name);