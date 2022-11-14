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

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/openwrt-packages/luci-app-unblockneteasemusic
# git clone https://github.com/rosywrt/luci-theme-rosy.git package/openwrt-packages/luci-theme-rosy
git clone https://github.com/liuran001/openwrt-packages/tree/packages/luci-theme-argon-lr package/lean/luci-theme-argon-lr
git clone https://github.com/immortalwrt/luci/tree/master/themes/luci-theme-openwrt-2020  package/lean/luci-theme-openwrt-2020
# git clone https://github.com/kiddin9/openwrt-bypass.git package/openwrt-packages/luci-app-bypass
sed -i '1i src-git MrH723 https://github.com/MrH723/openwrt-packages' feeds.conf.default
sed -i '1i src-git haibo https://github.com/haiibo/openwrt-packages' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# sed -i '1i src-git liuran001 https://github.com/liuran001/openwrt-packages' feeds.conf.default
