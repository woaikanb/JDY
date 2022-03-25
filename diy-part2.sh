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
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate

rm -rf  feeds/luci/themes/luci-theme-argon

git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

sed -i 's/R22.3.13/For FMJYY23/g' package/lean/default-settings/files/zzz-default-settings

sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' feeds/luci/applications/luci-app-turboacc/po/zh-cn/turboacc.po

sed -i 's/"CPU 性能优化调节"/"处理器性能优化调节设置"/g' feeds/luci/applications/luci-app-cpufreq/po/zh-cn/cpufreq.po

git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/lean/luci-app-unblockneteasemusic
