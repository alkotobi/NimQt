#include <QString>

extern "C"
QString* qt_string_new(const char* str){
    return new  (std::nothrow) QString(str);
}