#!/bin/bash

# Point to Google's DNS server
sed -i -e 's/#DNS=/DNS=1.1.1.1/' /etc/systemd/resolved.conf

service systemd-resolved restart
