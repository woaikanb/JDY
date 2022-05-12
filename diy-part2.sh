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
sed -i 's/192.168.1.1/192.168.8.8/g' package/base-files/files/bin/config_generate

rm -rf  feeds/luci/themes/luci-theme-argon

git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

sed -i '/uci commit system/i\uci set system.@system[0].hostname='YOY'' package/lean/default-settings/files/zzz-default-settings

sed -i "s/OpenWrt /OPWRT/g" package/lean/default-settings/files/zzz-default-settings

sed -i 's/R22.5.20/For XIANDANCHAOREN/g' package/lean/default-settings/files/zzz-default-settings

sed -i 's/set wireless.default_radio${devidx}.ssid=OpenWrt/set wireless.default_radio0.ssid=JDY/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

sed -i '/set wireless.default_radio0.ssid=JDY/a\ set wireless.default_radio1.ssid=FCY' package/kernel/mac80211/files/lib/wifi/mac80211.sh

sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' feeds/luci/applications/luci-app-turboacc/po/zh-cn/turboacc.po

sed -i 's/"CPU 性能优化调节"/"处理器性能优化调节设置"/g' feeds/luci/applications/luci-app-cpufreq/po/zh-cn/cpufreq.po

git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/lean/luci-app-unblockneteasemusic
