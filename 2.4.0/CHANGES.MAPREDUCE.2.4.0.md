# Hadoop Changelog

## Release 2.4.0 - 2014-04-07

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5773](https://issues.apache.org/jira/browse/MAPREDUCE-5773) | Provide dedicated MRAppMaster syslog length limit |  Blocker | mr-am | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5761](https://issues.apache.org/jira/browse/MAPREDUCE-5761) | Add a log message like "encrypted shuffle is ON" in nodemanager logs |  Trivial | . | Yesha Vora | Jian He |
| [MAPREDUCE-5754](https://issues.apache.org/jira/browse/MAPREDUCE-5754) | Preserve Job diagnostics in history |  Major | jobhistoryserver, mr-am | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5732](https://issues.apache.org/jira/browse/MAPREDUCE-5732) | Report proper queue when job has been automatically placed |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5553](https://issues.apache.org/jira/browse/MAPREDUCE-5553) | Add task state filters on Application/MRJob page for MR Application master |  Minor | applicationmaster | Paul Han | Paul Han |
| [MAPREDUCE-2349](https://issues.apache.org/jira/browse/MAPREDUCE-2349) | speed up list[located]status calls from input formats |  Major | task | Joydeep Sen Sarma | Siddharth Seth |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5813](https://issues.apache.org/jira/browse/MAPREDUCE-5813) | YarnChild does not load job.xml with mapreduce.job.classloader=true |  Blocker | mrv2, task | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5810](https://issues.apache.org/jira/browse/MAPREDUCE-5810) | TestStreamingTaskLog#testStreamingTaskLogWithHadoopCmd is failing |  Major | contrib/streaming | Mit Desai | Akira AJISAKA |
| [MAPREDUCE-5806](https://issues.apache.org/jira/browse/MAPREDUCE-5806) | Log4j settings in container-log4j.properties cannot be overridden |  Major | . | Eugene Koifman | Varun Vasudev |
| [MAPREDUCE-5805](https://issues.apache.org/jira/browse/MAPREDUCE-5805) | Unable to parse launch time from job history file |  Major | jobhistoryserver | Fengdong Yu | Akira AJISAKA |
| [MAPREDUCE-5795](https://issues.apache.org/jira/browse/MAPREDUCE-5795) | Job should be marked as Failed if it is recovered from commit. |  Major | . | Yesha Vora | Xuan Gong |
| [MAPREDUCE-5794](https://issues.apache.org/jira/browse/MAPREDUCE-5794) | SliveMapper always uses default FileSystem. |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-5791](https://issues.apache.org/jira/browse/MAPREDUCE-5791) | Shuffle phase is slow in Windows - FadviseFileRegion::transferTo does not read disks efficiently |  Major | client | Nikola Vujic | Nikola Vujic |
| [MAPREDUCE-5789](https://issues.apache.org/jira/browse/MAPREDUCE-5789) | Average Reduce time is incorrect on Job Overview page |  Major | jobhistoryserver, webapps | Rushabh S Shah | Rushabh S Shah |
| [MAPREDUCE-5780](https://issues.apache.org/jira/browse/MAPREDUCE-5780) | SliveTest always uses default FileSystem |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-5778](https://issues.apache.org/jira/browse/MAPREDUCE-5778) | JobSummary does not escape newlines in the job name |  Major | jobhistoryserver | Jason Lowe | Akira AJISAKA |
| [MAPREDUCE-5770](https://issues.apache.org/jira/browse/MAPREDUCE-5770) | Redirection from AM-URL is broken with HTTPS\_ONLY policy |  Major | . | Yesha Vora | Jian He |
| [MAPREDUCE-5769](https://issues.apache.org/jira/browse/MAPREDUCE-5769) | Unregistration to RM should not be called if AM is crashed before registering with RM |  Major | . | Rohith | Rohith |
| [MAPREDUCE-5768](https://issues.apache.org/jira/browse/MAPREDUCE-5768) | TestMRJobs.testContainerRollingLog fails on trunk |  Major | . | Zhijie Shen | Gera Shegalov |
| [MAPREDUCE-5766](https://issues.apache.org/jira/browse/MAPREDUCE-5766) | Ping messages from attempts should be moved to DEBUG |  Minor | applicationmaster | Ramya Sunil | Jian He |
| [MAPREDUCE-5757](https://issues.apache.org/jira/browse/MAPREDUCE-5757) | ConcurrentModificationException in JobControl.toList |  Major | client | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5751](https://issues.apache.org/jira/browse/MAPREDUCE-5751) | MR app master fails to start in some cases if mapreduce.job.classloader is true |  Major | . | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-5746](https://issues.apache.org/jira/browse/MAPREDUCE-5746) | Job diagnostics can implicate wrong task for a failed job |  Major | jobhistoryserver | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5699](https://issues.apache.org/jira/browse/MAPREDUCE-5699) | Allow setting tags on MR jobs |  Major | applicationmaster | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-5688](https://issues.apache.org/jira/browse/MAPREDUCE-5688) | TestStagingCleanup fails intermittently with JDK7 |  Major | . | Mit Desai | Mit Desai |
| [MAPREDUCE-5670](https://issues.apache.org/jira/browse/MAPREDUCE-5670) | CombineFileRecordReader should report progress when moving to the next file |  Minor | mrv2 | Jason Lowe | Chen He |
| [MAPREDUCE-5570](https://issues.apache.org/jira/browse/MAPREDUCE-5570) | Map task attempt with fetch failure has incorrect attempt finish time |  Major | mr-am, mrv2 | Jason Lowe | Rushabh S Shah |
| [MAPREDUCE-5028](https://issues.apache.org/jira/browse/MAPREDUCE-5028) | Maps fail when io.sort.mb is set to high value |  Critical | . | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-4052](https://issues.apache.org/jira/browse/MAPREDUCE-4052) | Windows eclipse cannot submit job from Windows client to Linux/Unix Hadoop cluster. |  Major | job submission | xieguiming | Jian He |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5787](https://issues.apache.org/jira/browse/MAPREDUCE-5787) | Modify ShuffleHandler to support Keep-Alive |  Critical | nodemanager | Rajesh Balamohan | Rajesh Balamohan |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


