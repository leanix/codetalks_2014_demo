#!/bin/bash
apt-get update
# Install curl
if [ ! -f /usr/bin/curl ]; then
	apt-get -y install curl
fi
