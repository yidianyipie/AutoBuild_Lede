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

echo '添加主题argon'
git clone https://github.com/sypopo/luci-theme-argon-mc.git package/lean/luci-theme-argon-mc
echo 'CONFIG_PACKAGE_luci-theme-argon-mc=y' >> .config


#echo '添加主题atmaterial'
#git clone https://github.com/Mrbai98/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial
#echo 'CONFIG_PACKAGE_luci-theme-atmaterial=y' >> .config
# git clone https://github.com/tty228/luci-app-serverchan.git package/lean/luci-app-serverchan
# echo 'CONFIG_PACKAGE_luci-app-serverchan=y' >> .config


# 添加 'i915/kbl_dmc_ver1_04.bin'
echo 'CONFIG_EXTRA_FIRMWARE="i915/kbl_dmc_ver1_04.bin"' >> target/linux/x86/config-5.4
echo 'CONFIG_EXTRA_FIRMWARE_DIR="/lib/firmware"' >> target/linux/x86/config-5.4
