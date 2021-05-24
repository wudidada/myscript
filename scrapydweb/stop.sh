#!/bin/sh
stop() {
    process=$1
    #杀进程
    pids=$(ps -ef | grep "${process}$" | grep -v grep | awk '{print $2}')
    for pid in $pids
    do
        echo "killed $pid"
        kill -9 $pid
    done
}

. ~/scrapydweb/bin/activate

stop "scrapydweb"