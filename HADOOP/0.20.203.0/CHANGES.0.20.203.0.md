# Apache Hadoop Changelog

## Release 0.20.203.0 - 2011-05-11

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-1626](https://issues.apache.org/jira/browse/HDFS-1626) | Make BLOCK\_INVALIDATE\_LIMIT configurable |  Minor | namenode | Arun C Murthy | Tsz Wo Nicholas Sze |
| [HDFS-457](https://issues.apache.org/jira/browse/HDFS-457) | better handling of volume failure in Data Node storage |  Major | datanode | Boris Shkolnik | Boris Shkolnik |
| [MAPREDUCE-2355](https://issues.apache.org/jira/browse/MAPREDUCE-2355) | Add an out of band heartbeat damper |  Major | jobtracker | Owen O'Malley | Arun C Murthy |
| [MAPREDUCE-2316](https://issues.apache.org/jira/browse/MAPREDUCE-2316) | Update docs for CapacityScheduler |  Major | capacity-sched, documentation | Arun C Murthy | Arun C Murthy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-7259](https://issues.apache.org/jira/browse/HADOOP-7259) | contrib modules should include build.properties from parent. |  Major | build | Owen O'Malley | Owen O'Malley |
| [HADOOP-7232](https://issues.apache.org/jira/browse/HADOOP-7232) | Fix javadoc warnings |  Blocker | documentation | Owen O'Malley | Owen O'Malley |
| [HADOOP-7215](https://issues.apache.org/jira/browse/HADOOP-7215) | RPC clients must connect over a network interface corresponding to the host name in the client's kerberos principal key |  Blocker | security | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7190](https://issues.apache.org/jira/browse/HADOOP-7190) | Put metrics v1 back into the hadoop-20-security branch |  Major | metrics | Owen O'Malley | Owen O'Malley |
| [HADOOP-7163](https://issues.apache.org/jira/browse/HADOOP-7163) | "java.net.SocketTimeoutException: 60000 millis timeout" happens a lot |  Major | ipc | Owen O'Malley | Devaraj Das |
| [HADOOP-7143](https://issues.apache.org/jira/browse/HADOOP-7143) | Hive Hadoop20SShims depends on removed HadoopArchives |  Major | fs | Joep Rottinghuis | Joep Rottinghuis |
| [HADOOP-6907](https://issues.apache.org/jira/browse/HADOOP-6907) | Rpc client doesn't use the per-connection conf to figure out server's Kerberos principal |  Major | ipc, security | Kan Zhang | Kan Zhang |
| [HADOOP-5647](https://issues.apache.org/jira/browse/HADOOP-5647) | TestJobHistory fails if /tmp/\_logs is not writable to. Testcase should not depend on /tmp |  Major | test | Ravi Gummadi | Ravi Gummadi |
| [HDFS-1822](https://issues.apache.org/jira/browse/HDFS-1822) | Editlog opcodes overlap between 20 security and later releases |  Blocker | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-1022](https://issues.apache.org/jira/browse/HDFS-1022) | Merge under-10-min tests specs into one file |  Major | test | Erik Steffl | Erik Steffl |
| [MAPREDUCE-2278](https://issues.apache.org/jira/browse/MAPREDUCE-2278) | DistributedCache shouldn't hold a ref to JobConf |  Major | distributed-cache, tasktracker | Arun C Murthy | Chris Douglas |
| [MAPREDUCE-1699](https://issues.apache.org/jira/browse/MAPREDUCE-1699) | JobHistory shouldn't be disabled for any reason |  Major | jobtracker | Arun C Murthy | Krishna Ramachandran |
| [MAPREDUCE-1233](https://issues.apache.org/jira/browse/MAPREDUCE-1233) | Incorrect Waiting maps/reduces in Jobtracker metrics |  Major | jobtracker | V.Karthikeyan | Luke Lu |
| [MAPREDUCE-1118](https://issues.apache.org/jira/browse/MAPREDUCE-1118) | Capacity Scheduler scheduling information is hard to read / should be tabular format |  Major | capacity-sched | Allen Wittenauer | Krishna Ramachandran |
| [MAPREDUCE-323](https://issues.apache.org/jira/browse/MAPREDUCE-323) | Improve the way job history files are managed |  Critical | jobtracker | Amar Kamat | Dick King |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


