# Apache Hadoop Changelog

## Release 0.19.1 - 2009-02-24

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-5225](https://issues.apache.org/jira/browse/HADOOP-5225) | workaround for tmp file handling on DataNodes in 0.19.1 (HADOOP-4663) |  Blocker | . | Nigel Daley | Raghu Angadi |
| [HADOOP-5224](https://issues.apache.org/jira/browse/HADOOP-5224) | Disable append |  Blocker | . | Nigel Daley |  |
| [HADOOP-4061](https://issues.apache.org/jira/browse/HADOOP-4061) | Large number of decommission freezes the Namenode |  Major | . | Koji Noguchi | Tsz Wo Nicholas Sze |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-5086](https://issues.apache.org/jira/browse/HADOOP-5086) | Trash URI semantics can be relaxed |  Minor | fs | Chris Douglas | Chris Douglas |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-5156](https://issues.apache.org/jira/browse/HADOOP-5156) | TestHeartbeatHandling uses MiniDFSCluster.getNamesystem() which does not exist in branch 0.20 |  Major | test | Konstantin Shvachko | Hairong Kuang |
| [HADOOP-5008](https://issues.apache.org/jira/browse/HADOOP-5008) | TestReplication#testPendingReplicationRetry leaves an opened fd unclosed |  Major | test | Hairong Kuang | Hairong Kuang |
| [HADOOP-4982](https://issues.apache.org/jira/browse/HADOOP-4982) | TestFsck does not run in Eclipse. |  Major | test | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-4965](https://issues.apache.org/jira/browse/HADOOP-4965) | DFSClient should log instead of printing into std err. |  Major | test | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-4918](https://issues.apache.org/jira/browse/HADOOP-4918) | Fix bzip2 work with SequenceFile |  Major | io | Zheng Shao | Zheng Shao |
| [HADOOP-4836](https://issues.apache.org/jira/browse/HADOOP-4836) | Minor typos in documentation and comments |  Trivial | documentation | Jordà Polo | Jordà Polo |
| [HADOOP-4821](https://issues.apache.org/jira/browse/HADOOP-4821) | Usage description in the Quotas guide documentations are incorrect |  Minor | documentation | Boris Shkolnik | Boris Shkolnik |
| [HADOOP-4797](https://issues.apache.org/jira/browse/HADOOP-4797) | RPC Server can leave a lot of direct buffers |  Blocker | ipc | Raghu Angadi | Raghu Angadi |
| [HADOOP-4760](https://issues.apache.org/jira/browse/HADOOP-4760) | HDFS streams should not throw exceptions when closed twice |  Major | fs, fs/s3 | Alejandro Abdelnur | Enis Soztutar |
| [HADOOP-4697](https://issues.apache.org/jira/browse/HADOOP-4697) | KFS::getBlockLocations() fails with files having multiple blocks |  Major | fs | Lohit Vijayarenu | Sriram Rao |
| [HADOOP-4508](https://issues.apache.org/jira/browse/HADOOP-4508) | FSDataOutputStream.getPos() == 0when appending to existing file and should be file length |  Major | fs | Pete Wyckoff | dhruba borthakur |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


