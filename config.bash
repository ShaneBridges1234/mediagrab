#!/usr/bin/with-contenv bash

# make our folder
# mkdir -p /config/qBittorrent

# copy default config
if [[ ! -f /config/qBittorrent/qBittorrent.conf ]]; then
    cp /defaults/qBittorrent.conf /config/qBittorrent/qBittorrent.conf
fi