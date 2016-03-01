JAVA_HOME=/usr/local/jdk1.8.0_45
CATALINA_OPTS='-XX:+UseConcMarkSweepGC -XX:MaxGCPauseMillis=500 -XX:+PrintGCDetails -Xloggc:/home/ubuntu/app/tomcat2/logs/gc.log -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=2 -XX:GCLogFileSize=1M'
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/apr/lib
export LD_LIBRARY_PATH
