#-------------------------------------------------
#
# Project created by QtCreator 2014-12-01T15:06:26
#
#-------------------------------------------------

QT       -= core

TARGET = lpaggregjni
TEMPLATE = lib

DEFINES += LPAGGREGJNI_LIBRARY

SOURCES += C:/lpaggregjni/lpaggreg_wrap.cxx

INCLUDEPATH += E:\jdkinclude\include\
INCLUDEPATH += E:\jdkinclude\include\win32
INCLUDEPATH += E:\include\

LIBS +=  -D_JNI_IMPLEMENTATION_ -Wl,--kill-at -static -Wl,--whole-archive -L E:\lib\x86_mingw32 -l lpaggreg -Wl,--no-whole-archive

HEADERS +=

unix {
    target.path = /usr/lib
    INSTALLS += target
}
