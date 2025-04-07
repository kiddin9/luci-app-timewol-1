# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for Timewol
PKG_VERSION:=20190309
PKG_RELEASE:=3

LUCI_DEPENDS:=+luci-base
LUCI_PKGARCH:=all

define Package/luci-app-timewol/conffiles
/etc/config/timewol
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
