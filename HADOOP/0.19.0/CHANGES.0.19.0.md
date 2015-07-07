# Apache Hadoop Changelog

## Release 0.19.0 - 2008-11-20

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4430](https://issues.apache.org/jira/browse/HADOOP-4430) | Namenode Web UI capacity report is inconsistent with Balancer |  Blocker | . | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-4293](https://issues.apache.org/jira/browse/HADOOP-4293) | Remove WritableJobConf |  Major | . | Owen O'Malley | Owen O'Malley |
| [HADOOP-4281](https://issues.apache.org/jira/browse/HADOOP-4281) | Capacity reported in some of the commands is not consistent with the Web UI reported data |  Blocker | . | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-4227](https://issues.apache.org/jira/browse/HADOOP-4227) | Remove the deprecated, unused class ShellCommand. |  Minor | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4190](https://issues.apache.org/jira/browse/HADOOP-4190) | Changes to JobHistory makes it backward incompatible |  Blocker | . | Amar Kamat | Amar Kamat |
| [HADOOP-4116](https://issues.apache.org/jira/browse/HADOOP-4116) | Balancer should provide better resource management |  Blocker | . | Raghu Angadi | Hairong Kuang |
| [HADOOP-3981](https://issues.apache.org/jira/browse/HADOOP-3981) | Need a distributed file checksum algorithm for HDFS |  Major | . | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3963](https://issues.apache.org/jira/browse/HADOOP-3963) | libhdfs should never exit on its own but rather return errors to the calling application |  Minor | . | Pete Wyckoff | Pete Wyckoff |
| [HADOOP-3938](https://issues.apache.org/jira/browse/HADOOP-3938) | Quotas for disk space management |  Major | . | Robert Chansler | Raghu Angadi |
| [HADOOP-3911](https://issues.apache.org/jira/browse/HADOOP-3911) | ' -blocks ' option not being recognized |  Minor | fs, util | Koji Noguchi | Lohit Vijayarenu |
| [HADOOP-3889](https://issues.apache.org/jira/browse/HADOOP-3889) | distcp: Better Error Message should be thrown when accessing source files/directory with no read permission |  Minor | . | Peeyush Bishnoi | Tsz Wo Nicholas Sze |
| [HADOOP-3837](https://issues.apache.org/jira/browse/HADOOP-3837) | hadop streaming does not use progress reporting to detect hung tasks |  Major | . | dhruba borthakur | dhruba borthakur |
| [HADOOP-3796](https://issues.apache.org/jira/browse/HADOOP-3796) | fuse-dfs should take rw,ro,trashon,trashoff,protected=blah mount arguments rather than them being compiled in |  Major | . | Pete Wyckoff | Pete Wyckoff |
| [HADOOP-3792](https://issues.apache.org/jira/browse/HADOOP-3792) | exit code from "hadoop dfs -test ..." is wrong for Unix shell |  Minor | fs | Ben Slusky | Ben Slusky |
| [HADOOP-3722](https://issues.apache.org/jira/browse/HADOOP-3722) | Provide a unified way to pass jobconf options from bin/hadoop |  Minor | conf | Matei Zaharia | Enis Soztutar |
| [HADOOP-3667](https://issues.apache.org/jira/browse/HADOOP-3667) | Remove deprecated methods in JobConf |  Major | . | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-3652](https://issues.apache.org/jira/browse/HADOOP-3652) | Remove deprecated class OutputFormatBase |  Major | . | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-3595](https://issues.apache.org/jira/browse/HADOOP-3595) | Remove deprecated mapred.combine.once functionality |  Major | . | Chris Douglas | Chris Douglas |
| [HADOOP-3245](https://issues.apache.org/jira/browse/HADOOP-3245) | Provide ability to persist running jobs (extend HADOOP-1876) |  Major | . | Devaraj Das | Amar Kamat |
| [HADOOP-3150](https://issues.apache.org/jira/browse/HADOOP-3150) | Move task file promotion into the task |  Major | . | Owen O'Malley | Amareshwari Sriramadasu |
| [HADOOP-3062](https://issues.apache.org/jira/browse/HADOOP-3062) | Need to capture the metrics for the network ios generate by dfs reads/writes and map/reduce shuffling  and break them down by racks |  Major | metrics | Runping Qi | Chris Douglas |
| [HADOOP-2816](https://issues.apache.org/jira/browse/HADOOP-2816) | Cluster summary at name node web has confusing report for space utilization |  Major | . | Robert Chansler | Suresh Srinivas |
| [HADOOP-2325](https://issues.apache.org/jira/browse/HADOOP-2325) | Require Java 6 |  Major | build | Doug Cutting | Doug Cutting |
| [HADOOP-1869](https://issues.apache.org/jira/browse/HADOOP-1869) | access times of HDFS files |  Major | . | dhruba borthakur | dhruba borthakur |
| [HADOOP-1700](https://issues.apache.org/jira/browse/HADOOP-1700) | Append to files in HDFS |  Major | . | stack | dhruba borthakur |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4301](https://issues.apache.org/jira/browse/HADOOP-4301) | Forrest doc for skip bad records feature |  Blocker | documentation | Sharad Agarwal | Sharad Agarwal |
| [HADOOP-3941](https://issues.apache.org/jira/browse/HADOOP-3941) | Extend FileSystem API to return file-checksums/file-digests |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3854](https://issues.apache.org/jira/browse/HADOOP-3854) | org.apache.hadoop.http.HttpServer should support user configurable filter |  Major | util | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3730](https://issues.apache.org/jira/browse/HADOOP-3730) | add new JobConf constructor that disables loading default configurations |  Major | conf | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-3714](https://issues.apache.org/jira/browse/HADOOP-3714) | Bash tab completion support |  Trivial | scripts | Chris Smith | Chris Smith |
| [HADOOP-3695](https://issues.apache.org/jira/browse/HADOOP-3695) | [HOD] Have an ability to run multiple slaves per node |  Major | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-3585](https://issues.apache.org/jira/browse/HADOOP-3585) | Hardware Failure Monitoring in large clusters running Hadoop/HDFS |  Minor | metrics | Ioannis Koltsidas | Ioannis Koltsidas |
| [HADOOP-3479](https://issues.apache.org/jira/browse/HADOOP-3479) | Implement configuration items useful for Hadoop resource manager (v1) |  Major | conf | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-3361](https://issues.apache.org/jira/browse/HADOOP-3361) | Implement renames for NativeS3FileSystem |  Major | fs/s3 | Tom White | Tom White |
| [HADOOP-2664](https://issues.apache.org/jira/browse/HADOOP-2664) | lzop-compatible CompresionCodec |  Major | io | Chris Douglas | Chris Douglas |
| [HADOOP-2658](https://issues.apache.org/jira/browse/HADOOP-2658) | Design and Implement a Test Plan to support appends to HDFS files |  Blocker | test | dhruba borthakur | dhruba borthakur |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4424](https://issues.apache.org/jira/browse/HADOOP-4424) | menu layout change for Hadoop documentation |  Blocker | documentation | Boris Shkolnik | Boris Shkolnik |
| [HADOOP-4279](https://issues.apache.org/jira/browse/HADOOP-4279) | write the random number generator seed to log in the append-related tests |  Blocker | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4227](https://issues.apache.org/jira/browse/HADOOP-4227) | Remove the deprecated, unused class ShellCommand. |  Minor | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4181](https://issues.apache.org/jira/browse/HADOOP-4181) | some minor things to make Hadoop friendlier to git |  Major | build | Owen O'Malley | Owen O'Malley |
| [HADOOP-4117](https://issues.apache.org/jira/browse/HADOOP-4117) | Improve configurability of Hadoop EC2 instances |  Major | contrib/cloud | Tom White | Tom White |
| [HADOOP-4075](https://issues.apache.org/jira/browse/HADOOP-4075) | test-patch.sh should output the ant commands that it runs |  Major | build | Nigel Daley | Ramya Sunil |
| [HADOOP-4062](https://issues.apache.org/jira/browse/HADOOP-4062) | IPC client does not need to be synchronized on the output stream when a connection is closed |  Major | ipc | Hairong Kuang | Hairong Kuang |
| [HADOOP-3975](https://issues.apache.org/jira/browse/HADOOP-3975) | test-patch can report the modifications found in the workspace along with the error message |  Minor | test | Hemanth Yamijala | Ramya Sunil |
| [HADOOP-3944](https://issues.apache.org/jira/browse/HADOOP-3944) | TupleWritable listed as public class but cannot be used without methods private to the package |  Trivial | documentation | Michael Andrews | Chris Douglas |
| [HADOOP-3892](https://issues.apache.org/jira/browse/HADOOP-3892) | Include Unix group name in JobConf |  Trivial | conf | Matei Zaharia | Matei Zaharia |
| [HADOOP-3866](https://issues.apache.org/jira/browse/HADOOP-3866) | Improve Hadoop Jobtracker Admin |  Major | scripts | craig weisenfluh | craig weisenfluh |
| [HADOOP-3861](https://issues.apache.org/jira/browse/HADOOP-3861) | Make MapFile.Reader and Writer implement java.io.Closeable |  Major | io | Tom White | Tom White |
| [HADOOP-3860](https://issues.apache.org/jira/browse/HADOOP-3860) | Compare name-node performance when journaling is performed into local hard-drives or nfs. |  Major | benchmarks | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-3852](https://issues.apache.org/jira/browse/HADOOP-3852) | If ShellCommandExecutor had a toString() operator that listed the command run, its error messages may be more meaningful |  Minor | util | Steve Loughran | Steve Loughran |
| [HADOOP-3844](https://issues.apache.org/jira/browse/HADOOP-3844) | include message of local exception in Client call failures |  Minor | ipc | Steve Loughran | Steve Loughran |
| [HADOOP-3769](https://issues.apache.org/jira/browse/HADOOP-3769) | expose static SampleMapper and SampleReducer classes of GenericMRLoadGenerator class for gridmix reuse |  Major | test | Lingyun Yang | Lingyun Yang |
| [HADOOP-3722](https://issues.apache.org/jira/browse/HADOOP-3722) | Provide a unified way to pass jobconf options from bin/hadoop |  Minor | conf | Matei Zaharia | Enis Soztutar |
| [HADOOP-3694](https://issues.apache.org/jira/browse/HADOOP-3694) | if MiniDFS startup time could be improved, testing time would be reduced |  Major | test | Steve Loughran | Doug Cutting |
| [HADOOP-3660](https://issues.apache.org/jira/browse/HADOOP-3660) | Add replication factor for injecting blocks in the data node cluster |  Major | benchmarks | Sanjay Radia | Sanjay Radia |
| [HADOOP-3655](https://issues.apache.org/jira/browse/HADOOP-3655) | provide more control options for the junit run |  Minor | build | Steve Loughran | Steve Loughran |
| [HADOOP-3646](https://issues.apache.org/jira/browse/HADOOP-3646) | Providing bzip2 as codec |  Major | conf, io | Abdul Qadeer | Abdul Qadeer |
| [HADOOP-3624](https://issues.apache.org/jira/browse/HADOOP-3624) | CreateEditsLog could be improved to create tree directory structure |  Minor | test | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3605](https://issues.apache.org/jira/browse/HADOOP-3605) | Added an abort on unset AWS\_ACCOUNT\_ID to luanch-hadoop-master |  Minor | contrib/cloud | Al Hoang | Al Hoang |
| [HADOOP-3556](https://issues.apache.org/jira/browse/HADOOP-3556) | Substitute the synchronized code in MD5Hash to avoid lock contention. Use ThreadLocal instead. |  Major | io | Iván de Prado | Iván de Prado |
| [HADOOP-3498](https://issues.apache.org/jira/browse/HADOOP-3498) | File globbing alternation should be able to span path components |  Major | fs | Tom White | Tom White |
| [HADOOP-3368](https://issues.apache.org/jira/browse/HADOOP-3368) | Can commons-logging.properties be pulled from hadoop-core? |  Major | build | Steve Loughran | Steve Loughran |
| [HADOOP-3202](https://issues.apache.org/jira/browse/HADOOP-3202) | Deprecate org.apache.hadoop.fs.FileUtil.fullyDelete(FileSystem fs, Path dir) |  Major | fs | Tsz Wo Nicholas Sze | Amareshwari Sriramadasu |
| [HADOOP-3062](https://issues.apache.org/jira/browse/HADOOP-3062) | Need to capture the metrics for the network ios generate by dfs reads/writes and map/reduce shuffling  and break them down by racks |  Major | metrics | Runping Qi | Chris Douglas |
| [HADOOP-2411](https://issues.apache.org/jira/browse/HADOOP-2411) | Add support for larger EC2 instance types |  Major | contrib/cloud | Tom White | Chris K Wensel |
| [HADOOP-2325](https://issues.apache.org/jira/browse/HADOOP-2325) | Require Java 6 |  Major | build | Doug Cutting | Doug Cutting |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4552](https://issues.apache.org/jira/browse/HADOOP-4552) | Deadlock in RPC Server |  Major | ipc | Raghu Angadi | Raghu Angadi |
| [HADOOP-4525](https://issues.apache.org/jira/browse/HADOOP-4525) | config ipc.server.tcpnodelay is no loger being respected |  Major | ipc | Clint Morgan | Clint Morgan |
| [HADOOP-4466](https://issues.apache.org/jira/browse/HADOOP-4466) | SequenceFileOutputFormat is coupled to WritableComparable and Writable |  Blocker | io | Chris K Wensel | Chris K Wensel |
| [HADOOP-4438](https://issues.apache.org/jira/browse/HADOOP-4438) | Add new/missing dfs commands in forrest |  Blocker | documentation | Hemanth Yamijala | Suresh Srinivas |
| [HADOOP-4427](https://issues.apache.org/jira/browse/HADOOP-4427) | Add new/missing commands in forrest |  Blocker | documentation | Sharad Agarwal | Sreekanth Ramakrishnan |
| [HADOOP-4418](https://issues.apache.org/jira/browse/HADOOP-4418) | Update documentation in forrest for Mapred, streaming and pipes |  Blocker | documentation | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-4400](https://issues.apache.org/jira/browse/HADOOP-4400) | Add "hdfs://" to fs.default.name on quickstart.html |  Trivial | documentation | Jeff Hammerbacher | Jeff Hammerbacher |
| [HADOOP-4393](https://issues.apache.org/jira/browse/HADOOP-4393) | Merge AccessControlException and AccessControlIOException into one exception class |  Blocker | fs | Owen O'Malley | Owen O'Malley |
| [HADOOP-4387](https://issues.apache.org/jira/browse/HADOOP-4387) | TestHDFSFileSystemContract fails on windows |  Blocker | test | Raghu Angadi | Raghu Angadi |
| [HADOOP-4378](https://issues.apache.org/jira/browse/HADOOP-4378) | TestJobQueueInformation fails regularly |  Blocker | test | Tsz Wo Nicholas Sze | Sreekanth Ramakrishnan |
| [HADOOP-4376](https://issues.apache.org/jira/browse/HADOOP-4376) | Fix line formatting in hadoop-default.xml for hadoop.http.filter.initializers |  Blocker | conf | Enis Soztutar | Enis Soztutar |
| [HADOOP-4358](https://issues.apache.org/jira/browse/HADOOP-4358) | NPE from CreateEditsLog |  Blocker | test | Chris Douglas | Raghu Angadi |
| [HADOOP-4335](https://issues.apache.org/jira/browse/HADOOP-4335) | FsShell -ls fails for file systems without owners or groups |  Major | scripts | David Phillips | David Phillips |
| [HADOOP-4321](https://issues.apache.org/jira/browse/HADOOP-4321) | Document the capacity scheduler in Forrest |  Blocker | documentation | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-4309](https://issues.apache.org/jira/browse/HADOOP-4309) | eclipse-plugin no longer compiles on trunk |  Blocker | contrib/eclipse-plugin | Chris Douglas | Chris Douglas |
| [HADOOP-4269](https://issues.apache.org/jira/browse/HADOOP-4269) | LineRecordReader.LineReader should use util.LineReader |  Major | util | Chris Douglas | Chris Douglas |
| [HADOOP-4249](https://issues.apache.org/jira/browse/HADOOP-4249) | Declare hsqldb.jar in eclipse plugin |  Blocker | contrib/eclipse-plugin | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4213](https://issues.apache.org/jira/browse/HADOOP-4213) | NPE in TestLimitTasksPerJobTaskScheduler |  Major | test | Tsz Wo Nicholas Sze | Sreekanth Ramakrishnan |
| [HADOOP-4200](https://issues.apache.org/jira/browse/HADOOP-4200) | Hadoop-Patch build is failing |  Major | build | Ramya Sunil | Ramya Sunil |
| [HADOOP-4195](https://issues.apache.org/jira/browse/HADOOP-4195) | SequenceFile.Writer close() uses compressor after returning it to CodecPool. |  Major | io | Hong Tang | Arun C Murthy |
| [HADOOP-4173](https://issues.apache.org/jira/browse/HADOOP-4173) | TestProcfsBasedProcessTree failing on Windows machine |  Major | test, util | Ramya Sunil | Vinod Kumar Vavilapalli |
| [HADOOP-4154](https://issues.apache.org/jira/browse/HADOOP-4154) | Fix javac warning in WritableUtils |  Minor | io | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4099](https://issues.apache.org/jira/browse/HADOOP-4099) | HFTP interface compatibility with older releases broken |  Blocker | fs | Kan Zhang | dhruba borthakur |
| [HADOOP-4078](https://issues.apache.org/jira/browse/HADOOP-4078) | TestKosmosFileSystem fails on trunk |  Blocker | fs | Amareshwari Sriramadasu | Lohit Vijayarenu |
| [HADOOP-4030](https://issues.apache.org/jira/browse/HADOOP-4030) | LzopCodec shouldn't be in the default list of codecs i.e. io.compression.codecs |  Major | io | Arun C Murthy | Arun C Murthy |
| [HADOOP-4023](https://issues.apache.org/jira/browse/HADOOP-4023) | javadoc warnings: incorrect references |  Major | documentation | Tsz Wo Nicholas Sze | Owen O'Malley |
| [HADOOP-4014](https://issues.apache.org/jira/browse/HADOOP-4014) | DFS upgrade fails on Windows |  Blocker | fs | NOMURA Yoshihide | Konstantin Shvachko |
| [HADOOP-3991](https://issues.apache.org/jira/browse/HADOOP-3991) | updates to hadoop-ec2-env.sh for 0.18.0 |  Minor | contrib/cloud | Karl Anderson | Tom White |
| [HADOOP-3964](https://issues.apache.org/jira/browse/HADOOP-3964) | javadoc warnings by failmon |  Major | build | Tsz Wo Nicholas Sze | dhruba borthakur |
| [HADOOP-3962](https://issues.apache.org/jira/browse/HADOOP-3962) | Shell command "fs -count" should support paths with different file systsms |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3959](https://issues.apache.org/jira/browse/HADOOP-3959) | [HOD] --resource\_manager.options is not passed to qsub |  Major | contrib/hod | Craig Macdonald | Vinod Kumar Vavilapalli |
| [HADOOP-3958](https://issues.apache.org/jira/browse/HADOOP-3958) | TestMapRed ignores failures of the test case |  Major | test | Owen O'Malley | Owen O'Malley |
| [HADOOP-3952](https://issues.apache.org/jira/browse/HADOOP-3952) | TestDataJoin references dfs.MiniDFSCluster instead of hdfs.MiniDFSCluster |  Major | test | Owen O'Malley | Owen O'Malley |
| [HADOOP-3950](https://issues.apache.org/jira/browse/HADOOP-3950) | TestMapRed and TestMiniMRDFSSort failed on trunk |  Major | test | Tsz Wo Nicholas Sze | Enis Soztutar |
| [HADOOP-3949](https://issues.apache.org/jira/browse/HADOOP-3949) | javadoc warnings: Multiple sources of package comments found for package |  Major | build, documentation | Tsz Wo Nicholas Sze | Jerome Boulon |
| [HADOOP-3946](https://issues.apache.org/jira/browse/HADOOP-3946) | TestMapRed fails on trunk |  Blocker | test | Amareshwari Sriramadasu | Tom White |
| [HADOOP-3911](https://issues.apache.org/jira/browse/HADOOP-3911) | ' -blocks ' option not being recognized |  Minor | fs, util | Koji Noguchi | Lohit Vijayarenu |
| [HADOOP-3910](https://issues.apache.org/jira/browse/HADOOP-3910) | Are ClusterTestDFSNamespaceLogging and ClusterTestDFS still valid tests? |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3904](https://issues.apache.org/jira/browse/HADOOP-3904) | A few tests still using old hdfs package name |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3846](https://issues.apache.org/jira/browse/HADOOP-3846) | CreateEditsLog used for benchmark misses creating parent directories |  Minor | benchmarks | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3836](https://issues.apache.org/jira/browse/HADOOP-3836) | TestMultipleOutputs will fail if it is ran more than one times |  Major | test | Tsz Wo Nicholas Sze | Alejandro Abdelnur |
| [HADOOP-3820](https://issues.apache.org/jira/browse/HADOOP-3820) | gridmix-env has a syntax error, and wrongly defines USE\_REAL\_DATASET by default |  Major | benchmarks | Arun C Murthy | Arun C Murthy |
| [HADOOP-3819](https://issues.apache.org/jira/browse/HADOOP-3819) | can not get svn revision # at build time if locale is not english |  Minor | build | Rong-En Fan | Rong-En Fan |
| [HADOOP-3816](https://issues.apache.org/jira/browse/HADOOP-3816) | KFS changes for faster directory listing |  Minor | fs | Sriram Rao | Sriram Rao |
| [HADOOP-3814](https://issues.apache.org/jira/browse/HADOOP-3814) | [HOD] Remove dfs.client.buffer.dir generation, as this is removed in Hadoop 0.19. |  Blocker | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-3792](https://issues.apache.org/jira/browse/HADOOP-3792) | exit code from "hadoop dfs -test ..." is wrong for Unix shell |  Minor | fs | Ben Slusky | Ben Slusky |
| [HADOOP-3785](https://issues.apache.org/jira/browse/HADOOP-3785) | FileSystem cache should be case-insensitive |  Major | fs | Doug Cutting | Bill de hOra |
| [HADOOP-3783](https://issues.apache.org/jira/browse/HADOOP-3783) | "deprecated filesystem name" warning on EC2 |  Minor | contrib/cloud | Stuart Sierra | Tom White |
| [HADOOP-3726](https://issues.apache.org/jira/browse/HADOOP-3726) | TestCLI loses exception details on setup/teardown |  Minor | test | Steve Loughran | Steve Loughran |
| [HADOOP-3725](https://issues.apache.org/jira/browse/HADOOP-3725) | TestMiniMRMapRedDebugScript loses exception details |  Minor | test | Steve Loughran | Steve Loughran |
| [HADOOP-3640](https://issues.apache.org/jira/browse/HADOOP-3640) | NativeS3FsInputStream read() method for reading a single byte is incorrect |  Major | fs/s3 | Tom White | Tom White |
| [HADOOP-3592](https://issues.apache.org/jira/browse/HADOOP-3592) | org.apache.hadoop.fs.FileUtil.copy() will leak input streams if the destination can't be opened |  Minor | fs | Steve Loughran | Bill de hOra |
| [HADOOP-3543](https://issues.apache.org/jira/browse/HADOOP-3543) | Need to increment the year field for the copyright notice |  Trivial | documentation | Chris Douglas | Chris Douglas |
| [HADOOP-3528](https://issues.apache.org/jira/browse/HADOOP-3528) | Metrics FilesCreated and files\_deleted metrics do not match. |  Blocker | metrics | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3506](https://issues.apache.org/jira/browse/HADOOP-3506) | Occasional NPE in Jets3tFileSystemStore |  Major | fs/s3 | Robert | Tom White |
| [HADOOP-3488](https://issues.apache.org/jira/browse/HADOOP-3488) | the rsync command in hadoop-daemon.sh also rsync the logs folder from the master, what deletes the datanode / tasktracker log files. |  Critical | scripts | Stefan Groschupf | Craig Macdonald |
| [HADOOP-3319](https://issues.apache.org/jira/browse/HADOOP-3319) | [HOD]checknodes prints errors messages on stdout |  Major | contrib/hod | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-3076](https://issues.apache.org/jira/browse/HADOOP-3076) | [HOD] If a cluster directory is specified as a relative path, an existing script.exitcode file will not be deleted. |  Blocker | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4464](https://issues.apache.org/jira/browse/HADOOP-4464) | Separate testClientTriggeredLeaseRecovery() out from TestFileCreation |  Blocker | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4259](https://issues.apache.org/jira/browse/HADOOP-4259) | findbugs should run over the tools.jar also |  Minor | test | Owen O'Malley | Chris Douglas |
| [HADOOP-4237](https://issues.apache.org/jira/browse/HADOOP-4237) | TestStreamingBadRecords.testNarrowDown fails intermittently |  Minor | test | Sharad Agarwal | Sharad Agarwal |
| [HADOOP-4069](https://issues.apache.org/jira/browse/HADOOP-4069) | TestKosmosFileSystem can fail when run through ant test on systems shared by users |  Minor | fs | Hemanth Yamijala | Lohit Vijayarenu |
| [HADOOP-3966](https://issues.apache.org/jira/browse/HADOOP-3966) | Place the new findbugs warnings introduced by the patch in the /tmp directory when "ant test-patch" is run. |  Minor | test | Ramya Sunil | Ramya Sunil |
| [HADOOP-3790](https://issues.apache.org/jira/browse/HADOOP-3790) | Add more unit tests to test appending to files in HDFS |  Blocker | test | dhruba borthakur | Tsz Wo Nicholas Sze |
| [HADOOP-3587](https://issues.apache.org/jira/browse/HADOOP-3587) | contrib/data\_join needs unit tests |  Major | test | Chris Douglas | Chris Douglas |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4354](https://issues.apache.org/jira/browse/HADOOP-4354) | Separate TestDatanodeDeath.testDatanodeDeath() into 4 tests |  Blocker | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4105](https://issues.apache.org/jira/browse/HADOOP-4105) | libhdfs wiki is very out-of-date and contains mostly broken links |  Minor | documentation | Pete Wyckoff | Pete Wyckoff |
| [HADOOP-3942](https://issues.apache.org/jira/browse/HADOOP-3942) | Update DistCp documentation |  Blocker | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |


