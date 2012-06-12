#-------------------------------------------------
#
# Project created by QtCreator 2012-05-21T14:23:28
#
#-------------------------------------------------

QT       -= gui

TARGET = scheme
TEMPLATE = lib

DEFINES += SCHEME_LIBRARY

SOURCES += scheme.cpp \
    engine.cpp \
    value.cpp \
    number.cpp

HEADERS += scheme.h\
        scheme_global.h \
    engine.h \
    value.h \
    number.h

symbian {
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE2C7A151
    TARGET.CAPABILITY = 
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = scheme.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}














