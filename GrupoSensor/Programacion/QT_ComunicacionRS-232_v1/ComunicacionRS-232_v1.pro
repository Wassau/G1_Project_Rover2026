TEMPLATE = app
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        SerialPortFunctionsWin.cpp \
        main.cpp

HEADERS += \
    SerialPortFunctionsWin.h
