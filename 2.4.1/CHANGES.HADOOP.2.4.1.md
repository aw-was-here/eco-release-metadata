# Hadoop Changelog

## Release 2.4.1 - 2014-06-30

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10466](https://issues.apache.org/jira/browse/HADOOP-10466) | Lower the log level in UserGroupInformation |  Minor | security | Nicolas Liochon | Nicolas Liochon |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11273](https://issues.apache.org/jira/browse/HADOOP-11273) | TestMiniKdc failure: login options not compatible with IBM JDK |  Major | test | Gao Zhong Liang | Gao Zhong Liang |
| [HADOOP-10612](https://issues.apache.org/jira/browse/HADOOP-10612) | NFS failed to refresh the user group id mapping table |  Major | nfs | Brandon Li | Brandon Li |
| [HADOOP-10562](https://issues.apache.org/jira/browse/HADOOP-10562) | Namenode exits on exception without printing stack trace in AbstractDelegationTokenSecretManager |  Critical | . | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-10527](https://issues.apache.org/jira/browse/HADOOP-10527) | Fix incorrect return code and allow more retries on EINTR |  Major | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-10522](https://issues.apache.org/jira/browse/HADOOP-10522) | JniBasedUnixGroupMapping mishandles errors |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-10490](https://issues.apache.org/jira/browse/HADOOP-10490) | TestMapFile and TestBloomMapFile leak file descriptors. |  Minor | test | Chris Nauroth | Chris Nauroth |
| [HADOOP-10473](https://issues.apache.org/jira/browse/HADOOP-10473) | TestCallQueueManager is still flaky |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-10456](https://issues.apache.org/jira/browse/HADOOP-10456) | Bug in Configuration.java exposed by Spark (ConcurrentModificationException) |  Major | conf | Nishkam Ravi | Nishkam Ravi |
| [HADOOP-10455](https://issues.apache.org/jira/browse/HADOOP-10455) | When there is an exception, ipc.Server should first check whether it is an terse exception |  Major | ipc | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-8826](https://issues.apache.org/jira/browse/HADOOP-8826) | Docs still refer to 0.20.205 as stable line |  Minor | . | Robert Joseph Evans | Mit Desai |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


