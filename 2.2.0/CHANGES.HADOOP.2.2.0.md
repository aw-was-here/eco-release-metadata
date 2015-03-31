# Hadoop Changelog

## Release 2.2.0 - 2013-10-15

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10020](https://issues.apache.org/jira/browse/HADOOP-10020) | disable symlinks temporarily |  Blocker | fs | Colin Patrick McCabe | Sanjay Radia |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9758](https://issues.apache.org/jira/browse/HADOOP-9758) | Provide configuration option for FileSystem/FileContext symlink resolution |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-8315](https://issues.apache.org/jira/browse/HADOOP-8315) | Support SASL-authenticated ZooKeeper in ActiveStandbyElector |  Major | auto-failover, ha | Todd Lipcon | Todd Lipcon |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10012](https://issues.apache.org/jira/browse/HADOOP-10012) | Secure Oozie jobs fail with delegation token renewal exception in Namenode HA setup |  Blocker | ha | Arpit Gupta | Suresh Srinivas |
| [HADOOP-10003](https://issues.apache.org/jira/browse/HADOOP-10003) | HarFileSystem.listLocatedStatus() fails |  Major | fs | Jason Dere |  |
| [HADOOP-9976](https://issues.apache.org/jira/browse/HADOOP-9976) | Different versions of avro and avro-maven-plugin |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9776](https://issues.apache.org/jira/browse/HADOOP-9776) | HarFileSystem.listStatus() returns invalid authority if port number is empty |  Major | fs | shanyu zhao | shanyu zhao |
| [HADOOP-9761](https://issues.apache.org/jira/browse/HADOOP-9761) | ViewFileSystem#rename fails when using DistributedFileSystem |  Blocker | viewfs | Andrew Wang | Andrew Wang |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9948](https://issues.apache.org/jira/browse/HADOOP-9948) | Add a config value to CLITestHelper to skip tests on Windows |  Minor | test | Chuan Liu | Chuan Liu |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10017](https://issues.apache.org/jira/browse/HADOOP-10017) | Fix NPE in DFSClient#getDelegationToken when doing Distcp from a secured cluster to an insecured cluster |  Major | . | Jing Zhao | Haohui Mai |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


