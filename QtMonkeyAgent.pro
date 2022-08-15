QT += gui widgets

TEMPLATE = lib
CONFIG += staticlib

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    agent.cpp agent_qtmonkey_communication.cpp common.cpp script.cpp script_api.cpp script_runner.cpp user_events_analyzer.cpp

HEADERS += \
    agent.hpp agent_qtmonkey_communication.hpp common.hpp custom_event_analyzer.hpp custom_script_extension.hpp script.hpp \
    script_api.hpp script_runner.hpp user_events_analyzer.hpp

# Default rules for deployment.
unix {
    target.path = $$[QT_INSTALL_PLUGINS]/generic
}
!isEmpty(target.path): INSTALLS += target
