#!/bin/sh
echo "127.0.0.1		$TARGET" >> /etc/hosts
nginx -g "daemon off;" &
telegraf &
sleep 5
/usr/local/bin/wrk -c${CONNECTION} -d${DELAY}s -t${THREAD} http://$TARGET
