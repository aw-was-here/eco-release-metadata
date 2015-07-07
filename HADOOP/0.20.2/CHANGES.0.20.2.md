# Apache Hadoop Changelog

## Release 0.20.2 - 2010-02-16

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-793](https://issues.apache.org/jira/browse/HDFS-793) | DataNode should first receive the whole packet ack message before it constructs and sends its own ack message for the packet |  Blocker | datanode | Hairong Kuang | Hairong Kuang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-1849](https://issues.apache.org/jira/browse/HADOOP-1849) | IPC server max queue size should be configurable |  Major | ipc | Raghu Angadi | Konstantin Shvachko |
| [MAPREDUCE-623](https://issues.apache.org/jira/browse/MAPREDUCE-623) | Resolve javac warnings in mapred |  Major | build | Jothi Padmanabhan | Jothi Padmanabhan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6524](https://issues.apache.org/jira/browse/HADOOP-6524) | Contrib tests are failing Clover'ed build |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6506](https://issues.apache.org/jira/browse/HADOOP-6506) | Failing tests prevent the rest of test targets from execution. |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6498](https://issues.apache.org/jira/browse/HADOOP-6498) | IPC client  bug may cause rpc call hang |  Blocker | ipc | Ruyue Ma | Ruyue Ma |
| [HADOOP-6315](https://issues.apache.org/jira/browse/HADOOP-6315) | GzipCodec should not represent BuiltInZlibInflater as decompressorType |  Major | io | Aaron Kimball | Aaron Kimball |
| [HADOOP-6269](https://issues.apache.org/jira/browse/HADOOP-6269) | Missing synchronization for defaultResources in Configuration.addResource |  Major | conf | Todd Lipcon | Sreekanth Ramakrishnan |
| [HADOOP-6231](https://issues.apache.org/jira/browse/HADOOP-6231) | Allow caching of filesystem instances to be disabled on a per-instance basis |  Major | fs | Tom White | Ben Slusky |
| [HADOOP-6097](https://issues.apache.org/jira/browse/HADOOP-6097) | Multiple bugs w/ Hadoop archives |  Major | fs | Ben Slusky | Ben Slusky |
| [HADOOP-5612](https://issues.apache.org/jira/browse/HADOOP-5612) | Some c++ scripts are not chmodded before ant execution |  Major | build | Todd Lipcon | Todd Lipcon |
| [HDFS-927](https://issues.apache.org/jira/browse/HDFS-927) | DFSInputStream retries too many times for new block locations |  Critical | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-872](https://issues.apache.org/jira/browse/HDFS-872) | DFSClient 0.20.1 is incompatible with HDFS 0.20.2 |  Major | datanode, hdfs-client | Bassam Tabbara | Todd Lipcon |
| [HDFS-793](https://issues.apache.org/jira/browse/HDFS-793) | DataNode should first receive the whole packet ack message before it constructs and sends its own ack message for the packet |  Blocker | datanode | Hairong Kuang | Hairong Kuang |
| [HDFS-781](https://issues.apache.org/jira/browse/HDFS-781) | Metrics PendingDeletionBlocks is not decremented |  Blocker | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-761](https://issues.apache.org/jira/browse/HDFS-761) | Failure to process rename operation from edits log due to quota verification |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-732](https://issues.apache.org/jira/browse/HDFS-732) | HDFS files are ending up truncated |  Blocker | hdfs-client | Christian Kunz | Tsz Wo Nicholas Sze |
| [HDFS-677](https://issues.apache.org/jira/browse/HDFS-677) | Rename failure due to quota results in deletion of src directory |  Blocker | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-596](https://issues.apache.org/jira/browse/HDFS-596) | Memory leak in libhdfs: hdfsFreeFileInfo() in libhdfs does not free memory for mOwner and mGroup |  Blocker | fuse-dfs | Zhang Bingjun | Zhang Bingjun |
| [HDFS-579](https://issues.apache.org/jira/browse/HDFS-579) | HADOOP-3792 update of DfsTask incomplete |  Major | hdfs-client | Christian Kunz | Christian Kunz |
| [HDFS-187](https://issues.apache.org/jira/browse/HDFS-187) | TestStartup fails if hdfs is running in the same machine |  Major | test | Tsz Wo Nicholas Sze | Todd Lipcon |
| [HDFS-101](https://issues.apache.org/jira/browse/HDFS-101) | DFS write pipeline : DFSClient sometimes does not detect second datanode failure |  Blocker | datanode | Raghu Angadi | Hairong Kuang |
| [MAPREDUCE-1068](https://issues.apache.org/jira/browse/MAPREDUCE-1068) | In hadoop-0.20.0 streaming job do not throw proper verbose error message if file is not present |  Major | contrib/streaming | Peeyush Bishnoi | Amareshwari Sriramadasu |
| [MAPREDUCE-1010](https://issues.apache.org/jira/browse/MAPREDUCE-1010) | Adding tests for changes in archives. |  Minor | harchive | Mahadev konar | Mahadev konar |
| [MAPREDUCE-979](https://issues.apache.org/jira/browse/MAPREDUCE-979) | JobConf.getMemoryFor{Map\|Reduce}Task doesn't fallback to newer config knobs when mapred.taskmaxvmem is set to DISABLED\_MEMORY\_LIMIT of -1 |  Blocker | jobtracker, tasktracker | Arun C Murthy | Sreekanth Ramakrishnan |
| [MAPREDUCE-826](https://issues.apache.org/jira/browse/MAPREDUCE-826) | harchive doesn't use ToolRunner / harchive returns 0 even if the job fails with exception |  Trivial | harchive | Koji Noguchi | Koji Noguchi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-907](https://issues.apache.org/jira/browse/HDFS-907) | Add  tests for getBlockLocations and totalLoad metrics. |  Minor | namenode | Ravi Phulari | Ravi Phulari |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


