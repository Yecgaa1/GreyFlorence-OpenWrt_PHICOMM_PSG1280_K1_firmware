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
cd ~/work/OpenWrt_Newifi_D2_firmware/OpenWrt_Newifi_D2_firmware/openwrt/package/lean &&
rm -rf luci-theme-argon && 
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git &&
cd ../.. &&
cd ./feeds/luci/collections/luci &&
rm -rf Makefile &&
wget https://raw.githubusercontent.com/GreyFlorence/OpenWrt_Newifi_D2_firmware/main/Makefile &&
chmod 777 Makefile &&
cd ../../../..
