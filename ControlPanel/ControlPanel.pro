QT       += core gui \
    quick

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    controlpanelapplication.cpp \
    controlpanelconfig.cpp \
    main.cpp \
    mainwindow.cpp \
    passwordedit.cpp \
    processcommander.cpp \
    radiogroup.cpp \
    statethreadbase.cpp \
    statethreadmount.cpp \
    threadchangepassword.cpp \
    threadlistimage.cpp \
    threadmountimage.cpp \
    threadmountnic.cpp \
    threadmountpartation.cpp \
    threadmountserial.cpp \
    threadpreparedevice.cpp \
    widgetchangepassword.cpp \
    widgetresult.cpp \
    widgetselectimage.cpp

HEADERS += \
    controlpanelapplication.h \
    controlpanelconfig.h \
    mainwindow.h \
    passwordedit.h \
    processcommander.h \
    radiogroup.h \
    statethreadbase.h \
    statethreadmount.h \
    threadchangepassword.h \
    threadlistimage.h \
    threadmountimage.h \
    threadmountnic.h \
    threadmountpartation.h \
    threadmountserial.h \
    threadpreparedevice.h \
    widgetchangepassword.h \
    widgetresult.h \
    widgetselectimage.h

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
