#-------------------------------------------------
#
# Project created by QtCreator 2014-09-22T19:30:52
#
#-------------------------------------------------

QT       -= core gui

TARGET = cplusplus_staticlib
TEMPLATE = lib
CONFIG += staticlib

SOURCES += cplusplus_staticlib.cpp

HEADERS += cplusplus_staticlib.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}
