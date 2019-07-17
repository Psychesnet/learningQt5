QT += testlib
QT -= gui

CONFIG += qt console warn_on depend_includepath testcase

TEMPLATE = app

CONFIG += c++14
CONFIG += app_bundle

INCLUDEPATH += source

SOURCES +=  source/models/tst_clienttests.cpp
