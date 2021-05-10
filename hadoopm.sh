#!/bin/bash
if [ $# -lt 1 ]
then
 echo "No Args Input..."
 exit ;
fi
case $1 in
"start")
 echo " =================== start hadoop  ==================="
 echo " ---------------start hdfs ---------------"
 ssh hadoop1 "/opt/module/hadoop-3.1.3/sbin/start-dfs.sh"
 echo " --------------- start yarn ---------------"
 ssh hadoop2 "/opt/module/hadoop-3.1.3/sbin/start-yarn.sh"
 echo " --------------- start historyserver ---------------"
 ssh hadoop1 "/opt/module/hadoop-3.1.3/bin/mapred --daemon start historyserver"
;;
"stop")
 echo " =================== close hadoop 集群 ==================="
 echo " --------------- close historyserver ---------------"
 ssh hadoop1 "/opt/module/hadoop-3.1.3/bin/mapred --daemon stop historyserver"
 echo " --------------- close yarn ---------------"
 ssh hadoop2 "/opt/module/hadoop-3.1.3/sbin/stop-yarn.sh"
 echo " --------------- close hdfs ---------------"
 ssh hadoop1 "/opt/module/hadoop-3.1.3/sbin/stop-dfs.sh"
;;
*)
 echo "Input Args Error..."
;;
esac