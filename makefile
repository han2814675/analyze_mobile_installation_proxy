THEOS_DEVICE_IP=127.0.0.1
THEOS_DEVICE_PORT=2222
TARGET=iphone:8.4
include theos/makefiles/common.mk

TWEAK_NAME = hook_install_app
hook_install_app_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 mobile_installation_proxy"
