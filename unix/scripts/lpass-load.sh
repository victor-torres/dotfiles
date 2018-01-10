#!/bin/sh
export LPASS_DISABLE_PINENTRY=1

if [ -z /usr/bin/lpass ] ; then
    echo "You need to install LastPass CLI."
    exit 1
fi

if ! lpass status | grep -q Logged ; then
    echo "You need to be logged in LastPass CLI."
    exit 1
fi

lpass show .cred.toml --notes > ~/.cred.toml
lpass show .wakatime.cfg --notes > ~/.wakatime.cfg
lpass show .secrets --notes > ~/.secrets

