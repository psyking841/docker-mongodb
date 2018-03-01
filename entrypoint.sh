#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-502}

echo "Starting with UID : $USER_ID"
useradd --shell /bin/bash -u $USER_ID -o -c "" -m shengyipan
export HOME=/home/shengyipan

# exec /usr/local/bin/gosu shengyipan "$@"
exec /usr/local/bin/gosu shengyipan mongod --dbpath /data/db/
