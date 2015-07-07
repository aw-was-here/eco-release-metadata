# Apache Hadoop Changelog

## Release 0.18.0 - 2008-08-22

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-3837](https://issues.apache.org/jira/browse/HADOOP-3837) | hadop streaming does not use progress reporting to detect hung tasks |  Major | . | dhruba borthakur | dhruba borthakur |
| [HADOOP-3808](https://issues.apache.org/jira/browse/HADOOP-3808) | [HOD] Include job tracker RPC in notes attribute after job submission |  Blocker | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-3703](https://issues.apache.org/jira/browse/HADOOP-3703) | [HOD] logcondense needs to use the new pattern of output in hadoop dfs -lsr |  Blocker | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-3683](https://issues.apache.org/jira/browse/HADOOP-3683) | Hadoop dfs metric FilesListed shows number of files listed instead of operations |  Major | metrics | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3665](https://issues.apache.org/jira/browse/HADOOP-3665) | WritableComparator newKey() fails for NullWritable |  Minor | io | Lukas Vlcek | Chris Douglas |
| [HADOOP-3610](https://issues.apache.org/jira/browse/HADOOP-3610) | [HOD] HOD does not automatically create a cluster directory for the script option |  Blocker | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-3598](https://issues.apache.org/jira/browse/HADOOP-3598) | Map-Reduce framework needlessly creates temporary \_${taskid} directories for Maps |  Blocker | . | Arun C Murthy | Arun C Murthy |
| [HADOOP-3569](https://issues.apache.org/jira/browse/HADOOP-3569) | KFS input stream read() returns 4 bytes instead of 1 |  Minor | . | Sriram Rao | Sriram Rao |
| [HADOOP-3512](https://issues.apache.org/jira/browse/HADOOP-3512) | Split map/reduce tools into separate jars |  Major | . | Owen O'Malley | Owen O'Malley |
| [HADOOP-3486](https://issues.apache.org/jira/browse/HADOOP-3486) | Change default for initial block report to 0 sec and document it in hadoop-defaults.xml |  Major | . | Sanjay Radia | Sanjay Radia |
| [HADOOP-3483](https://issues.apache.org/jira/browse/HADOOP-3483) | [HOD] Improvements with cluster directory handling |  Major | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-3459](https://issues.apache.org/jira/browse/HADOOP-3459) | Change dfs -ls listing to closely match format on Linux |  Major | . | Mukund Madhugiri | Mukund Madhugiri |
| [HADOOP-3452](https://issues.apache.org/jira/browse/HADOOP-3452) | fsck exit code would be better if non-zero when FS corrupt |  Minor | . | Pete Wyckoff | Lohit Vijayarenu |
| [HADOOP-3417](https://issues.apache.org/jira/browse/HADOOP-3417) | JobClient should not have a static configuration for cli parsing |  Major | . | Owen O'Malley | Amareshwari Sriramadasu |
| [HADOOP-3405](https://issues.apache.org/jira/browse/HADOOP-3405) | Make mapred internal classes package-local |  Major | . | Enis Soztutar | Enis Soztutar |
| [HADOOP-3390](https://issues.apache.org/jira/browse/HADOOP-3390) | Remove deprecated ClientProtocol.abandonFileInProgress() |  Major | . | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3379](https://issues.apache.org/jira/browse/HADOOP-3379) | Document the "stream.non.zero.exit.status.is.failure" knob for streaming |  Blocker | documentation | Arun C Murthy | Amareshwari Sriramadasu |
| [HADOOP-3329](https://issues.apache.org/jira/browse/HADOOP-3329) | DatanodeDescriptor objects stored in FSImage may be out dated. |  Major | . | Tsz Wo Nicholas Sze | dhruba borthakur |
| [HADOOP-3317](https://issues.apache.org/jira/browse/HADOOP-3317) | add default port for hdfs namenode |  Minor | . | Doug Cutting | Doug Cutting |
| [HADOOP-3310](https://issues.apache.org/jira/browse/HADOOP-3310) | Lease recovery for append |  Major | . | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3283](https://issues.apache.org/jira/browse/HADOOP-3283) | Need a mechanism for data nodes to update generation stamps. |  Major | . | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3265](https://issues.apache.org/jira/browse/HADOOP-3265) | Remove deprecated API getFileCacheHints |  Major | fs | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3226](https://issues.apache.org/jira/browse/HADOOP-3226) | Run combiner when merging spills from map output |  Major | . | Chris Douglas | Chris Douglas |
| [HADOOP-3193](https://issues.apache.org/jira/browse/HADOOP-3193) | Discovery of corrupt block reported in name node log |  Minor | . | Robert Chansler | Chris Douglas |
| [HADOOP-3184](https://issues.apache.org/jira/browse/HADOOP-3184) | HOD gracefully exclude "bad" nodes during ring formation |  Major | contrib/hod | Marco Nicosia | Hemanth Yamijala |
| [HADOOP-3113](https://issues.apache.org/jira/browse/HADOOP-3113) | DFSOututStream.flush() should flush data to real block file on DataNode. |  Major | . | dhruba borthakur | dhruba borthakur |
| [HADOOP-3095](https://issues.apache.org/jira/browse/HADOOP-3095) | Validating input paths and creating splits is slow on S3 |  Major | fs, fs/s3 | Tom White | Tom White |
| [HADOOP-3035](https://issues.apache.org/jira/browse/HADOOP-3035) | Data nodes should inform the name-node about block crc errors. |  Major | . | Konstantin Shvachko | Lohit Vijayarenu |
| [HADOOP-2909](https://issues.apache.org/jira/browse/HADOOP-2909) | Improve IPC idle connection management |  Major | ipc | Hairong Kuang | Hairong Kuang |
| [HADOOP-2865](https://issues.apache.org/jira/browse/HADOOP-2865) | FsShell.ls() should print file attributes first then the path name. |  Major | . | Konstantin Shvachko | Edward J. Yoon |
| [HADOOP-2797](https://issues.apache.org/jira/browse/HADOOP-2797) | Withdraw CRC upgrade from HDFS |  Critical | . | Robert Chansler | Raghu Angadi |
| [HADOOP-2703](https://issues.apache.org/jira/browse/HADOOP-2703) | New files under lease (before close) still shows up as MISSING files/blocks in fsck |  Minor | . | Koji Noguchi | Lohit Vijayarenu |
| [HADOOP-2656](https://issues.apache.org/jira/browse/HADOOP-2656) | Support for upgrading existing cluster to facilitate appends to HDFS files |  Major | . | dhruba borthakur | dhruba borthakur |
| [HADOOP-2585](https://issues.apache.org/jira/browse/HADOOP-2585) | Automatic namespace recovery from the secondary image. |  Major | . | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-2188](https://issues.apache.org/jira/browse/HADOOP-2188) | RPC should send a ping rather than use client timeouts |  Major | ipc | Owen O'Malley | Hairong Kuang |
| [HADOOP-2181](https://issues.apache.org/jira/browse/HADOOP-2181) | Input Split details for maps should be logged |  Minor | . | Lohit Vijayarenu | Amareshwari Sriramadasu |
| [HADOOP-2065](https://issues.apache.org/jira/browse/HADOOP-2065) | Replication policy for corrupted block |  Major | . | Koji Noguchi | Lohit Vijayarenu |
| [HADOOP-1702](https://issues.apache.org/jira/browse/HADOOP-1702) | Reduce buffer copies when data is written to DFS |  Major | . | Raghu Angadi | Raghu Angadi |
| [HADOOP-544](https://issues.apache.org/jira/browse/HADOOP-544) | Replace the job, tip and task ids with objects. |  Major | . | Owen O'Malley | Enis Soztutar |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-3307](https://issues.apache.org/jira/browse/HADOOP-3307) | Archives in Hadoop. |  Major | fs | Mahadev konar | Mahadev konar |
| [HADOOP-3250](https://issues.apache.org/jira/browse/HADOOP-3250) | Extend FileSystem API to allow appending to files |  Major | fs | dhruba borthakur | Tsz Wo Nicholas Sze |
| [HADOOP-3246](https://issues.apache.org/jira/browse/HADOOP-3246) | FTP client over HDFS |  Major | util | Ankur | Ankur |
| [HADOOP-3230](https://issues.apache.org/jira/browse/HADOOP-3230) | Add command line access to named counters |  Major | scripts | Tom White | Tom White |
| [HADOOP-3074](https://issues.apache.org/jira/browse/HADOOP-3074) | URLStreamHandler for the DFS |  Major | util | Christophe Taton | Christophe Taton |
| [HADOOP-3061](https://issues.apache.org/jira/browse/HADOOP-3061) | Writable for single byte and double |  Major | io | Andrzej Bialecki | Andrzej Bialecki |
| [HADOOP-930](https://issues.apache.org/jira/browse/HADOOP-930) | Add support for reading regular (non-block-based) files from S3 in S3FileSystem |  Major | fs | Tom White | Tom White |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-3808](https://issues.apache.org/jira/browse/HADOOP-3808) | [HOD] Include job tracker RPC in notes attribute after job submission |  Blocker | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-3547](https://issues.apache.org/jira/browse/HADOOP-3547) | Improve documentation about distributing native libraries via DistributedCache |  Blocker | documentation | Arun C Murthy | Amareshwari Sriramadasu |
| [HADOOP-3535](https://issues.apache.org/jira/browse/HADOOP-3535) | IOUtils.close needs better documentation |  Blocker | io | Owen O'Malley | Owen O'Malley |
| [HADOOP-3532](https://issues.apache.org/jira/browse/HADOOP-3532) | Create build targets to create api change reports using jdiff |  Major | build | Owen O'Malley | Owen O'Malley |
| [HADOOP-3501](https://issues.apache.org/jira/browse/HADOOP-3501) | deprecate InMemoryFileSystem |  Major | fs | Doug Cutting | Doug Cutting |
| [HADOOP-3467](https://issues.apache.org/jira/browse/HADOOP-3467) | The javadoc for FileSystem.deleteOnExit should have more description |  Blocker | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3464](https://issues.apache.org/jira/browse/HADOOP-3464) | [HOD] HOD can improve error messages by reporting failures on compute nodes back to hod client |  Major | contrib/hod | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-3455](https://issues.apache.org/jira/browse/HADOOP-3455) | IPC.Client synchronisation looks weak |  Major | ipc | Steve Loughran | Hairong Kuang |
| [HADOOP-3406](https://issues.apache.org/jira/browse/HADOOP-3406) | Document controls for profiling maps & reduces |  Blocker | documentation | Arun C Murthy | Amareshwari Sriramadasu |
| [HADOOP-3379](https://issues.apache.org/jira/browse/HADOOP-3379) | Document the "stream.non.zero.exit.status.is.failure" knob for streaming |  Blocker | documentation | Arun C Murthy | Amareshwari Sriramadasu |
| [HADOOP-3355](https://issues.apache.org/jira/browse/HADOOP-3355) | Configuration should accept decimal and hexadecimal values |  Major | conf | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-3345](https://issues.apache.org/jira/browse/HADOOP-3345) | Enhance the hudson-test-patch target |  Minor | build | Nigel Daley | Nigel Daley |
| [HADOOP-3295](https://issues.apache.org/jira/browse/HADOOP-3295) | Allow TextOutputFormat to use configurable separators |  Minor | io | Zheng Shao | Zheng Shao |
| [HADOOP-3274](https://issues.apache.org/jira/browse/HADOOP-3274) | The default constructor of BytesWritable should not create a 100-byte array. |  Minor | io | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3184](https://issues.apache.org/jira/browse/HADOOP-3184) | HOD gracefully exclude "bad" nodes during ring formation |  Major | contrib/hod | Marco Nicosia | Hemanth Yamijala |
| [HADOOP-3096](https://issues.apache.org/jira/browse/HADOOP-3096) | Improve documentation about the Task Execution Environment in the Map-Reduce tutorial |  Blocker | documentation | Arun C Murthy | Amareshwari Sriramadasu |
| [HADOOP-3095](https://issues.apache.org/jira/browse/HADOOP-3095) | Validating input paths and creating splits is slow on S3 |  Major | fs, fs/s3 | Tom White | Tom White |
| [HADOOP-3058](https://issues.apache.org/jira/browse/HADOOP-3058) | Hadoop DFS to report more replication metrics |  Minor | metrics | Marco Nicosia | Lohit Vijayarenu |
| [HADOOP-2910](https://issues.apache.org/jira/browse/HADOOP-2910) | Throttle IPC Client/Server during bursts of requests or server slowdown |  Major | ipc | Hairong Kuang | Hairong Kuang |
| [HADOOP-2799](https://issues.apache.org/jira/browse/HADOOP-2799) | Replace org.apache.hadoop.io.Closeable with java.io.Closeable |  Minor | io | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-2762](https://issues.apache.org/jira/browse/HADOOP-2762) | Better documentation of controls for memory limits on hadoop daemons and Map-Reduce tasks |  Blocker | documentation, scripts | Arun C Murthy | Amareshwari Sriramadasu |
| [HADOOP-2461](https://issues.apache.org/jira/browse/HADOOP-2461) | Configuration should trim property names and accept decimal, hexadecimal, and octal numbers |  Minor | conf | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-2188](https://issues.apache.org/jira/browse/HADOOP-2188) | RPC should send a ping rather than use client timeouts |  Major | ipc | Owen O'Malley | Hairong Kuang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-3901](https://issues.apache.org/jira/browse/HADOOP-3901) | CLASSPATH in bin/hadoop script is set incorrectly for cygwin |  Blocker | scripts | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3884](https://issues.apache.org/jira/browse/HADOOP-3884) | eclipse plugin build is broken with current eclipse versions |  Blocker | contrib/eclipse-plugin | Doug Cutting | Doug Cutting |
| [HADOOP-3855](https://issues.apache.org/jira/browse/HADOOP-3855) | Fix import of MiniDFSCluster in TestCompressedEmptyMapOutputs.java |  Blocker | test | Arun C Murthy | Arun C Murthy |
| [HADOOP-3798](https://issues.apache.org/jira/browse/HADOOP-3798) | compile-core-test fails to compile |  Blocker | build | Mukund Madhugiri | Mukund Madhugiri |
| [HADOOP-3774](https://issues.apache.org/jira/browse/HADOOP-3774) | Typos in shell output |  Blocker | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3737](https://issues.apache.org/jira/browse/HADOOP-3737) | CompressedWritable throws OutOfMemoryError |  Major | io | Grant Glouser | Grant Glouser |
| [HADOOP-3703](https://issues.apache.org/jira/browse/HADOOP-3703) | [HOD] logcondense needs to use the new pattern of output in hadoop dfs -lsr |  Blocker | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-3693](https://issues.apache.org/jira/browse/HADOOP-3693) | Fix documentation for Archives, distcp and native libraries |  Blocker | documentation | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-3692](https://issues.apache.org/jira/browse/HADOOP-3692) | Fix documentation for Cluster setup and Quick start guides |  Blocker | documentation | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-3691](https://issues.apache.org/jira/browse/HADOOP-3691) | Fix mapred docs |  Blocker | documentation | Amareshwari Sriramadasu | Jothi Padmanabhan |
| [HADOOP-3683](https://issues.apache.org/jira/browse/HADOOP-3683) | Hadoop dfs metric FilesListed shows number of files listed instead of operations |  Major | metrics | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3668](https://issues.apache.org/jira/browse/HADOOP-3668) | Clean up HOD documentation |  Blocker | contrib/hod | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-3665](https://issues.apache.org/jira/browse/HADOOP-3665) | WritableComparator newKey() fails for NullWritable |  Minor | io | Lukas Vlcek | Chris Douglas |
| [HADOOP-3645](https://issues.apache.org/jira/browse/HADOOP-3645) | MetricsTimeVaryingRate returns wrong value for metric\_avg\_time |  Blocker | metrics | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3610](https://issues.apache.org/jira/browse/HADOOP-3610) | [HOD] HOD does not automatically create a cluster directory for the script option |  Blocker | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-3606](https://issues.apache.org/jira/browse/HADOOP-3606) | Update streaming documentation |  Blocker | documentation | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-3597](https://issues.apache.org/jira/browse/HADOOP-3597) | SortValidator always uses the default file system irrespective of the actual input |  Major | test | Jothi Padmanabhan | Jothi Padmanabhan |
| [HADOOP-3593](https://issues.apache.org/jira/browse/HADOOP-3593) | Update MapRed tutorial |  Blocker | documentation | Devaraj Das | Devaraj Das |
| [HADOOP-3575](https://issues.apache.org/jira/browse/HADOOP-3575) | clover target broken after src restructuring |  Minor | build | Nigel Daley | Nigel Daley |
| [HADOOP-3564](https://issues.apache.org/jira/browse/HADOOP-3564) | Sometime after successful  hod allocation datanode fails to come up with java.net.BindException for dfs.datanode.ipc.address |  Blocker | contrib/hod | Karam Singh | Vinod Kumar Vavilapalli |
| [HADOOP-3552](https://issues.apache.org/jira/browse/HADOOP-3552) | forrest doc for hadoop commands |  Blocker | documentation | Sharad Agarwal | Sharad Agarwal |
| [HADOOP-3548](https://issues.apache.org/jira/browse/HADOOP-3548) | The tools.jar is not included in the distribution |  Blocker | build | Owen O'Malley | Owen O'Malley |
| [HADOOP-3544](https://issues.apache.org/jira/browse/HADOOP-3544) | The command "archive" is missing in the example in  docs/hadoop\_archives.html (and pdf) |  Blocker | documentation | Jothi Padmanabhan | Jothi Padmanabhan |
| [HADOOP-3539](https://issues.apache.org/jira/browse/HADOOP-3539) | Cygwin: cygpath displays an error message in running bin/hadoop script |  Blocker | scripts | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-3531](https://issues.apache.org/jira/browse/HADOOP-3531) | Hod does not  report job tracker failure on hod client side when job tracker fails to come up |  Blocker | contrib/hod | Karam Singh | Hemanth Yamijala |
| [HADOOP-3528](https://issues.apache.org/jira/browse/HADOOP-3528) | Metrics FilesCreated and files\_deleted metrics do not match. |  Blocker | metrics | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3523](https://issues.apache.org/jira/browse/HADOOP-3523) | [HOD] If a job does not exist in Torque's list of jobs, HOD allocate on previously allocated directory fails. |  Blocker | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-3516](https://issues.apache.org/jira/browse/HADOOP-3516) | TestHarFileSystem.testArchives fails with NullPointerException |  Blocker | test | Nigel Daley | Subru Krishnan |
| [HADOOP-3513](https://issues.apache.org/jira/browse/HADOOP-3513) | Improve NNThroughputBenchmark log messages. |  Major | test | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-3505](https://issues.apache.org/jira/browse/HADOOP-3505) | omissions in HOD documentation |  Blocker | contrib/hod, documentation | Ari Rabkin | Vinod Kumar Vavilapalli |
| [HADOOP-3496](https://issues.apache.org/jira/browse/HADOOP-3496) | TestHarFileSystem.testArchives fails |  Blocker | fs | Amareshwari Sriramadasu | Tom White |
| [HADOOP-3483](https://issues.apache.org/jira/browse/HADOOP-3483) | [HOD] Improvements with cluster directory handling |  Major | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-3480](https://issues.apache.org/jira/browse/HADOOP-3480) | Need to update Eclipse template to reflect current trunk |  Blocker | build | Tsz Wo Nicholas Sze | Brice Arnould |
| [HADOOP-3471](https://issues.apache.org/jira/browse/HADOOP-3471) | TestIndexedSort sometimes fails |  Major | test | Chris Douglas | Chris Douglas |
| [HADOOP-3468](https://issues.apache.org/jira/browse/HADOOP-3468) | Compile error: FTPFileSystem.java:26: cannot access org.apache.commons.net.ftp.FTP |  Blocker | fs | Tsz Wo Nicholas Sze | Ankur |
| [HADOOP-3463](https://issues.apache.org/jira/browse/HADOOP-3463) | hadoop scripts don't change directory to hadoop\_home |  Critical | scripts | Owen O'Malley | Owen O'Malley |
| [HADOOP-3453](https://issues.apache.org/jira/browse/HADOOP-3453) | ipc.Client.close() throws NullPointerException |  Major | ipc | Tsz Wo Nicholas Sze | Hairong Kuang |
| [HADOOP-3451](https://issues.apache.org/jira/browse/HADOOP-3451) | test-libhdfs fails on Linux |  Blocker | test | Mukund Madhugiri | Lohit Vijayarenu |
| [HADOOP-3413](https://issues.apache.org/jira/browse/HADOOP-3413) | SequenceFile.Reader doesn't use the Serialization framework |  Critical | io | Arun C Murthy | Tom White |
| [HADOOP-3408](https://issues.apache.org/jira/browse/HADOOP-3408) | Change FSNamesytem status metrics to IntValue |  Major | metrics | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3401](https://issues.apache.org/jira/browse/HADOOP-3401) | Update FileBench to use the "work" directory for SequenceFileOutputFormat |  Major | test | Chris Douglas | Chris Douglas |
| [HADOOP-3399](https://issues.apache.org/jira/browse/HADOOP-3399) | Debug log not removed in ipc client |  Trivial | ipc | Raghu Angadi | Raghu Angadi |
| [HADOOP-3388](https://issues.apache.org/jira/browse/HADOOP-3388) | TestDatanodeBlockScanner failed while trying to corrupt replicas |  Major | test | dhruba borthakur | dhruba borthakur |
| [HADOOP-3376](https://issues.apache.org/jira/browse/HADOOP-3376) | [HOD] HOD should have a way to detect and deal with clusters that violate/exceed resource manager limits |  Major | contrib/hod | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-3371](https://issues.apache.org/jira/browse/HADOOP-3371) | MBeanUtil dumps stacktrace from registerMBean |  Minor | metrics | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3365](https://issues.apache.org/jira/browse/HADOOP-3365) | SequenceFile.Sorter.MergeQueue.next does an unnecessary copy of the key |  Major | io | Arun C Murthy | Devaraj Das |
| [HADOOP-3348](https://issues.apache.org/jira/browse/HADOOP-3348) | TestUrlStreamHandler hangs on LINUX |  Major | fs | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3340](https://issues.apache.org/jira/browse/HADOOP-3340) | hadoop dfs metrics shows 0 |  Major | metrics | Eric Yang | Lohit Vijayarenu |
| [HADOOP-3335](https://issues.apache.org/jira/browse/HADOOP-3335) | 'make clean' in src/c++/libhdfs does 'rm -rf /\*' |  Critical | build | Doug Cutting | Doug Cutting |
| [HADOOP-3301](https://issues.apache.org/jira/browse/HADOOP-3301) | Misleading error message when S3 URI contains hostname containing an underscore |  Major | fs/s3 | Tom White | Tom White |
| [HADOOP-3299](https://issues.apache.org/jira/browse/HADOOP-3299) | org.apache.hadoop.mapred.join.CompositeInputFormat does not initialize  TextInput format files with the configuration resulting in an NullPointerException |  Major | io | Jason | Chris Douglas |
| [HADOOP-3282](https://issues.apache.org/jira/browse/HADOOP-3282) | TestCheckpoint occasionally fails because of the port issues. |  Major | test | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-3268](https://issues.apache.org/jira/browse/HADOOP-3268) | TestUrlStreamHandler.testFileUrls fails on Windows |  Major | test | Nigel Daley | Christophe Taton |
| [HADOOP-3265](https://issues.apache.org/jira/browse/HADOOP-3265) | Remove deprecated API getFileCacheHints |  Major | fs | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-3259](https://issues.apache.org/jira/browse/HADOOP-3259) | Configuration.substituteVars() needs to handle security exceptions |  Trivial | conf | Steve Loughran | Edward J. Yoon |
| [HADOOP-3240](https://issues.apache.org/jira/browse/HADOOP-3240) | TestJobShell should not create files in the current directory |  Blocker | test | Tsz Wo Nicholas Sze | Mahadev konar |
| [HADOOP-3151](https://issues.apache.org/jira/browse/HADOOP-3151) | Hod should have better error messages. |  Major | contrib/hod | Arkady Borkovsky | Vinod Kumar Vavilapalli |
| [HADOOP-3127](https://issues.apache.org/jira/browse/HADOOP-3127) | rm /user/\<username\>/.Trash/\_\_\_\_ only moves it back to .Trash |  Minor | fs | Koji Noguchi | Brice Arnould |
| [HADOOP-3085](https://issues.apache.org/jira/browse/HADOOP-3085) | pushMetric() method of various metric util classes should catch exceptions |  Major | metrics | Runping Qi | Chris Douglas |
| [HADOOP-3076](https://issues.apache.org/jira/browse/HADOOP-3076) | [HOD] If a cluster directory is specified as a relative path, an existing script.exitcode file will not be deleted. |  Blocker | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-2961](https://issues.apache.org/jira/browse/HADOOP-2961) | [HOD] Hod expects port info though external host is not mentioned. |  Minor | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-2930](https://issues.apache.org/jira/browse/HADOOP-2930) | make {start,stop}-balancer.sh work even if hadoop-daemon.sh isn't in the PATH |  Trivial | scripts | Spiros Papadimitriou | Spiros Papadimitriou |
| [HADOOP-2909](https://issues.apache.org/jira/browse/HADOOP-2909) | Improve IPC idle connection management |  Major | ipc | Hairong Kuang | Hairong Kuang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-3100](https://issues.apache.org/jira/browse/HADOOP-3100) | Develop tests to test the DFS command line interface |  Major | test | Mukund Madhugiri | Mukund Madhugiri |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-3541](https://issues.apache.org/jira/browse/HADOOP-3541) | Namespace recovery from the secondary image should be documented. |  Blocker | documentation | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-2984](https://issues.apache.org/jira/browse/HADOOP-2984) | Distcp should have forrest documentation |  Blocker | util | Owen O'Malley | Chris Douglas |


