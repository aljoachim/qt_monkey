QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += contrib/json11

SOURCES += jsedit.cpp qtmonkey_gui.cpp

HEADERS += jsedit.h qtmonkey_gui.hpp

FORMS += qtmonkey_gui.ui

DEFINES += QTMONKEY_APP_NAME=\\\"$$OUT_PWD/qtmonkey_app\\\"

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/./release/ -lCommonAppLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/./debug/ -lCommonAppLib
else:macx: LIBS += -L$$OUT_PWD/./ -lCommonAppLib

INCLUDEPATH += $$PWD/.
DEPENDPATH += $$PWD/.

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/./release/libCommonAppLib.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/./debug/libCommonAppLib.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/./release/CommonAppLib.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/./debug/CommonAppLib.lib
else:macx: PRE_TARGETDEPS += $$OUT_PWD/./libCommonAppLib.a
