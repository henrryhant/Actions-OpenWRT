#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

########### 修改默认 IP ###########
sed -i 's/192.168.1.1/192.168.9.1/g' package/base-files/files/bin/config_generate

########### 设置密码为空（可选） ###########
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# svn export https://github.com/immortalwrt/immortalwrt/trunk/package/network/config/netifd/patches package/network/config/netifd/patches

rm -rf package/network/services/omcproxy
svn export https://github.com/greenice897/gipackages/trunk/omcproxy package/network/services/omcproxy

########### 更新smartdns版本 ###########
rm -rf feeds/packages/net/smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
# sed -i "/^PKG_SOURCE_VERSION:=/cPKG_SOURCE_VERSION:=aa6f6fd519592adb831b5c7a25583c574ddda2bf" feeds/packages/net/smartdns/Makefile
rm -rf feeds/luci/applications/luci-app-smartdns
git clone https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
########### 更新adguardhome版本###########
#rsync -rtv --delete package/greenice/adguardhome/ feeds/packages/net/adguardhome

########### 更新xray-core版本###########
rsync -rtv --delete package/greenice/passwallpackages/xray-core/ feeds/packages/net/xray-core
rsync -rtv --delete package/greenice/passwallpackages/microsocks/ feeds/packages/net/microsocks
rsync -rtv --delete package/greenice/passwallpackages/sing-box/ feeds/packages/net/sing-box
rsync -rtv --delete package/greenice/passwallpackages/v2ray-core/ feeds/packages/net/v2ray-core
rsync -rtv --delete package/greenice/passwallpackages/v2ray-geodata/ feeds/packages/net/v2ray-geodata
