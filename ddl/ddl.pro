#-------------------------------------------------
#
# Project created by QtCreator 2014-09-22T19:33:34
#
#-------------------------------------------------

QT       -=  gui

TARGET = ddl
TEMPLATE = lib

DEFINES += DDL_LIBRARY

SOURCES += ddl.cpp

HEADERS += ddl.h\
        ddl_global.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
