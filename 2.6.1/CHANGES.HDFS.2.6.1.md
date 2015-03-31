# Hadoop Changelog

## Release 2.6.1 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7733](https://issues.apache.org/jira/browse/HDFS-7733) | NFS: readdir/readdirplus return null directory attribute on failure |  Major | nfs | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7503](https://issues.apache.org/jira/browse/HDFS-7503) | Namenode restart after large deletions can cause slow processReport (due to logging) |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7489](https://issues.apache.org/jira/browse/HDFS-7489) | Incorrect locking in FsVolumeList#checkDirs can hang datanodes |  Critical | datanode | Noah Lorang | Noah Lorang |
| [HDFS-7443](https://issues.apache.org/jira/browse/HDFS-7443) | Datanode upgrade to BLOCKID\_BASED\_LAYOUT fails if duplicate block files are present in the same volume |  Blocker | . | Kihwal Lee | Colin Patrick McCabe |
| [HDFS-7425](https://issues.apache.org/jira/browse/HDFS-7425) | NameNode block deletion logging uses incorrect appender. |  Minor | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-4882](https://issues.apache.org/jira/browse/HDFS-4882) | Prevent the Namenode's LeaseManager from looping forever in checkLeases |  Critical | hdfs-client, namenode | Zesheng Wu | Ravi Prakash |
| [HDFS-3443](https://issues.apache.org/jira/browse/HDFS-3443) | Fix NPE when namenode transition to active during startup by adding checkNNStartup() in NameNodeRpcServer |  Major | auto-failover, ha | suja s | Vinayakumar B |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


