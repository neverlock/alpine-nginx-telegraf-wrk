** $ docker run -d --name influxdb -p 8083:8083 -p 8086:8086 influxdb
** $ docker run --rm telegraf -sample-config > telegraf.conf
** $ docker run --rm -i -e CONNECTION=10 -e DELAY=5 -e THREAD=1 -e TARGET=http://www.yoursite.com -v $PWD/telegraf.conf:/etc/telegraf/telegraf.conf:ro neverlock/alpine-nginx-telegraf-wrk
