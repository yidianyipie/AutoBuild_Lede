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
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# add lienol package
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add Theme
sed -i '$a src-git argonmc https://github.com/sypopo/luci-theme-argon-mc.git' feeds.conf.default
sed -i '$a src-git butterfly https://github.com/Leo-Jo-My/luci-theme-Butterfly.git' feeds.conf.default
sed -i '$a src-git rosy https://github.com/rosywrt/luci-theme-rosy.git' feeds.conf.default

cat feeds.conf.default
