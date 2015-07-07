# Apache Hadoop Changelog

## Release 0.23.8 - 2013-06-05

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9504](https://issues.apache.org/jira/browse/HADOOP-9504) | MetricsDynamicMBeanBase has concurrency issues in createMBeanInfo |  Critical | metrics | Liang Xie | Liang Xie |
| [HDFS-4835](https://issues.apache.org/jira/browse/HDFS-4835) | Port trunk WebHDFS changes to branch-0.23 |  Critical | webhdfs | Robert Parker | Robert Parker |
| [HDFS-4714](https://issues.apache.org/jira/browse/HDFS-4714) | Log short messages in Namenode RPC server for exceptions meant for clients |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-4699](https://issues.apache.org/jira/browse/HDFS-4699) | TestPipelinesFailover#testPipelineRecoveryStress fails sporadically |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4690](https://issues.apache.org/jira/browse/HDFS-4690) | Namenode exits if entering safemode while secret manager is edit logging |  Critical | namenode, security | Daryn Sharp | Daryn Sharp |
| [HDFS-4477](https://issues.apache.org/jira/browse/HDFS-4477) | Secondary namenode may retain old tokens |  Critical | security | Kihwal Lee | Daryn Sharp |
| [HDFS-3875](https://issues.apache.org/jira/browse/HDFS-3875) | Issue handling checksum errors in write pipeline |  Critical | datanode, hdfs-client | Todd Lipcon | Kihwal Lee |
| [MAPREDUCE-5211](https://issues.apache.org/jira/browse/MAPREDUCE-5211) | Reducer intermediate files can collide during merge |  Blocker | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5168](https://issues.apache.org/jira/browse/MAPREDUCE-5168) | Reducer can OOM during shuffle because on-disk output stream not released |  Critical | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5147](https://issues.apache.org/jira/browse/MAPREDUCE-5147) | Maven build should create hadoop-mapreduce-client-app-VERSION.jar directly |  Major | mrv2 | Robert Parker | Robert Parker |
| [MAPREDUCE-5065](https://issues.apache.org/jira/browse/MAPREDUCE-5065) | DistCp should skip checksum comparisons if block-sizes are different on source/target. |  Major | distcp | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [MAPREDUCE-5059](https://issues.apache.org/jira/browse/MAPREDUCE-5059) | Job overview shows average merge time larger than for any reduce attempt |  Major | jobhistoryserver, webapps | Jason Lowe | Omkar Vinit Joshi |
| [MAPREDUCE-4927](https://issues.apache.org/jira/browse/MAPREDUCE-4927) | Historyserver 500 error due to NPE when accessing specific counters page for failed job |  Major | jobhistoryserver | Jason Lowe | Ashwin Shankar |
| [MAPREDUCE-4383](https://issues.apache.org/jira/browse/MAPREDUCE-4383) | HadoopPipes.cc needs to include unistd.h |  Minor | pipes | Andy Isaacson | Andy Isaacson |
| [YARN-690](https://issues.apache.org/jira/browse/YARN-690) | RM exits on token cancel/renew problems |  Blocker | resourcemanager | Daryn Sharp | Daryn Sharp |
| [YARN-71](https://issues.apache.org/jira/browse/YARN-71) | Ensure/confirm that the NodeManager cleans up local-dirs on restart |  Critical | nodemanager | Vinod Kumar Vavilapalli | Xuan Gong |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


