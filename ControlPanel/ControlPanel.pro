QT       += core gui \
    quick

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    controlapplication.cpp \
    controlpanelconfig.cpp \
    main.cpp \
    mainwindow.cpp \
    qcustomlineedit.cpp \
    qcustomradiogroup.cpp \
    statethread.cpp \
    threadmountnic.cpp \
    threadmountpartation.cpp \
    threadmountserial.cpp \
    threadpreparedevice.cpp

HEADERS += \
    controlapplication.h \
    controlpanelconfig.h \
    mainwindow.h \
    qcustomlineedit.h \
    qcustomradiogroup.h \
    statethread.h \
    threadmountnic.h \
    threadmountpartation.h \
    threadmountserial.h \
    threadpreparedevice.h

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    ControlPanel_zh_CN.ts
CONFIG += lrelease
CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target