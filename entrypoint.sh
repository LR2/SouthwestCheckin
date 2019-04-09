#!/bin/sh
ln -s /usr/share/zoneinfo/Etc/GMT+6 /etc/localtime

set -e

if [ "$1" != "/bin/sh" ]; then
  python ./checkin.py $@
else
  exec "$@"
fi
