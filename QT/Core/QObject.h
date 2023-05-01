#pragma once

typedef void QObject;

void qt_qobject_del(QObject* self);
QObject* qt_qobject_new(QObject* self,QObject*parent=0);
void qt_object_set_parent(QObject* self , QObject* parent);
QObject* qt_object_get_parent(QObject* self);