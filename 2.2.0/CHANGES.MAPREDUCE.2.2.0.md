# Hadoop Changelog

## Release 2.2.0 - 2013-10-15

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
| [MAPREDUCE-5554](https://issues.apache.org/jira/browse/MAPREDUCE-5554) | hdfs-site.xml included in hadoop-mapreduce-client-jobclient tests jar is breaking tests for downstream components |  Minor | test | Robert Kanter | Robert Kanter |
| [MAPREDUCE-5545](https://issues.apache.org/jira/browse/MAPREDUCE-5545) | org.apache.hadoop.mapred.TestTaskAttemptListenerImpl.testCommitWindow times out |  Major | . | Robert Kanter | Robert Kanter |
| [MAPREDUCE-5544](https://issues.apache.org/jira/browse/MAPREDUCE-5544) | JobClient#getJob loads job conf twice |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5536](https://issues.apache.org/jira/browse/MAPREDUCE-5536) | mapreduce.jobhistory.webapp.https.address property is not respected |  Blocker | . | Yesha Vora | Omkar Vinit Joshi |
| [MAPREDUCE-5533](https://issues.apache.org/jira/browse/MAPREDUCE-5533) | Speculative execution does not function for reduce |  Major | applicationmaster | Tassapol Athiapinya | Xuan Gong |
| [MAPREDUCE-5523](https://issues.apache.org/jira/browse/MAPREDUCE-5523) | Need to add https port related property in Job history server |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [MAPREDUCE-5515](https://issues.apache.org/jira/browse/MAPREDUCE-5515) | Application Manager UI does not appear with Https enabled |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [MAPREDUCE-5513](https://issues.apache.org/jira/browse/MAPREDUCE-5513) | ConcurrentModificationException in JobControl |  Major | . | Jason Lowe | Robert Parker |
| [MAPREDUCE-5503](https://issues.apache.org/jira/browse/MAPREDUCE-5503) | TestMRJobClient.testJobClient is failing |  Blocker | mrv2 | Jason Lowe | Jian He |
| [MAPREDUCE-5489](https://issues.apache.org/jira/browse/MAPREDUCE-5489) | MR jobs hangs as it does not use the node-blacklisting feature in RM requests |  Critical | . | Yesha Vora | Zhijie Shen |
| [MAPREDUCE-5488](https://issues.apache.org/jira/browse/MAPREDUCE-5488) | Job recovery fails after killing all the running containers for the app |  Major | . | Arpit Gupta | Jian He |
| [MAPREDUCE-5459](https://issues.apache.org/jira/browse/MAPREDUCE-5459) | Update the doc of running MRv1 examples jar on YARN |  Major | . | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-5442](https://issues.apache.org/jira/browse/MAPREDUCE-5442) | $HADOOP\_MAPRED\_HOME/$HADOOP\_CONF\_DIR setting not working on Windows |  Major | client | Yingda Chen | Yingda Chen |
| [MAPREDUCE-5170](https://issues.apache.org/jira/browse/MAPREDUCE-5170) | incorrect exception message if min node size \> min rack size |  Trivial | mrv2 | Sangjin Lee | Sangjin Lee |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5525](https://issues.apache.org/jira/browse/MAPREDUCE-5525) | Increase timeout of TestDFSIO.testAppend and TestMRJobsWithHistoryService.testJobHistoryData |  Minor | mrv2, test | Chuan Liu | Chuan Liu |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5562](https://issues.apache.org/jira/browse/MAPREDUCE-5562) | MR AM should exit when unregister() throws exception |  Major | . | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-5551](https://issues.apache.org/jira/browse/MAPREDUCE-5551) | Binary Incompatibility of O.A.H.U.mapred.SequenceFileAsBinaryOutputFormat.WritableValueBytes |  Blocker | . | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-5538](https://issues.apache.org/jira/browse/MAPREDUCE-5538) | MRAppMaster#shutDownJob shouldn't send job end notification before checking isLastRetry |  Blocker | . | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-5531](https://issues.apache.org/jira/browse/MAPREDUCE-5531) | Binary and source incompatibility in mapreduce.TaskID and mapreduce.TaskAttemptID between branch-1 and branch-2 |  Blocker | mrv1, mrv2 | Robert Kanter | Robert Kanter |
| [MAPREDUCE-5530](https://issues.apache.org/jira/browse/MAPREDUCE-5530) | Binary and source incompatibility in mapred.lib.CombineFileInputFormat between branch-1 and branch-2 |  Blocker | mrv1, mrv2 | Robert Kanter | Robert Kanter |
| [MAPREDUCE-5529](https://issues.apache.org/jira/browse/MAPREDUCE-5529) | Binary incompatibilities in mapred.lib.TotalOrderPartitioner between branch-1 and branch-2 |  Blocker | mrv1, mrv2 | Robert Kanter | Robert Kanter |
| [MAPREDUCE-5505](https://issues.apache.org/jira/browse/MAPREDUCE-5505) | Clients should be notified job finished only after job successfully unregistered |  Critical | . | Jian He | Zhijie Shen |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


