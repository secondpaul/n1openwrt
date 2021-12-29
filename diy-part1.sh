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

####################################################################
## 下载koolProxyR
git clone https://github.com/jefferymvp/luci-app-koolproxyR package/luci-app-koolproxyR

####################################################################
## 下载OpenClash
wget https://github.com/vernesong/OpenClash/archive/master.zip

## 解压
unzip master.zip

## 复制OpenClash软件包到OpenWrt
cp -r OpenClash-master/luci-app-openclash package/
####################################################################

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
