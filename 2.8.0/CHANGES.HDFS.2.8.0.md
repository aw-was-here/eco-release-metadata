# Hadoop Changelog

## Release 2.8.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7875](https://issues.apache.org/jira/browse/HDFS-7875) | Improve log message when wrong value configured for dfs.datanode.failed.volumes.tolerated |  Trivial | datanode | nijel | nijel |
| [HDFS-7835](https://issues.apache.org/jira/browse/HDFS-7835) | make initial sleeptime in locateFollowingBlock configurable for DFSClient. |  Major | dfsclient | zhihai xu | zhihai xu |
| [HDFS-7829](https://issues.apache.org/jira/browse/HDFS-7829) | Code clean up for LocatedBlock |  Minor | . | Jing Zhao | Takanobu Asanuma |
| [HDFS-2360](https://issues.apache.org/jira/browse/HDFS-2360) | Ugly stacktrace when quota exceeds |  Minor | hdfs-client | Rajit Saha | Harsh J |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7867](https://issues.apache.org/jira/browse/HDFS-7867) | Update action param from "start" to "prepare" in rolling upgrade javadoc |  Trivial | . | J.Andreina | J.Andreina |
| [HDFS-5356](https://issues.apache.org/jira/browse/HDFS-5356) | MiniDFSCluster shoud close all open FileSystems when shutdown() |  Critical | test | haosdent | Rakesh R |
| [HDFS-3325](https://issues.apache.org/jira/browse/HDFS-3325) | When configuring "dfs.namenode.safemode.threshold-pct" to a value greater or equal to 1 there is mismatch in the UI report |  Minor | . | J.Andreina | J.Andreina |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


