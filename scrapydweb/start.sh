#!/bin/sh

restart() {
    process=$1
    #杀进程
    pids=$(ps -ef | grep "${process}$" | grep -v grep | awk '{print $2}')
    for pid in $pids
    do
        echo "killed $pid"
        kill -9 $pid
    done
    #重启进程
    # echo "${process} > $process.log"
    echo "$process"
    nohup bash -c "${process}" > "${process}.log" 2>&1 &
}

. ~/scrapydweb/bin/activate

restart "scrapydweb"