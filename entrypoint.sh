#!/bin/sh
nginx -g "daemon off;" &
telegraf &
sleep 5
/usr/local/bin/wrk -c${CONNECTION} -d${DELAY}s -t${THREAD} $TARGET
