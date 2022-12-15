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

########### 更新smartdns版本 ###########
sed -i "/^PKG_VERSION:=/cPKG_VERSION:=1.2022.39" feeds/packages/net/smartdns/Makefile
sed -i "/^PKG_SOURCE_VERSION:=/cPKG_SOURCE_VERSION:=3a1ba733860c2e4620bbf81618fe8f556649bb93" feeds/packages/net/smartdns/Makefile
sed -i "s/PKG_MIRROR_HASH/#PKG_MIRROR_HASH/" feeds/packages/net/smartdns/Makefile

########### 更新adguardhome版本###########
rsync -rtv --delete package/greenice/adguardhome/ feeds/packages/net/adguardhome

########### 更新xray-core版本###########
rsync -rtv --delete package/greenice/xray-core/ feeds/packages/net/xray-core
