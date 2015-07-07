# Apache Hadoop Changelog

## Release 1.1.2 - 2013-02-15

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8567](https://issues.apache.org/jira/browse/HADOOP-8567) | Port conf servlet to dump running configuration  to branch 1.x |  Major | conf | Junping Du | Jing Zhao |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9111](https://issues.apache.org/jira/browse/HADOOP-9111) | Fix failed testcases with @ignore annotation In branch-1 |  Minor | test | Jing Zhao | Jing Zhao |
| [HADOOP-8561](https://issues.apache.org/jira/browse/HADOOP-8561) | Introduce HADOOP\_PROXY\_USER for secure impersonation in child hadoop client processes |  Major | security | Luke Lu | Yu Gao |
| [HDFS-4252](https://issues.apache.org/jira/browse/HDFS-4252) | Improve confusing log message that prints exception when editlog read is completed |  Major | namenode | Suresh Srinivas | Jing Zhao |
| [MAPREDUCE-4397](https://issues.apache.org/jira/browse/MAPREDUCE-4397) | Introduce HADOOP\_SECURITY\_CONF\_DIR for task-controller |  Major | task-controller | Luke Lu | Yu Gao |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8419](https://issues.apache.org/jira/browse/HADOOP-8419) | GzipCodec NPE upon reset with IBM JDK |  Major | io | Luke Lu | Yu Li |
| [HADOOP-8418](https://issues.apache.org/jira/browse/HADOOP-8418) | Fix UGI for IBM JDK running on Windows |  Major | security | Luke Lu | Yu Gao |
| [HDFS-4423](https://issues.apache.org/jira/browse/HDFS-4423) | Checkpoint exception causes fatal damage to fsimage. |  Blocker | namenode | ChenFolin | Chris Nauroth |
| [HDFS-4208](https://issues.apache.org/jira/browse/HDFS-4208) | NameNode could be stuck in SafeMode due to never-created blocks |  Critical | namenode | Brandon Li | Brandon Li |
| [HDFS-3727](https://issues.apache.org/jira/browse/HDFS-3727) | When using SPNEGO, NN should not try to log in using KSSL principal |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [MAPREDUCE-4888](https://issues.apache.org/jira/browse/MAPREDUCE-4888) | NLineInputFormat drops data in 1.1 and beyond |  Blocker | mrv1 | Robert Joseph Evans | Vinod Kumar Vavilapalli |
| [MAPREDUCE-4798](https://issues.apache.org/jira/browse/MAPREDUCE-4798) | TestJobHistoryServer fails some times with 'java.lang.AssertionError: Address already in use' |  Minor | jobhistoryserver, test | sam liu | sam liu |
| [MAPREDUCE-4396](https://issues.apache.org/jira/browse/MAPREDUCE-4396) | Make LocalJobRunner work with private distributed cache |  Minor | client | Luke Lu | Yu Gao |
| [MAPREDUCE-4272](https://issues.apache.org/jira/browse/MAPREDUCE-4272) | SortedRanges.Range#compareTo is not spec compliant |  Major | task | Luke Lu | Yu Gao |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9051](https://issues.apache.org/jira/browse/HADOOP-9051) | “ant test” will build failed for  trying to delete a file |  Minor | test | meng gong | Luke Lu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


