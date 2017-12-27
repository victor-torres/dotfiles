#!/bin/sh
if [ -z /usr/bin/lpass ] ; then
    echo "You need to install LastPass CLI."
    exit 1
fi

if ! lpass status | grep -q Logged ; then
    echo "You need to be logged in LastPass CLI."
    exit 1
fi

export WAKATIME_API_KEY="$(lpass show --name "Wakatime API Key" --notes)"
