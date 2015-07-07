# Apache Hadoop Changelog

## Release 0.20.3 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6701](https://issues.apache.org/jira/browse/HADOOP-6701) |  Incorrect exit codes for "dfs -chown", "dfs -chgrp" |  Minor | fs | Ravi Phulari | Ravi Phulari |
| [HADOOP-6382](https://issues.apache.org/jira/browse/HADOOP-6382) | publish hadoop jars to apache mvn repo. |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HDFS-132](https://issues.apache.org/jira/browse/HDFS-132) | Namenode in Safemode reports to Simon non-zero number of deleted files during startup |  Minor | namenode | Hairong Kuang | Suresh Srinivas |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6382](https://issues.apache.org/jira/browse/HADOOP-6382) | publish hadoop jars to apache mvn repo. |  Major | build | Giridharan Kesavan | Giridharan Kesavan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-1832](https://issues.apache.org/jira/browse/MAPREDUCE-1832) | Support for file sizes less than 1MB in DFSIO benchmark. |  Major | benchmarks | Konstantin Shvachko | Konstantin Shvachko |
| [MAPREDUCE-1734](https://issues.apache.org/jira/browse/MAPREDUCE-1734) | Un-deprecate the old MapReduce API in the 0.20 branch |  Blocker | documentation | Tom White | Todd Lipcon |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-7116](https://issues.apache.org/jira/browse/HADOOP-7116) | raise contrib junit test jvm memory size to 512mb |  Major | test | Owen O'Malley | Owen O'Malley |
| [HADOOP-6928](https://issues.apache.org/jira/browse/HADOOP-6928) | Fix BooleanWritable comparator in 0.20 |  Major | io | Owen O'Malley | Johannes Zillmann |
| [HADOOP-6923](https://issues.apache.org/jira/browse/HADOOP-6923) | Native Libraries do not load if a different platform signature is returned from org.apache.hadoop.util.PlatformName |  Major | native | Stephen Watt | Stephen Watt |
| [HADOOP-6724](https://issues.apache.org/jira/browse/HADOOP-6724) | IPC doesn't properly handle IOEs thrown by socket factory |  Major | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-6702](https://issues.apache.org/jira/browse/HADOOP-6702) | Incorrect exit codes for "dfs -chown", "dfs -chgrp"  when input is given in wildcard format. |  Minor | fs | Ravi Phulari | Ravi Phulari |
| [HADOOP-6701](https://issues.apache.org/jira/browse/HADOOP-6701) |  Incorrect exit codes for "dfs -chown", "dfs -chgrp" |  Minor | fs | Ravi Phulari | Ravi Phulari |
| [HDFS-1836](https://issues.apache.org/jira/browse/HDFS-1836) | Thousand of CLOSE\_WAIT socket |  Major | hdfs-client | Dennis Cheung | Bharath Mundlapudi |
| [HDFS-1404](https://issues.apache.org/jira/browse/HDFS-1404) | TestNodeCount logic incorrect in branch-0.20 |  Minor | namenode, test | Todd Lipcon | Todd Lipcon |
| [HDFS-1377](https://issues.apache.org/jira/browse/HDFS-1377) | Quota bug for partial blocks allows quotas to be violated |  Blocker | namenode | Eli Collins | Eli Collins |
| [HDFS-1258](https://issues.apache.org/jira/browse/HDFS-1258) | Clearing namespace quota on "/" corrupts FS image |  Blocker | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-1240](https://issues.apache.org/jira/browse/HDFS-1240) | TestDFSShell failing in branch-20 |  Critical | test | Todd Lipcon | Todd Lipcon |
| [HDFS-1041](https://issues.apache.org/jira/browse/HDFS-1041) | DFSClient does not retry in getFileChecksum(..) |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-955](https://issues.apache.org/jira/browse/HDFS-955) | FSImage.saveFSImage can lose edits |  Blocker | namenode | Todd Lipcon | Konstantin Shvachko |
| [HDFS-909](https://issues.apache.org/jira/browse/HDFS-909) | Race condition between rollEditLog or rollFSImage ant FSEditsLog.write operations  corrupts edits log |  Blocker | namenode | Cosmin Lehene | Todd Lipcon |
| [HDFS-908](https://issues.apache.org/jira/browse/HDFS-908) | TestDistributedFileSystem fails with Wrong FS on weird hosts |  Minor | test | Todd Lipcon | Todd Lipcon |
| [HDFS-727](https://issues.apache.org/jira/browse/HDFS-727) | bug setting block size hdfsOpenFile |  Blocker | libhdfs | Eli Collins | Eli Collins |
| [HDFS-132](https://issues.apache.org/jira/browse/HDFS-132) | Namenode in Safemode reports to Simon non-zero number of deleted files during startup |  Minor | namenode | Hairong Kuang | Suresh Srinivas |
| [MAPREDUCE-2262](https://issues.apache.org/jira/browse/MAPREDUCE-2262) | Capacity Scheduler unit tests fail with class not found |  Major | capacity-sched | Owen O'Malley | Owen O'Malley |
| [MAPREDUCE-1880](https://issues.apache.org/jira/browse/MAPREDUCE-1880) | "java.lang.ArithmeticException: Non-terminating decimal expansion; no exact representable decimal result." while running "hadoop jar hadoop-0.20.1+169.89-examples.jar pi 4 30" |  Minor | examples | Victor Pakhomov | Tsz Wo Nicholas Sze |
| [MAPREDUCE-1407](https://issues.apache.org/jira/browse/MAPREDUCE-1407) | Invalid example in the documentation of org.apache.hadoop.mapreduce.{Mapper,Reducer} |  Trivial | documentation | Benoit Sigoure | Benoit Sigoure |
| [MAPREDUCE-1372](https://issues.apache.org/jira/browse/MAPREDUCE-1372) | ConcurrentModificationException in JobInProgress |  Blocker | jobtracker | Amareshwari Sriramadasu | Dick King |
| [MAPREDUCE-118](https://issues.apache.org/jira/browse/MAPREDUCE-118) | Job.getJobID() will always return null |  Blocker | client | Amar Kamat | Amareshwari Sriramadasu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6637](https://issues.apache.org/jira/browse/HADOOP-6637) | Benchmark overhead of RPC session establishment |  Major | benchmarks | Konstantin Shvachko | Konstantin Shvachko |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-7372](https://issues.apache.org/jira/browse/HADOOP-7372) | Remove ref of 20.3 release from branch-0.20 CHANGES.txt |  Major | documentation | Eli Collins | Eli Collins |
| [HDFS-1286](https://issues.apache.org/jira/browse/HDFS-1286) | Dry entropy pool on Hudson boxes causing test timeouts |  Major | test | Todd Lipcon | Konstantin Boudnik |


