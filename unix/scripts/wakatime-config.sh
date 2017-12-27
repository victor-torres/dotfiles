#!/bin/sh
cat <<EOF > ~/.wakatime.cfg
[settings]
debug = false
api_key = $WAKATIME_API_KEY
EOF
