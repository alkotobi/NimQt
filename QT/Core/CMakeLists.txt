
include_directories(.)

add_library(Core SHARED 
QObject.cpp
QObject.h
QString.cpp
QString.h
)
target_link_libraries(Core PRIVATE Qt6::Widgets)