# Apache Hadoop Changelog

## Release 0.17.2 - 2008-08-11

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
| [HADOOP-4773](https://issues.apache.org/jira/browse/HADOOP-4773) | namenode startup error, hadoop-user-namenode.pid permission denied. |  Critical | . | Focus |  |
| [HADOOP-3931](https://issues.apache.org/jira/browse/HADOOP-3931) | Bug in MapTask.MapOutputBuffer.collect leads to an unnecessary and harmful 'reset' |  Blocker | . | Arun C Murthy | Chris Douglas |
| [HADOOP-3859](https://issues.apache.org/jira/browse/HADOOP-3859) | 1000  concurrent read on a single file failing  the task/client |  Blocker | . | Koji Noguchi | Johan Oskarsson |
| [HADOOP-3813](https://issues.apache.org/jira/browse/HADOOP-3813) | RPC queue overload of JobTracker |  Major | . | Christian Kunz | Amareshwari Sriramadasu |
| [HADOOP-3760](https://issues.apache.org/jira/browse/HADOOP-3760) | DFS operations fail because of Stream closed error |  Blocker | . | Amar Kamat | Lohit Vijayarenu |
| [HADOOP-3758](https://issues.apache.org/jira/browse/HADOOP-3758) | Excessive exceptions in HDFS namenode log file |  Blocker | . | Jim Huang | Lohit Vijayarenu |
| [HADOOP-3707](https://issues.apache.org/jira/browse/HADOOP-3707) | Frequent DiskOutOfSpaceException on almost-full datanodes |  Blocker | . | Koji Noguchi | Raghu Angadi |
| [HADOOP-3685](https://issues.apache.org/jira/browse/HADOOP-3685) | Unbalanced replication target |  Blocker | . | Koji Noguchi | Hairong Kuang |
| [HADOOP-3681](https://issues.apache.org/jira/browse/HADOOP-3681) | Infinite loop in dfs close |  Blocker | . | Koji Noguchi | Lohit Vijayarenu |
| [HADOOP-3678](https://issues.apache.org/jira/browse/HADOOP-3678) | Avoid spurious "DataXceiver: java.io.IOException: Connection reset by peer" errors in DataNode log |  Blocker | . | Raghu Angadi | Raghu Angadi |
| [HADOOP-3633](https://issues.apache.org/jira/browse/HADOOP-3633) | Uncaught exception in DataXceiveServer |  Blocker | . | Koji Noguchi | Konstantin Shvachko |
| [HADOOP-3370](https://issues.apache.org/jira/browse/HADOOP-3370) | failed tasks may stay forever in TaskTracker.runningJobs |  Critical | . | Zheng Shao | Zheng Shao |
| [HADOOP-3002](https://issues.apache.org/jira/browse/HADOOP-3002) | HDFS should not remove blocks while in safemode. |  Blocker | . | Konstantin Shvachko | Konstantin Shvachko |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


