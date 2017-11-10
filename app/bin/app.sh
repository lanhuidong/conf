#!/bin/sh
JAVA_HOME=/usr/local/jdk1.8.0_45

APP_HOME=$(cd "../$(dirname "$0")"; pwd)

APP_MAIN=com.nexusy.App

APP_PID_FILE=$APP_HOME/tmp/app.pid

JAVA_OPTS="-Duser.timezone=UTC -server -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=$APP_HOME/tmp -XX:+UseConcMarkSweepGC -XX:MaxGCPauseMillis=500"

PATH=$JAVA_HOME/bin:$PATH
export JAVA_HOME PATH APP_HOME

if [ ! -d $APP_HOME/tmp ];then
    mkdir $APP_HOME/tmp
fi

if [ ! -d $APP_HOME/logs ];then
    mkdir $APP_HOME/logs
fi

startup()
{
    if [ `ps x |grep -v grep|grep $APP_MAIN|wc -l` -eq 0 ];then
        if [ -f $APP_PID_FILE ];then
            rm $APP_PID_FILE
        fi
    fi
    if [ ! -f $APP_PID_FILE ];then
        java $JAVA_OPTS -cp $APP_HOME/conf/:$APP_HOME/lib/*:. $APP_MAIN 2>>$APP_HOME/logs/app.out 1>>$APP_HOME/logs/app.out &
        echo $!>$APP_PID_FILE
        echo 'app server start up successfully.'
    else
        echo 'app server is already running.'
    fi
}

shutdown()
{
    if [ -f $APP_PID_FILE ];then
        kill `cat $APP_PID_FILE`
        rm $APP_PID_FILE
        echo 'app server shutdown successfully.'
    else
        echo 'app server is not running.'
    fi
}

case $1 in
    start)
        startup
        ;;
    stop)
        shutdown
        ;;
    *)
    echo 'Usage: $0 {start|stop}'
esac
