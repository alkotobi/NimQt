#include <QAbstractButton>
#include <QString>

typedef void (* qt_abstractButton_callback) (void);

extern "C"
void qt_abstractButton_onClicked(QAbstractButton* self, void* ctx,qt_abstractButton_callback on_clicked){
        QObject::connect(self, &QAbstractButton::clicked, [=]{
        on_clicked();
    });
}

extern "C"
void qt_abstractButton_set_text(QAbstractButton* self,const char* text){
    self->setText(QString(text));
}