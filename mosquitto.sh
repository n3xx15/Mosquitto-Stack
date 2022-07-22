#!/bin/bash
set -e

# Set permissions
user="$(id -u)"
if [ "$user" = '0' ]; then
	[ -d "/mosquitto" ] && chown -R mosquitto:mosquitto /mosquitto || true
fi
mkdir /mosquitto/log -p
touch /mosquitto/log/mosquitto.log
service mosquitto start
exec "$@"
#exec "tail -f /mosquitto/log/mosquitto.log"