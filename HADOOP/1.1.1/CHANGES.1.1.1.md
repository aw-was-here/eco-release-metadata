# Apache Hadoop Changelog

## Release 1.1.1 - 2012-11-27

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-528](https://issues.apache.org/jira/browse/HDFS-528) | Add ability for safemode to wait for a minimum number of live datanodes |  Major | scripts | Todd Lipcon | Todd Lipcon |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8823](https://issues.apache.org/jira/browse/HADOOP-8823) | ant package target should not depend on cn-docs |  Major | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-1539](https://issues.apache.org/jira/browse/HDFS-1539) | prevent data loss when a cluster suffers a power loss |  Major | datanode, hdfs-client, namenode | dhruba borthakur | dhruba borthakur |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9017](https://issues.apache.org/jira/browse/HADOOP-9017) | fix hadoop-client-pom-template.xml and hadoop-client-pom-template.xml for version |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HDFS-4161](https://issues.apache.org/jira/browse/HDFS-4161) | HDFS keeps a thread open for every file writer |  Major | hdfs-client | Suresh Srinivas | Tsz Wo Nicholas Sze |
| [HDFS-3846](https://issues.apache.org/jira/browse/HDFS-3846) | Namenode deadlock in branch-1 |  Major | namenode | Tsz Wo Nicholas Sze | Brandon Li |
| [HDFS-3791](https://issues.apache.org/jira/browse/HDFS-3791) | Backport HDFS-173 to Branch-1 :  Recursively deleting a directory with millions of files makes NameNode unresponsive for other commands until the deletion completes |  Major | namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-2815](https://issues.apache.org/jira/browse/HDFS-2815) | Namenode is not coming out of safemode when we perform ( NN crash + restart ) .  Also FSCK report shows blocks missed. |  Critical | namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [MAPREDUCE-4792](https://issues.apache.org/jira/browse/MAPREDUCE-4792) | Unit Test TestJobTrackerRestartWithLostTracker fails with ant-1.8.4 |  Major | test | Amir Sanjar | Amir Sanjar |
| [MAPREDUCE-4782](https://issues.apache.org/jira/browse/MAPREDUCE-4782) | NLineInputFormat skips first line of last InputSplit |  Blocker | client | Mark Fuhs | Mark Fuhs |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-1108](https://issues.apache.org/jira/browse/HDFS-1108) | Log newly allocated blocks |  Major | ha, namenode | dhruba borthakur | Todd Lipcon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


