#!/bin/sh
dir=$(cd "../$(dirname "$0")"; pwd)
startup()
{
    echo $dir + 'app start'
}

shutdown()
{
    echo $dir + 'app shutdown'
}

case $1 in
    start)
        startup
        ;;
    stop)
        shutdown
        ;;
esac
