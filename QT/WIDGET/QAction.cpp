#include <QAction>

extern "C"
QAction* qt_action_new(QObject* parent){
    QAction* ac = new QAction(parent);
    return ac;
}

extern "C"
void qt_action_set_icon(QAction* self,const char* icon_path){
    QIcon icon;
    icon.addFile(QString::fromUtf8(icon_path));
    self->setIcon(icon);
}
