#!/bin/bash

cp /etc/transmission-daemon/settings.json /srv/transmission/config/
exec /usr/bin/transmission-daemon   -f --no-portmap --log-info --config-dir /srv/transmission/config/ --incomplete-dir /var/lib/transmission/Incomplete --download-dir /var/lib/transmission/New --watch-dir /var/lib/transmission/Torrents
