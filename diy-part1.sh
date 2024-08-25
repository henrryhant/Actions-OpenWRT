#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# mkdir -p package/greenice
git clone https://github.com/greenice897/openwrtpackages.git package/greenice
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/greenice/passwallpackages
git clone -b luci-smartdns-dev https://github.com/xiaorouji/openwrt-passwall.git package/greenice
# git clone https://github.com/sbwml/package_kernel_r8125.git package/greenice/r8125
# git clone https://github.com/destan19/OpenAppFilter.git package/greenice/OpenAppFilter
# svn export https://github.com/xiaorouji/openwrt-passwall/branches/luci-smartdns-dev/luci-app-passwall package/greenice/luci-app-passwall
# svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/greenice/luci-app-openclash
# svn export https://github.com/greenice897/gipackages/trunk/ddns-scripts-dnspod package/greenice/ddns-scripts-dnspod
# svn export https://github.com/greenice897/gipackages/trunk/ddns-scripts_aliyun package/greenice/ddns-scripts_aliyun
# svn export https://github.com/greenice897/gipackages/trunk/luci-app-vlmcsd package/greenice/luci-app-vlmcsd
# svn export https://github.com/greenice897/gipackages/trunk/vlmcsd package/greenice/vlmcsd
# svn export https://github.com/greenice897/gipackages/trunk/luci-app-timecontrol package/greenice/luci-app-timecontrol
# svn export https://github.com/greenice897/gipackages/trunk/luci-app-accesscontrol package/greenice/luci-app-accesscontrol
# svn export https://github.com/immortalwrt/immortalwrt/trunk/package/kernel/r8125 package/greenice/r8125
# svn export https://github.com/immortalwrt/immortalwrt/trunk/package/kernel/r8152 package/greenice/r8152
# svn export https://github.com/immortalwrt/immortalwrt/trunk/package/kernel/r8168 package/greenice/r8168
# svn export https://github.com/greenice897/gipackages/trunk/luci-app-oaf package/greenice/luci-app-oaf
# svn export https://github.com/greenice897/gipackages/trunk/oaf package/greenice/oaf
# svn export https://github.com/greenice897/gipackages/trunk/open-app-filter package/greenice/open-app-filter
# svn export https://github.com/immortalwrt/immortalwrt/trunk/package/network/utils/fullconenat-nft package/greenice/fullconenat-nft
exit 0
