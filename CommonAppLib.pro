QT += gui widgets

TEMPLATE = lib
CONFIG += staticlib

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

VPATH += contrib/json11
INCLUDEPATH += contrib/json11

SOURCES += \
    json11.cpp common.cpp qtmonkey_app_api.cpp

HEADERS += \
    json11.hpp common.hpp qtmonkey_app_api.hpp semaphore.hpp shared_resource.hpp

# Default rules for deployment.
unix {
    target.path = $$[QT_INSTALL_PLUGINS]/generic
}
!isEmpty(target.path): INSTALLS += target
