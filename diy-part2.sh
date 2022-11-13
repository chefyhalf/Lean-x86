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

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' feeds/luci/collections/luci/Makefile
#进入 OpenWrt 源码 package 目录
cd package
#克隆插件源码
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git
#返回上一层目录
cd ..
#配置
make menuconfig
#在 luci -> application 选中插件，开始编译
make package/luci-app-unblockneteasemusic/compile V=s
