# Apache Hadoop Changelog

## Release 0.23.11 - 2014-06-25

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6191](https://issues.apache.org/jira/browse/HDFS-6191) | Disable quota checks when replaying edit log. |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-5637](https://issues.apache.org/jira/browse/HDFS-5637) | try to refeatchToken while local read InvalidToken occurred |  Major | hdfs-client, security | Liang Xie | Liang Xie |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10146](https://issues.apache.org/jira/browse/HADOOP-10146) | Workaround JDK7 Process fd close bug |  Critical | util | Daryn Sharp | Daryn Sharp |
| [HADOOP-10129](https://issues.apache.org/jira/browse/HADOOP-10129) | Distcp may succeed when it fails |  Critical | tools/distcp | Daryn Sharp | Daryn Sharp |
| [HADOOP-10112](https://issues.apache.org/jira/browse/HADOOP-10112) | har file listing  doesn't work with wild card |  Major | tools | Brandon Li | Brandon Li |
| [HADOOP-10110](https://issues.apache.org/jira/browse/HADOOP-10110) | hadoop-auth has a build break due to missing dependency |  Blocker | build | Chuan Liu | Chuan Liu |
| [HADOOP-10081](https://issues.apache.org/jira/browse/HADOOP-10081) | Client.setupIOStreams can leak socket resources on exception or error |  Critical | ipc | Jason Lowe | Tsuyoshi Ozawa |
| [HADOOP-9230](https://issues.apache.org/jira/browse/HADOOP-9230) | TestUniformSizeInputFormat fails intermittently |  Major | test | Karthik Kambatla | Karthik Kambatla |
| [HDFS-6166](https://issues.apache.org/jira/browse/HDFS-6166) | revisit balancer so\_timeout |  Blocker | balancer & mover | Nathan Roberts | Nathan Roberts |
| [HDFS-5806](https://issues.apache.org/jira/browse/HDFS-5806) | balancer should set SoTimeout to avoid indefinite hangs |  Major | balancer & mover | Nathan Roberts | Nathan Roberts |
| [HDFS-5728](https://issues.apache.org/jira/browse/HDFS-5728) | [Diskfull] Block recovery will fail if the metafile does not have crc for all chunks of the block |  Critical | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-4576](https://issues.apache.org/jira/browse/HDFS-4576) | Webhdfs authentication issues |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-5789](https://issues.apache.org/jira/browse/MAPREDUCE-5789) | Average Reduce time is incorrect on Job Overview page |  Major | jobhistoryserver, webapps | Rushabh S Shah | Rushabh S Shah |
| [MAPREDUCE-5778](https://issues.apache.org/jira/browse/MAPREDUCE-5778) | JobSummary does not escape newlines in the job name |  Major | jobhistoryserver | Jason Lowe | Akira AJISAKA |
| [MAPREDUCE-5757](https://issues.apache.org/jira/browse/MAPREDUCE-5757) | ConcurrentModificationException in JobControl.toList |  Major | client | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5746](https://issues.apache.org/jira/browse/MAPREDUCE-5746) | Job diagnostics can implicate wrong task for a failed job |  Major | jobhistoryserver | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5454](https://issues.apache.org/jira/browse/MAPREDUCE-5454) | TestDFSIO fails intermittently on JDK7 |  Major | test | Karthik Kambatla | Karthik Kambatla |
| [YARN-1592](https://issues.apache.org/jira/browse/YARN-1592) | CapacityScheduler tries to reserve more than a node's total memory on branch-0.23 |  Major | capacityscheduler | Thomas Graves | Thomas Graves |
| [YARN-1180](https://issues.apache.org/jira/browse/YARN-1180) | Update capacity scheduler docs to include types on the configs |  Trivial | capacityscheduler | Thomas Graves | Chen He |
| [YARN-853](https://issues.apache.org/jira/browse/YARN-853) | maximum-am-resource-percent doesn't work after refreshQueues command |  Major | capacityscheduler | Devaraj K | Devaraj K |
| [YARN-500](https://issues.apache.org/jira/browse/YARN-500) | ResourceManager webapp is using next port if configured port is already in use |  Major | resourcemanager | Nishan Shetty | Kenji Kikushima |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10148](https://issues.apache.org/jira/browse/HADOOP-10148) | backport hadoop-10107 to branch-0.23 |  Minor | ipc | Chen He | Chen He |
| [YARN-1575](https://issues.apache.org/jira/browse/YARN-1575) | Public localizer crashes with "Localized unkown resource" |  Critical | nodemanager | Jason Lowe | Jason Lowe |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


