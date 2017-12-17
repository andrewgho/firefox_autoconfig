# Makefile - move autoconfig.js and mozilla.cfg into Firefox.app directory
# Andrew Ho (andrew@zeuscat.com)

FIREFOX_DIR := /Applications/Firefox.app
AUTOCONFIG_JS := $(FIREFOX_DIR)/Contents/Resources/defaults/pref/autoconfig.js
MOZILLA_CFG := $(FIREFOX_DIR)/Contents/Resources/mozilla.cfg
PID := $(shell echo $$$$)

all: $(AUTOCONFIG_JS) $(MOZILLA_CFG)

$(AUTOCONFIG_JS): autoconfig.js
	cp autoconfig.js $(AUTOCONFIG_JS).tmp.$(PID) && mv $(AUTOCONFIG_JS).tmp.$(PID) $(AUTOCONFIG_JS)

$(MOZILLA_CFG): mozilla.cfg
	cp mozilla.cfg $(MOZILLA_CFG).tmp.$(PID) && mv $(MOZILLA_CFG).tmp.$(PID) $(MOZILLA_CFG)
