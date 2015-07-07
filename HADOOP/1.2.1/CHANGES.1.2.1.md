# Apache Hadoop Changelog

## Release 1.2.1 - 2013-08-01

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5368](https://issues.apache.org/jira/browse/MAPREDUCE-5368) | Save memory by  set capacity, load factor and concurrency level for ConcurrentHashMap in TaskInProgress |  Major | mrv1 | zhaoyunjiong | zhaoyunjiong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9730](https://issues.apache.org/jira/browse/HADOOP-9730) | fix hadoop.spec to add task-log4j.properties |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-9504](https://issues.apache.org/jira/browse/HADOOP-9504) | MetricsDynamicMBeanBase has concurrency issues in createMBeanInfo |  Critical | metrics | Liang Xie | Liang Xie |
| [HDFS-4880](https://issues.apache.org/jira/browse/HDFS-4880) | Diagnostic logging while loading name/edits files |  Major | namenode | Arpit Agarwal | Suresh Srinivas |
| [HDFS-4699](https://issues.apache.org/jira/browse/HDFS-4699) | TestPipelinesFailover#testPipelineRecoveryStress fails sporadically |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4581](https://issues.apache.org/jira/browse/HDFS-4581) | DataNode#checkDiskError should not be called on network errors |  Major | datanode | Rohit Kochar | Rohit Kochar |
| [HDFS-4261](https://issues.apache.org/jira/browse/HDFS-4261) | TestBalancerWithNodeGroup times out |  Major | balancer & mover | Tsz Wo Nicholas Sze | Junping Du |
| [MAPREDUCE-5351](https://issues.apache.org/jira/browse/MAPREDUCE-5351) | JobTracker memory leak caused by CleanupQueue reopening FileSystem |  Critical | jobtracker | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5318](https://issues.apache.org/jira/browse/MAPREDUCE-5318) | Ampersand in JSPUtil.java is not escaped |  Minor | jobtracker | Bohou Li | Bohou Li |
| [MAPREDUCE-5260](https://issues.apache.org/jira/browse/MAPREDUCE-5260) | Job failed because of JvmManager running into inconsistent state |  Major | tasktracker | zhaoyunjiong | zhaoyunjiong |
| [MAPREDUCE-5148](https://issues.apache.org/jira/browse/MAPREDUCE-5148) | Syslog missing from Map/Reduce tasks |  Major | tasktracker | Yesha Vora | Arun C Murthy |
| [MAPREDUCE-4490](https://issues.apache.org/jira/browse/MAPREDUCE-4490) | JVM reuse is incompatible with LinuxTaskController (and therefore incompatible with Security) |  Critical | task-controller, tasktracker | George Datskos | sam liu |
| [MAPREDUCE-3859](https://issues.apache.org/jira/browse/MAPREDUCE-3859) | CapacityScheduler incorrectly utilizes extra-resources of queue for high-memory jobs |  Major | capacity-sched | Sergey Tryuber | Sergey Tryuber |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


