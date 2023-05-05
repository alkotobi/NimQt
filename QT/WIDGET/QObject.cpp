#include <QObject>

extern "C"
void qt_qobject_del(QObject* self)
{
    delete self;
}

extern "C"
QObject* qt_qobject_new(QObject*parent)
{
    return new (std::nothrow)QObject(parent);
}

extern "C"
void qt_object_set_parent(QObject* self , QObject* parent){
    self->setParent(parent);
}

extern "C"
QObject* qt_object_get_parent(QObject* self){
    return self->parent();
}

extern "C"
void qt_object_set_object_name(QObject* self,const char* name){
    self->setObjectName(name);
}