#-------------------------------------------------
#
# Project created by QtCreator 2019-07-17T21:40:41
#
#-------------------------------------------------

QT       -= gui

TARGET = cm-lib
TEMPLATE = lib

DEFINES += CMLIB_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += source

SOURCES += \
        source/controller/command-controller.cpp \
        source/controller/mastercontroller.cpp \
        source/controller/navigationcontroller.cpp \
        source/framework/command.cpp \
        source/models/client.cpp

HEADERS += \
        source/controller/command-controller.h \
        source/controller/mastercontroller.h \
        source/controller/navigationcontroller.h \
        source/framework/command.h \
        source/models/client.h \
        source/cm-lib_global.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

DESTDIR = $$PWD/../../.lib

message(cm-lib project dir: $$DESTDIR)
