cmake_minimum_required(VERSION 3.25)
if (win32)
    set(CMAKE_PREFIX_PATH "C:/Qt/6.5.0/static_build_debug/lib/cmake")
endif (win32)
if (UNIX)
    set(CMAKE_PREFIX_PATH "~/dev/qt-everywhere-src-6.1.1/BUILD-STATIC/lib/cmake/")
endif (UNIX)
project(wid_lib)
include_directories(.)
add_library(Widget SHARED 
QApplication.cpp
QApplication.h
QPushButton.cpp
QPushButton.h
QWidget.cpp
QWidget.h
QAbstractButton.cpp
QLabel.cpp
mnsystem.h
mnsystem.c
mnarray.h
mnarray.c
mncstring.h
mncstring.c
QLayout.h
QLayout.cpp
QAction.h
QAction.cpp
QIcon.h
QIcon.cpp
QObject.h
QObject.cpp
QString.h
QString.cpp
QVBoxLayout.cpp
QVBoxLayout.h
QBoxLayout.h
QBoxLayout.cpp
QtEnum.h
QtEnum.cpp
QHBoxLayout.h
QHBoxLayout.cpp
        QFrame.cpp
        QFrame.h
        QGridLayout.cpp
        QGridLayout.h)
find_package(Qt6 REQUIRED COMPONENTS Widgets Core Gui)
target_link_libraries(Widget PRIVATE Qt6::Widgets Qt6::Core Qt6::Gui)

set(PROJECT_SOURCES
        main.c
       )
add_executable(cqt_test ${PROJECT_SOURCES})
target_link_libraries(cqt_test PRIVATE Widget)