#!/bin/sh

# Start the first process
/usr/sbin/unbound -c /etc/unbound/unbound.conf -d &

# Start the second process
/opt/adguardhome/AdGuardHome --no-check-update -c /opt/adguardhome/conf/AdGuardHome.yaml -w /opt/adguardhome/work &

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?
