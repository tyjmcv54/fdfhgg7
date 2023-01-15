#!/bin/sh
if [ ! -f UUID ]; then
  UUID="913173c6-0413-4c7f-b1e0-5428da7d8d14"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

