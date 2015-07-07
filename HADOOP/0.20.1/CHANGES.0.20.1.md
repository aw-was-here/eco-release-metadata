# Apache Hadoop Changelog

## Release 0.20.1 - 2009-09-01

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-5881](https://issues.apache.org/jira/browse/HADOOP-5881) | Simplify configuration related to task-memory-monitoring and memory-based scheduling |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-5726](https://issues.apache.org/jira/browse/HADOOP-5726) | Remove pre-emption from the capacity scheduler code base |  Major | . | Hemanth Yamijala | rahul k singh |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6080](https://issues.apache.org/jira/browse/HADOOP-6080) | Handling of  Trash with quota |  Major | fs | Koji Noguchi | Jakob Homan |
| [HADOOP-5714](https://issues.apache.org/jira/browse/HADOOP-5714) | Metric to show number of fs.exists (or number of getFileInfo) calls |  Minor | metrics | Koji Noguchi | Jakob Homan |
| [HADOOP-3315](https://issues.apache.org/jira/browse/HADOOP-3315) | New binary file format |  Major | io | Owen O'Malley | Hong Tang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-527](https://issues.apache.org/jira/browse/HDFS-527) | Refactor DFSClient constructors |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-767](https://issues.apache.org/jira/browse/MAPREDUCE-767) | to remove mapreduce dependency on commons-cli2 |  Major | contrib/streaming | Giridharan Kesavan | Amar Kamat |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6145](https://issues.apache.org/jira/browse/HADOOP-6145) | No error message for deleting non-existant file or directory. |  Major | fs | Suman Sehgal | Jakob Homan |
| [HADOOP-6141](https://issues.apache.org/jira/browse/HADOOP-6141) | hadoop 0.20 branch "test-patch" is broken |  Major | build | Hong Tang | Hong Tang |
| [HADOOP-5828](https://issues.apache.org/jira/browse/HADOOP-5828) | Use absolute path for JobTracker's mapred.local.dir in MiniMRCluster |  Major | test | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-5654](https://issues.apache.org/jira/browse/HADOOP-5654) | TestReplicationPolicy.\<init\> fails on java.net.BindException |  Major | test | Hairong Kuang | Hairong Kuang |
| [HADOOP-5648](https://issues.apache.org/jira/browse/HADOOP-5648) | Not able to generate gridmix.jar on already compiled version of hadoop |  Major | benchmarks | Suman Sehgal | Giridharan Kesavan |
| [HADOOP-5213](https://issues.apache.org/jira/browse/HADOOP-5213) | BZip2CompressionOutputStream NullPointerException |  Blocker | io | Zheng Shao | Zheng Shao |
| [HADOOP-4674](https://issues.apache.org/jira/browse/HADOOP-4674) | hadoop fs -help should list detailed help info for the following commands: test, text, tail, stat & touchz |  Trivial | fs | David NeSmith | Ravi Phulari |
| [HADOOP-4626](https://issues.apache.org/jira/browse/HADOOP-4626) | API link in forrest doc should point to the same version of hadoop. |  Minor | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-1022](https://issues.apache.org/jira/browse/HDFS-1022) | Merge under-10-min tests specs into one file |  Major | test | Erik Steffl | Erik Steffl |
| [HDFS-525](https://issues.apache.org/jira/browse/HDFS-525) | ListPathsServlet.java uses static SimpleDateFormat that has threading issues |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-167](https://issues.apache.org/jira/browse/HDFS-167) | DFSClient continues to retry indefinitely |  Minor | hdfs-client | Derek Wollenstein | Bill Zeller |
| [MAPREDUCE-924](https://issues.apache.org/jira/browse/MAPREDUCE-924) | TestPipes must not directly invoke 'main' of pipes as an exit from main could cause the testcase to crash. |  Major | pipes | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-911](https://issues.apache.org/jira/browse/MAPREDUCE-911) | TestTaskFail fail sometimes |  Major | test | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-838](https://issues.apache.org/jira/browse/MAPREDUCE-838) | Task succeeds even when committer.commitTask fails with IOException |  Blocker | task | Koji Noguchi | Amareshwari Sriramadasu |
| [MAPREDUCE-807](https://issues.apache.org/jira/browse/MAPREDUCE-807) | Stray user files in mapred.system.dir with permissions other than 777 can prevent the jobtracker from starting up. |  Blocker | jobtracker | Amar Kamat | Amar Kamat |
| [MAPREDUCE-796](https://issues.apache.org/jira/browse/MAPREDUCE-796) | Encountered "ClassCastException" on tasktracker while running wordcount with MultithreadedMapRunner |  Major | examples | Suman Sehgal | Amar Kamat |
| [MAPREDUCE-745](https://issues.apache.org/jira/browse/MAPREDUCE-745) | TestRecoveryManager fails sometimes |  Major | jobtracker | Amareshwari Sriramadasu | Amar Kamat |
| [MAPREDUCE-687](https://issues.apache.org/jira/browse/MAPREDUCE-687) | TestMiniMRMapRedDebugScript fails sometimes |  Major | test | Amar Kamat | Amareshwari Sriramadasu |
| [MAPREDUCE-657](https://issues.apache.org/jira/browse/MAPREDUCE-657) | CompletedJobStatusStore hardcodes filesystem to hdfs |  Major | jobtracker | Amar Kamat | Amar Kamat |
| [MAPREDUCE-565](https://issues.apache.org/jira/browse/MAPREDUCE-565) | Partitioner does not work with new API |  Blocker | task | Jothi Padmanabhan | Owen O'Malley |
| [MAPREDUCE-421](https://issues.apache.org/jira/browse/MAPREDUCE-421) | mapred pipes might return exit code 0 even when failing |  Major | pipes | Christian Kunz | Christian Kunz |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6213](https://issues.apache.org/jira/browse/HADOOP-6213) | Remove commons dependency on commons-cli2 |  Blocker | util | Amar Kamat | Amar Kamat |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


