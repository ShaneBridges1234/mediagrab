#!/bin/sh
sed -i 's/AuthSubnetWhitelist=\@Invalid\(\)/AuthSubnetWhitelist=192.168.1.0\/24/g' ./qbittorrent/config/qBittorrent/qBittorrent.conf
sed -i 's/AuthSubnetWhitelistEnabled=false/AuthSubnetWhitelistEnabled=true/g' ./qbittorrent/config/qBittorrent/qBittorrent.conf
sed -i 's/WebUI\\Username=admin/WebUI\\Username=yottatron/g' ./qbittorrent/config/qBittorrent/qBittorrent.conf

grep -qxF "WebUI\AuthSubnetWhitelist" ./qbittorrent/config/qBittorrent/qBittorrent.conf
if [ $? -ne 0 ]; then
  sed -i "$ a WebUI\\\AuthSubnetWhitelist=192.168.1.0/24" ./qbittorrent/config/qBittorrent/qBittorrent.conf
else
    echo "port=9033 already added"
fi


# sed -i '1 h
# 1 !H
# $ {
#    x
#    s/WebUI\\AuthSubnetWhitelist=\@Invalid\(\)/WebUI\\AuthSubnetWhitelist=192.168.1.0\/24/g
#    t
#    s/$/\
# WebUI\\AuthSubnetWhitelist=192.168.1.0\/24/
#    }' ./qbittorrent/config/qBittorrent/qBittorrent.conf


# grep -qxF 'include "/configs/projectname.conf"' foo.bar || echo 'include "/configs/projectname.conf"' >> foo.bar

# LINE='[Preferences]:
# *
# WebUI\AuthSubnetWhitelist='
# FILE='./qbittorrent/config/qBittorrent/qBittorrent.conf'
# grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

# if [[ ${testmystring} != *"c0"* ]];then
#     # testmystring does not contain c0
# fi


# WebUI\AuthSubnetWhitelistEnabled=false
# WebUI\AuthSubnetWhitelistEnabled=true
