COMPONENT_SRCDIRS := libev
COMPONENT_OBJS := libev/ev.o libev/event.o
COMPONENT_ADD_INCLUDEDIRS := libev
COMPONENT_PRIV_INCLUDEDIRS := libev

CPPFLAGS += -w -DEV_CONFIG_H='"$(COMPONENT_PATH)/config.h"' -DESP32
