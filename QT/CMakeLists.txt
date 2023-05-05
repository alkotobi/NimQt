cmake_minimum_required(VERSION 3.9)
set(CMAKE_PREFIX_PATH "~/dev/qt-everywhere-src-6.1.1/BUILD-STATIC/lib/cmake/")
project(QTWrap)

#====== Global Configurations ==================#

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_VERBOSE_MAKEFILE ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS true)



find_package(Qt6 REQUIRED COMPONENTS Widgets REQUIRED)
add_subdirectory(./WIDGET/)