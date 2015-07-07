# Apache Hadoop Changelog

## Release 0.21.0 - 2010-08-23

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6701](https://issues.apache.org/jira/browse/HADOOP-6701) |  Incorrect exit codes for "dfs -chown", "dfs -chgrp" |  Minor | fs | Ravi Phulari | Ravi Phulari |
| [HADOOP-6686](https://issues.apache.org/jira/browse/HADOOP-6686) | Remove redundant exception class name in unwrapped exceptions thrown at the RPC client |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-6577](https://issues.apache.org/jira/browse/HADOOP-6577) | IPC server response buffer reset threshold should be configurable |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-6569](https://issues.apache.org/jira/browse/HADOOP-6569) | FsShell#cat should avoid calling unecessary getFileStatus before opening a file to read |  Major | fs | Hairong Kuang | Hairong Kuang |
| [HADOOP-6367](https://issues.apache.org/jira/browse/HADOOP-6367) | Move Access Token implementation from Common to HDFS |  Major | security | Kan Zhang | Kan Zhang |
| [HADOOP-6299](https://issues.apache.org/jira/browse/HADOOP-6299) | Use JAAS LoginContext for our login |  Major | security | Arun C Murthy | Owen O'Malley |
| [HADOOP-6230](https://issues.apache.org/jira/browse/HADOOP-6230) | Move process tree, and memory calculator classes out of Common into Map/Reduce. |  Major | util | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-6203](https://issues.apache.org/jira/browse/HADOOP-6203) | Improve error message when moving to trash fails due to quota issue |  Major | fs | Jakob Homan | Boris Shkolnik |
| [HADOOP-6201](https://issues.apache.org/jira/browse/HADOOP-6201) | FileSystem::ListStatus should throw FileNotFoundException |  Major | fs | Jakob Homan | Jakob Homan |
| [HADOOP-5913](https://issues.apache.org/jira/browse/HADOOP-5913) | Allow administrators to be able to start and stop queues |  Major | . | rahul k singh | rahul k singh |
| [HADOOP-5879](https://issues.apache.org/jira/browse/HADOOP-5879) | GzipCodec should read compression level etc from configuration |  Major | io | Zheng Shao | He Yongqiang |
| [HADOOP-5861](https://issues.apache.org/jira/browse/HADOOP-5861) | s3n files are not getting split by default |  Major | fs/s3 | Joydeep Sen Sarma | Tom White |
| [HADOOP-5738](https://issues.apache.org/jira/browse/HADOOP-5738) | Split waiting tasks field in JobTracker metrics to individual tasks |  Major | metrics | Sreekanth Ramakrishnan | Sreekanth Ramakrishnan |
| [HADOOP-5679](https://issues.apache.org/jira/browse/HADOOP-5679) | Resolve findbugs warnings in core/streaming/pipes/examples |  Major | . | Jothi Padmanabhan | Jothi Padmanabhan |
| [HADOOP-5620](https://issues.apache.org/jira/browse/HADOOP-5620) | discp can preserve modification times of files |  Major | . | dhruba borthakur | Rodrigo Schmidt |
| [HADOOP-5485](https://issues.apache.org/jira/browse/HADOOP-5485) | Authorisation machanism required for acceesing jobtracker url :- jobtracker.com:port/scheduler |  Major | . | Aroop Maliakkal | Vinod Kumar Vavilapalli |
| [HADOOP-5464](https://issues.apache.org/jira/browse/HADOOP-5464) | DFSClient does not treat write timeout of 0 properly |  Major | . | Raghu Angadi | Raghu Angadi |
| [HADOOP-5438](https://issues.apache.org/jira/browse/HADOOP-5438) | Merge FileSystem.create and FileSystem.append |  Major | fs | He Yongqiang | He Yongqiang |
| [HADOOP-5258](https://issues.apache.org/jira/browse/HADOOP-5258) | Provide dfsadmin functionality to report on namenode's view of network topology |  Major | . | Jakob Homan | Jakob Homan |
| [HADOOP-5219](https://issues.apache.org/jira/browse/HADOOP-5219) | SequenceFile is using mapred property |  Major | io | Sharad Agarwal | Sharad Agarwal |
| [HADOOP-5176](https://issues.apache.org/jira/browse/HADOOP-5176) | TestDFSIO reports itself as TestFDSIO |  Trivial | benchmarks | Bryan Duxbury | Ravi Phulari |
| [HADOOP-5094](https://issues.apache.org/jira/browse/HADOOP-5094) | Show dead nodes information in dfsadmin -report |  Minor | . | Jim Huang | Jakob Homan |
| [HADOOP-5022](https://issues.apache.org/jira/browse/HADOOP-5022) | [HOD] logcondense should delete all hod logs for a user, including jobtracker logs |  Blocker | contrib/hod | Hemanth Yamijala | Peeyush Bishnoi |
| [HADOOP-4942](https://issues.apache.org/jira/browse/HADOOP-4942) | Remove getName() and getNamed(String name, Configuration conf) |  Major | fs | Tsz Wo Nicholas Sze | Jakob Homan |
| [HADOOP-4941](https://issues.apache.org/jira/browse/HADOOP-4941) | Remove getBlockSize(Path f), getLength(Path f) and getReplication(Path src) |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4940](https://issues.apache.org/jira/browse/HADOOP-4940) | Remove delete(Path f) |  Major | fs | Tsz Wo Nicholas Sze | Enis Soztutar |
| [HADOOP-4895](https://issues.apache.org/jira/browse/HADOOP-4895) | Remove deprecated methods in DFSClient |  Major | . | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4861](https://issues.apache.org/jira/browse/HADOOP-4861) | Add disk usage with human-readable size (-duh) |  Trivial | . | Bryan Duxbury | Todd Lipcon |
| [HADOOP-4779](https://issues.apache.org/jira/browse/HADOOP-4779) | Remove deprecated FileSystem methods |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4756](https://issues.apache.org/jira/browse/HADOOP-4756) | Create a command line tool to access JMX exported properties from a NameNode server |  Major | . | Boris Shkolnik | Boris Shkolnik |
| [HADOOP-4655](https://issues.apache.org/jira/browse/HADOOP-4655) | FileSystem.CACHE should be ref-counted |  Major | fs | Hong Tang | dhruba borthakur |
| [HADOOP-4648](https://issues.apache.org/jira/browse/HADOOP-4648) | Remove ChecksumDistriubtedFileSystem and InMemoryFileSystem |  Major | fs | Owen O'Malley | Chris Douglas |
| [HADOOP-4539](https://issues.apache.org/jira/browse/HADOOP-4539) | Streaming Edits to a Backup Node. |  Major | . | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-4268](https://issues.apache.org/jira/browse/HADOOP-4268) | Permission checking in fsck |  Major | . | Koji Noguchi | Tsz Wo Nicholas Sze |
| [HADOOP-3953](https://issues.apache.org/jira/browse/HADOOP-3953) | Sticky bit for directories |  Major | . | Koji Noguchi | Jakob Homan |
| [HADOOP-2827](https://issues.apache.org/jira/browse/HADOOP-2827) | Remove deprecated NetUtils.getServerAddress |  Major | conf, util | dhruba borthakur | Chris Douglas |
| [HDFS-1024](https://issues.apache.org/jira/browse/HDFS-1024) | SecondaryNamenode fails to checkpoint because namenode fails with CancelledKeyException |  Blocker | . | dhruba borthakur | Dmytro Molkov |
| [HDFS-1016](https://issues.apache.org/jira/browse/HDFS-1016) | HDFS side change for HADOOP-6569 |  Major | hdfs-client | Hairong Kuang | Hairong Kuang |
| [HDFS-985](https://issues.apache.org/jira/browse/HDFS-985) | HDFS should issue multiple RPCs for listing a large directory |  Major | . | Hairong Kuang | Hairong Kuang |
| [HDFS-984](https://issues.apache.org/jira/browse/HDFS-984) | Delegation Tokens should be persisted in Namenode |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HDFS-946](https://issues.apache.org/jira/browse/HDFS-946) | NameNode should not return full path name when lisitng a diretory or getting the status of a file |  Major | . | Hairong Kuang | Hairong Kuang |
| [HDFS-892](https://issues.apache.org/jira/browse/HDFS-892) | optionally use Avro for namenode RPC |  Major | namenode | Doug Cutting | Doug Cutting |
| [HDFS-873](https://issues.apache.org/jira/browse/HDFS-873) | DataNode directories as URIs |  Major | datanode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-793](https://issues.apache.org/jira/browse/HDFS-793) | DataNode should first receive the whole packet ack message before it constructs and sends its own ack message for the packet |  Blocker | datanode | Hairong Kuang | Hairong Kuang |
| [HDFS-764](https://issues.apache.org/jira/browse/HDFS-764) | Moving Access Token implementation from Common to HDFS |  Major | . | Kan Zhang | Kan Zhang |
| [HDFS-737](https://issues.apache.org/jira/browse/HDFS-737) | Improvement in metasave output |  Major | namenode | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HDFS-660](https://issues.apache.org/jira/browse/HDFS-660) | Remove deprecated methods from InterDatanodeProtocol. |  Major | datanode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-630](https://issues.apache.org/jira/browse/HDFS-630) | In DFSOutputStream.nextBlockOutputStream(), the client can exclude specific datanodes when locating the next block. |  Major | hdfs-client, namenode | Ruyue Ma | Cosmin Lehene |
| [HDFS-618](https://issues.apache.org/jira/browse/HDFS-618) | Support for non-recursive mkdir in HDFS |  Major | hdfs-client, namenode | Kan Zhang | Kan Zhang |
| [HDFS-617](https://issues.apache.org/jira/browse/HDFS-617) | Support for non-recursive create() in HDFS |  Major | hdfs-client, namenode | Kan Zhang | Kan Zhang |
| [HDFS-602](https://issues.apache.org/jira/browse/HDFS-602) | Atempt to make a directory under an existing file on DistributedFileSystem should throw an FileAlreadyExistsException instead of FileNotFoundException |  Major | hdfs-client, namenode | Boris Shkolnik | Boris Shkolnik |
| [HDFS-538](https://issues.apache.org/jira/browse/HDFS-538) | DistributedFileSystem::listStatus incorrectly returns null for empty result sets |  Major | . | Jakob Homan | Jakob Homan |
| [HDFS-514](https://issues.apache.org/jira/browse/HDFS-514) | DFSClient.namenode is a public field. Should be private. |  Major | hdfs-client | Bill Zeller | Bill Zeller |
| [HDFS-512](https://issues.apache.org/jira/browse/HDFS-512) | Set block id as the key to Block |  Major | . | Hairong Kuang | Konstantin Shvachko |
| [HDFS-288](https://issues.apache.org/jira/browse/HDFS-288) | Redundant computation in hashCode() implemenation |  Major | . | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-1607](https://issues.apache.org/jira/browse/MAPREDUCE-1607) | Task controller may not set permissions for a task cleanup attempt's log directory |  Major | task-controller | Hemanth Yamijala | Amareshwari Sriramadasu |
| [MAPREDUCE-1493](https://issues.apache.org/jira/browse/MAPREDUCE-1493) | Authorization for job-history pages |  Major | jobtracker, security | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-1385](https://issues.apache.org/jira/browse/MAPREDUCE-1385) | Make changes to MapReduce for the new UserGroupInformation APIs (HADOOP-6299) |  Major | . | Devaraj Das | Devaraj Das |
| [MAPREDUCE-1307](https://issues.apache.org/jira/browse/MAPREDUCE-1307) | Introduce the concept of Job Permissions |  Major | security | Devaraj Das | Vinod Kumar Vavilapalli |
| [MAPREDUCE-1287](https://issues.apache.org/jira/browse/MAPREDUCE-1287) | Avoid calling Partitioner with only 1 reducer |  Minor | . | Ed Mazur | Chris Douglas |
| [MAPREDUCE-1218](https://issues.apache.org/jira/browse/MAPREDUCE-1218) | Collecting cpu and memory usage for TaskTrackers |  Major | . | Scott Chen | Scott Chen |
| [MAPREDUCE-1213](https://issues.apache.org/jira/browse/MAPREDUCE-1213) | TaskTrackers restart is very slow because it deletes distributed cache directory synchronously |  Major | . | dhruba borthakur | Zheng Shao |
| [MAPREDUCE-1097](https://issues.apache.org/jira/browse/MAPREDUCE-1097) | Changes/fixes to support Vertica 3.5 |  Minor | contrib/vertica | Omer Trajman | Omer Trajman |
| [MAPREDUCE-967](https://issues.apache.org/jira/browse/MAPREDUCE-967) | TaskTracker does not need to fully unjar job jars |  Major | tasktracker | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-963](https://issues.apache.org/jira/browse/MAPREDUCE-963) | mapred's FileAlreadyExistsException should be deprecated in favor of hadoop-common's one. |  Major | . | Boris Shkolnik | Boris Shkolnik |
| [MAPREDUCE-899](https://issues.apache.org/jira/browse/MAPREDUCE-899) | When using LinuxTaskController, localized files may become accessible to unintended users if permissions are misconfigured. |  Major | tasktracker | Vinod Kumar Vavilapalli | Amareshwari Sriramadasu |
| [MAPREDUCE-895](https://issues.apache.org/jira/browse/MAPREDUCE-895) | FileSystem::ListStatus will now throw FileNotFoundException, MapRed needs updated |  Major | . | Jakob Homan | Jakob Homan |
| [MAPREDUCE-873](https://issues.apache.org/jira/browse/MAPREDUCE-873) | Simplify Job Recovery |  Major | jobtracker | Devaraj Das | Sharad Agarwal |
| [MAPREDUCE-862](https://issues.apache.org/jira/browse/MAPREDUCE-862) | Modify UI to support a hierarchy of queues |  Major | . | Hemanth Yamijala | V.V.Chaitanya Krishna |
| [MAPREDUCE-849](https://issues.apache.org/jira/browse/MAPREDUCE-849) | Renaming of configuration property names in mapreduce |  Major | . | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-817](https://issues.apache.org/jira/browse/MAPREDUCE-817) | Add a cache for retired jobs with minimal job info and provide a way to access history file url |  Major | client, jobtracker | Sharad Agarwal | Sharad Agarwal |
| [MAPREDUCE-777](https://issues.apache.org/jira/browse/MAPREDUCE-777) | A method for finding and tracking jobs from the new API |  Major | client | Owen O'Malley | Amareshwari Sriramadasu |
| [MAPREDUCE-772](https://issues.apache.org/jira/browse/MAPREDUCE-772) | Chaging LineRecordReader algo so that it does not need to skip backwards in the stream |  Major | . | Abdul Qadeer | Abdul Qadeer |
| [MAPREDUCE-766](https://issues.apache.org/jira/browse/MAPREDUCE-766) | Enhance -list-blacklisted-trackers to display host name, blacklisted reason and blacklist report. |  Major | . | Sreekanth Ramakrishnan | Sreekanth Ramakrishnan |
| [MAPREDUCE-711](https://issues.apache.org/jira/browse/MAPREDUCE-711) | Move Distributed Cache from Common to Map/Reduce |  Major | . | Owen O'Malley | Vinod Kumar Vavilapalli |
| [MAPREDUCE-516](https://issues.apache.org/jira/browse/MAPREDUCE-516) | Fix the 'cluster drain' problem in the Capacity Scheduler wrt High RAM Jobs |  Major | . | Arun C Murthy | Arun C Murthy |
| [MAPREDUCE-479](https://issues.apache.org/jira/browse/MAPREDUCE-479) | Add reduce ID to shuffle clienttrace |  Minor | . | Jiaqi Tan | Jiaqi Tan |
| [MAPREDUCE-358](https://issues.apache.org/jira/browse/MAPREDUCE-358) | Change org.apache.hadoop.examples. AggregateWordCount and  org.apache.hadoop.examples.AggregateWordHistogram to use new mapreduce api. |  Major | . | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-355](https://issues.apache.org/jira/browse/MAPREDUCE-355) | Change org.apache.hadoop.mapred.join to use new api |  Major | . | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-245](https://issues.apache.org/jira/browse/MAPREDUCE-245) | Job and JobControl classes should return interfaces rather than implementations |  Major | . | Tom White | Tom White |
| [MAPREDUCE-157](https://issues.apache.org/jira/browse/MAPREDUCE-157) | Job History log file format is not friendly for external tools. |  Major | . | Owen O'Malley | Jothi Padmanabhan |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6869](https://issues.apache.org/jira/browse/HADOOP-6869) | Functionality to create file or folder on a remote daemon side |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [HADOOP-6566](https://issues.apache.org/jira/browse/HADOOP-6566) | Hadoop daemons should not start up if the ownership/permissions on the directories used at runtime are misconfigured |  Major | security | Devaraj Das | Arun C Murthy |
| [HADOOP-6547](https://issues.apache.org/jira/browse/HADOOP-6547) | Move the Delegation Token feature to common since both HDFS and MapReduce needs it |  Major | security | Devaraj Das | Devaraj Das |
| [HADOOP-6497](https://issues.apache.org/jira/browse/HADOOP-6497) | Introduce wrapper around FSDataInputStream providing Avro SeekableInput interface |  Major | fs | Aaron Kimball | Aaron Kimball |
| [HADOOP-6419](https://issues.apache.org/jira/browse/HADOOP-6419) | Change RPC layer to support SASL based mutual authentication |  Major | security | Kan Zhang | Kan Zhang |
| [HADOOP-6415](https://issues.apache.org/jira/browse/HADOOP-6415) | Adding a common token interface for both job token and delegation token |  Major | security | Kan Zhang | Kan Zhang |
| [HADOOP-6332](https://issues.apache.org/jira/browse/HADOOP-6332) | Large-scale Automated Test Framework |  Major | test | Arun C Murthy | Konstantin Boudnik |
| [HADOOP-6323](https://issues.apache.org/jira/browse/HADOOP-6323) | Serialization should provide comparators |  Major | io | Doug Cutting | Aaron Kimball |
| [HADOOP-6313](https://issues.apache.org/jira/browse/HADOOP-6313) | Expose flush APIs to application users |  Major | fs | Hairong Kuang | Hairong Kuang |
| [HADOOP-6270](https://issues.apache.org/jira/browse/HADOOP-6270) | FileContext needs to provide deleteOnExit functionality |  Major | fs | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-6235](https://issues.apache.org/jira/browse/HADOOP-6235) | Adding a new method for getting server default values from a FileSystem |  Major | fs | Kan Zhang | Kan Zhang |
| [HADOOP-6173](https://issues.apache.org/jira/browse/HADOOP-6173) | src/native/packageNativeHadoop.sh only packages files with "hadoop" in the name |  Minor | build, scripts | Hong Tang | Hong Tang |
| [HADOOP-6165](https://issues.apache.org/jira/browse/HADOOP-6165) | Add metadata to Serializations |  Blocker | contrib/serialization | Tom White | Tom White |
| [HADOOP-5469](https://issues.apache.org/jira/browse/HADOOP-5469) | Exposing Hadoop metrics via HTTP |  Major | metrics | Philip Zeyliger | Philip Zeyliger |
| [HADOOP-5232](https://issues.apache.org/jira/browse/HADOOP-5232) | preparing HadoopPatchQueueAdmin.sh,test-patch.sh scripts to run builds on hudson slaves. |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-4952](https://issues.apache.org/jira/browse/HADOOP-4952) | Improved files system interface for the application writer. |  Major | fs | Sanjay Radia | Sanjay Radia |
| [HADOOP-4829](https://issues.apache.org/jira/browse/HADOOP-4829) | Allow FileSystem shutdown hook to be disabled |  Minor | fs | Bryan Duxbury | Todd Lipcon |
| [HADOOP-4012](https://issues.apache.org/jira/browse/HADOOP-4012) | Providing splitting support for bzip2 compressed files |  Major | io | Abdul Qadeer | Abdul Qadeer |
| [HDFS-814](https://issues.apache.org/jira/browse/HDFS-814) | Add an api to get the visible length of a DFSDataInputStream. |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-702](https://issues.apache.org/jira/browse/HDFS-702) | Add Hdfs Impl for the new file system interface |  Major | namenode | Sanjay Radia | Sanjay Radia |
| [HDFS-610](https://issues.apache.org/jira/browse/HDFS-610) | Add support for FileContext |  Major | hdfs-client, namenode | Sanjay Radia | Sanjay Radia |
| [HDFS-595](https://issues.apache.org/jira/browse/HDFS-595) | FsPermission tests need to be updated for new octal configuration parameter from HADOOP-6234 |  Major | hdfs-client | Jakob Homan | Jakob Homan |
| [HDFS-567](https://issues.apache.org/jira/browse/HDFS-567) | Two contrib tools to facilitate searching for block history information |  Major | tools | Bill Zeller | Jitendra Nath Pandey |
| [HDFS-503](https://issues.apache.org/jira/browse/HDFS-503) | Implement erasure coding as a layer on HDFS |  Major | contrib/raid | dhruba borthakur | dhruba borthakur |
| [HDFS-492](https://issues.apache.org/jira/browse/HDFS-492) | Expose corrupt replica/block information |  Major | namenode | Bill Zeller | Bill Zeller |
| [HDFS-461](https://issues.apache.org/jira/browse/HDFS-461) | Analyzing file size distribution. |  Major | test, tools | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-458](https://issues.apache.org/jira/browse/HDFS-458) | Create target for 10 minute patch test build for hdfs |  Major | build, test | Jakob Homan | Jakob Homan |
| [HDFS-447](https://issues.apache.org/jira/browse/HDFS-447) | proxy to call LDAP for IP lookup and get user ID and directories, validate requested URL |  Critical | contrib/hdfsproxy | zhiyong zhang | zhiyong zhang |
| [HDFS-204](https://issues.apache.org/jira/browse/HDFS-204) | Revive number of files listed metrics |  Major | namenode | Koji Noguchi | Jitendra Nath Pandey |
| [MAPREDUCE-1774](https://issues.apache.org/jira/browse/MAPREDUCE-1774) | Large-scale Automated Framework |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [MAPREDUCE-1673](https://issues.apache.org/jira/browse/MAPREDUCE-1673) | Start and Stop scripts for the RaidNode |  Major | contrib/raid | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-1304](https://issues.apache.org/jira/browse/MAPREDUCE-1304) | Add counters for task time spent in GC |  Major | task | Todd Lipcon | Aaron Kimball |
| [MAPREDUCE-1295](https://issues.apache.org/jira/browse/MAPREDUCE-1295) | We need a job trace manipulator to build gridmix runs. |  Major | tools/rumen | Dick King | Dick King |
| [MAPREDUCE-1167](https://issues.apache.org/jira/browse/MAPREDUCE-1167) | Make ProcfsBasedProcessTree collect rss memory information |  Major | tasktracker | Scott Chen | Scott Chen |
| [MAPREDUCE-1074](https://issues.apache.org/jira/browse/MAPREDUCE-1074) | Provide documentation for Mark/Reset functionality |  Major | documentation | Jothi Padmanabhan | Jothi Padmanabhan |
| [MAPREDUCE-824](https://issues.apache.org/jira/browse/MAPREDUCE-824) | Support a hierarchy of queues in the capacity scheduler |  Major | capacity-sched | Hemanth Yamijala | rahul k singh |
| [MAPREDUCE-800](https://issues.apache.org/jira/browse/MAPREDUCE-800) | MRUnit should support the new API |  Major | contrib/mrunit | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-798](https://issues.apache.org/jira/browse/MAPREDUCE-798) | MRUnit should be able to test a succession of MapReduce passes |  Major | contrib/mrunit | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-777](https://issues.apache.org/jira/browse/MAPREDUCE-777) | A method for finding and tracking jobs from the new API |  Major | client | Owen O'Malley | Amareshwari Sriramadasu |
| [MAPREDUCE-776](https://issues.apache.org/jira/browse/MAPREDUCE-776) | Gridmix: Trace-based benchmark for Map/Reduce |  Major | benchmarks | Chris Douglas | Chris Douglas |
| [MAPREDUCE-775](https://issues.apache.org/jira/browse/MAPREDUCE-775) | Add input/output formatters for Vertica clustered ADBMS. |  Major | contrib/vertica | Omer Trajman | Omer Trajman |
| [MAPREDUCE-751](https://issues.apache.org/jira/browse/MAPREDUCE-751) | Rumen: a tool to extract job characterization data from job tracker logs |  Major | tools/rumen | Dick King | Dick King |
| [MAPREDUCE-740](https://issues.apache.org/jira/browse/MAPREDUCE-740) | Provide summary information per job once a job is finished. |  Major | jobtracker | Hong Tang | Arun C Murthy |
| [MAPREDUCE-707](https://issues.apache.org/jira/browse/MAPREDUCE-707) | Provide a jobconf property for explicitly assigning a job to a pool |  Trivial | contrib/fair-share | Matei Zaharia | Alan Heirich |
| [MAPREDUCE-706](https://issues.apache.org/jira/browse/MAPREDUCE-706) | Support for FIFO pools in the fair scheduler |  Major | contrib/fair-share | Matei Zaharia | Matei Zaharia |
| [MAPREDUCE-698](https://issues.apache.org/jira/browse/MAPREDUCE-698) | Per-pool task limits for the fair scheduler |  Major | contrib/fair-share | Matei Zaharia | Kevin Peterson |
| [MAPREDUCE-679](https://issues.apache.org/jira/browse/MAPREDUCE-679) | XML-based metrics as JSP servlet for JobTracker |  Major | jobtracker | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-567](https://issues.apache.org/jira/browse/MAPREDUCE-567) | Add a new example MR that always fails |  Major | examples | Philip Zeyliger | Philip Zeyliger |
| [MAPREDUCE-551](https://issues.apache.org/jira/browse/MAPREDUCE-551) | Add preemption to the fair scheduler |  Major | contrib/fair-share | Matei Zaharia | Matei Zaharia |
| [MAPREDUCE-532](https://issues.apache.org/jira/browse/MAPREDUCE-532) | Allow admins of the Capacity Scheduler to set a hard-limit on the capacity of a queue |  Major | capacity-sched | Rajiv Chittajallu | rahul k singh |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6813](https://issues.apache.org/jira/browse/HADOOP-6813) | Add a new newInstance method in FileSystem that takes a "user" as argument |  Blocker | fs | Devaraj Das | Devaraj Das |
| [HADOOP-6798](https://issues.apache.org/jira/browse/HADOOP-6798) | Align Ivy version for all Hadoop subprojects. |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6794](https://issues.apache.org/jira/browse/HADOOP-6794) | Move configuration and script files post split |  Blocker | conf, scripts | Tom White | Tom White |
| [HADOOP-6777](https://issues.apache.org/jira/browse/HADOOP-6777) | Implement a functionality for suspend and resume a process. |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [HADOOP-6717](https://issues.apache.org/jira/browse/HADOOP-6717) | Log levels in o.a.h.security.Groups too high |  Trivial | security | Todd Lipcon | Todd Lipcon |
| [HADOOP-6713](https://issues.apache.org/jira/browse/HADOOP-6713) | The RPC server Listener thread is a scalability bottleneck |  Major | ipc | dhruba borthakur | Dmytro Molkov |
| [HADOOP-6709](https://issues.apache.org/jira/browse/HADOOP-6709) | Re-instate deprecated FileSystem methods that were removed after 0.20 |  Blocker | fs | Tom White | Tom White |
| [HADOOP-6678](https://issues.apache.org/jira/browse/HADOOP-6678) | Remove FileContext#isFile, isDirectory and exists |  Major | fs | Hairong Kuang | Eli Collins |
| [HADOOP-6635](https://issues.apache.org/jira/browse/HADOOP-6635) | Install or deploy source jars to maven repo |  Major | build | Patrick Angeles | Patrick Angeles |
| [HADOOP-6589](https://issues.apache.org/jira/browse/HADOOP-6589) | Better error messages for RPC clients when authentication fails |  Major | ipc, security | Kan Zhang | Kan Zhang |
| [HADOOP-6585](https://issues.apache.org/jira/browse/HADOOP-6585) | Add FileStatus#isDirectory and isFile |  Blocker | fs | Eli Collins | Eli Collins |
| [HADOOP-6583](https://issues.apache.org/jira/browse/HADOOP-6583) | Capture metrics for authentication/authorization at the RPC layer |  Major | ipc, security | Devaraj Das | Devaraj Das |
| [HADOOP-6582](https://issues.apache.org/jira/browse/HADOOP-6582) | Token class should have a toString, equals and hashcode method |  Major | security | Devaraj Das | Boris Shkolnik |
| [HADOOP-6579](https://issues.apache.org/jira/browse/HADOOP-6579) | A utility for reading and writing tokens into a URL safe string. |  Major | security | Owen O'Malley | Owen O'Malley |
| [HADOOP-6569](https://issues.apache.org/jira/browse/HADOOP-6569) | FsShell#cat should avoid calling unecessary getFileStatus before opening a file to read |  Major | fs | Hairong Kuang | Hairong Kuang |
| [HADOOP-6559](https://issues.apache.org/jira/browse/HADOOP-6559) | The RPC client should try to re-login when it detects that the TGT expired |  Major | security | Devaraj Das | Devaraj Das |
| [HADOOP-6543](https://issues.apache.org/jira/browse/HADOOP-6543) | Allow authentication-enabled RPC clients to connect to authentication-disabled RPC servers |  Major | ipc, security | Kan Zhang | Kan Zhang |
| [HADOOP-6534](https://issues.apache.org/jira/browse/HADOOP-6534) | LocalDirAllocator should use whitespace trimming configuration getters |  Major | conf, fs | Todd Lipcon | Todd Lipcon |
| [HADOOP-6531](https://issues.apache.org/jira/browse/HADOOP-6531) | add FileUtil.fullyDeleteContents(dir) api to delete contents of a directory |  Minor | fs | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-6518](https://issues.apache.org/jira/browse/HADOOP-6518) | Kerberos login in UGI should honor KRB5CCNAME |  Major | security | Owen O'Malley | Owen O'Malley |
| [HADOOP-6479](https://issues.apache.org/jira/browse/HADOOP-6479) | TestUTF8 assertions could fail with better text |  Minor | test | Steve Loughran | Steve Loughran |
| [HADOOP-6467](https://issues.apache.org/jira/browse/HADOOP-6467) | Performance improvement for liststatus on directories in hadoop archives. |  Major | fs | Mahadev konar | Mahadev konar |
| [HADOOP-6443](https://issues.apache.org/jira/browse/HADOOP-6443) | Serialization classes accept invalid metadata |  Major | io | Aaron Kimball | Aaron Kimball |
| [HADOOP-6435](https://issues.apache.org/jira/browse/HADOOP-6435) | Make RPC.waitForProxy with timeout public |  Major | ipc | Steve Loughran | Steve Loughran |
| [HADOOP-6420](https://issues.apache.org/jira/browse/HADOOP-6420) | String-to-String Maps should be embeddable in Configuration |  Major | conf | Aaron Kimball | Aaron Kimball |
| [HADOOP-6413](https://issues.apache.org/jira/browse/HADOOP-6413) | Move TestReflectionUtils to Common |  Major | test | Todd Lipcon | Todd Lipcon |
| [HADOOP-6407](https://issues.apache.org/jira/browse/HADOOP-6407) | Have a way to automatically update Eclipse .classpath file when new libs are added to the classpath through Ivy |  Minor | build | Konstantin Boudnik | Tom White |
| [HADOOP-6403](https://issues.apache.org/jira/browse/HADOOP-6403) | Deprecate EC2 bash scripts |  Major | contrib/cloud | Tom White | Tom White |
| [HADOOP-6400](https://issues.apache.org/jira/browse/HADOOP-6400) | Log errors getting Unix UGI |  Minor | security | Todd Lipcon | Todd Lipcon |
| [HADOOP-6394](https://issues.apache.org/jira/browse/HADOOP-6394) | Helper class for FileContext tests |  Major | test | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HADOOP-6367](https://issues.apache.org/jira/browse/HADOOP-6367) | Move Access Token implementation from Common to HDFS |  Major | security | Kan Zhang | Kan Zhang |
| [HADOOP-6343](https://issues.apache.org/jira/browse/HADOOP-6343) | Stack trace of any runtime exceptions should be recorded in the server logs. |  Major | ipc | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HADOOP-6326](https://issues.apache.org/jira/browse/HADOOP-6326) | Hundson runs should check for AspectJ warnings and report failure if any is present |  Critical | build | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6318](https://issues.apache.org/jira/browse/HADOOP-6318) | Upgrade to Avro 1.2.0 |  Major | io, ipc | Doug Cutting | Doug Cutting |
| [HADOOP-6307](https://issues.apache.org/jira/browse/HADOOP-6307) | Support reading on un-closed SequenceFile |  Major | io | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6305](https://issues.apache.org/jira/browse/HADOOP-6305) | Unify build property names to facilitate cross-projects modifications |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6299](https://issues.apache.org/jira/browse/HADOOP-6299) | Use JAAS LoginContext for our login |  Major | security | Arun C Murthy | Owen O'Malley |
| [HADOOP-6271](https://issues.apache.org/jira/browse/HADOOP-6271) | Fix FileContext to allow both recursive and non recursive create and mkdir |  Major | fs | Sanjay Radia | Sanjay Radia |
| [HADOOP-6268](https://issues.apache.org/jira/browse/HADOOP-6268) | Add ivy jar to .gitignore |  Minor | build | Todd Lipcon | Todd Lipcon |
| [HADOOP-6267](https://issues.apache.org/jira/browse/HADOOP-6267) | build-contrib.xml unnecessarily enforces that contrib projects be located in contrib/ dir |  Minor | build | Todd Lipcon | Todd Lipcon |
| [HADOOP-6252](https://issues.apache.org/jira/browse/HADOOP-6252) | Provide method to determine if a deprecated key was set in the config file |  Major | conf | Jakob Homan | Jakob Homan |
| [HADOOP-6246](https://issues.apache.org/jira/browse/HADOOP-6246) | Update umask code to use key deprecation facilities from HADOOP-6105 |  Major | fs | Jakob Homan | Jakob Homan |
| [HADOOP-6233](https://issues.apache.org/jira/browse/HADOOP-6233) | Changes in common to rename the config keys as detailed in HDFS-531. |  Major | fs | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HADOOP-6224](https://issues.apache.org/jira/browse/HADOOP-6224) | Add a method to WritableUtils performing a bounded read of a String |  Major | io | Jothi Padmanabhan | Jothi Padmanabhan |
| [HADOOP-6216](https://issues.apache.org/jira/browse/HADOOP-6216) | HDFS Web UI displays comments from dfs.exclude file and counts them as dead nodes |  Major | util | Jim Huang | Ravi Phulari |
| [HADOOP-6204](https://issues.apache.org/jira/browse/HADOOP-6204) | Implementing aspects development and fault injeciton framework for Hadoop |  Major | build, test | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6203](https://issues.apache.org/jira/browse/HADOOP-6203) | Improve error message when moving to trash fails due to quota issue |  Major | fs | Jakob Homan | Boris Shkolnik |
| [HADOOP-6201](https://issues.apache.org/jira/browse/HADOOP-6201) | FileSystem::ListStatus should throw FileNotFoundException |  Major | fs | Jakob Homan | Jakob Homan |
| [HADOOP-6166](https://issues.apache.org/jira/browse/HADOOP-6166) | Improve PureJavaCrc32 |  Major | performance, util | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6161](https://issues.apache.org/jira/browse/HADOOP-6161) | Add get/setEnum to Configuration |  Minor | conf | Chris Douglas | Chris Douglas |
| [HADOOP-6160](https://issues.apache.org/jira/browse/HADOOP-6160) | releaseaudit (rats) should not be run againt the entire release binary |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-6150](https://issues.apache.org/jira/browse/HADOOP-6150) | Need to be able to instantiate a comparator instance from a comparator string without creating a TFile.Reader object |  Minor | io | Hong Tang | Hong Tang |
| [HADOOP-6148](https://issues.apache.org/jira/browse/HADOOP-6148) | Implement a pure Java CRC32 calculator |  Major | performance, util | Owen O'Malley | Scott Carey |
| [HADOOP-6146](https://issues.apache.org/jira/browse/HADOOP-6146) | Upgrade to JetS3t version 0.7.1 |  Major | fs/s3 | Tom White | Tom White |
| [HADOOP-6133](https://issues.apache.org/jira/browse/HADOOP-6133) | ReflectionUtils performance regression |  Major | conf | Todd Lipcon | Todd Lipcon |
| [HADOOP-6109](https://issues.apache.org/jira/browse/HADOOP-6109) | Handle large (several MB) text input lines in a reasonable amount of time |  Major | io | thushara wijeratna | thushara wijeratna |
| [HADOOP-6106](https://issues.apache.org/jira/browse/HADOOP-6106) | Provide an option in ShellCommandExecutor to timeout commands that do not complete within a certain amount of time. |  Major | util | Hemanth Yamijala | Sreekanth Ramakrishnan |
| [HADOOP-6105](https://issues.apache.org/jira/browse/HADOOP-6105) | Provide a way to automatically handle backward compatibility of deprecated keys |  Major | conf | Hemanth Yamijala | V.V.Chaitanya Krishna |
| [HADOOP-6099](https://issues.apache.org/jira/browse/HADOOP-6099) | Allow configuring the IPC module to send pings |  Major | ipc | dhruba borthakur | dhruba borthakur |
| [HADOOP-5976](https://issues.apache.org/jira/browse/HADOOP-5976) | create script to provide classpath for external tools |  Major | scripts | Owen O'Malley | Owen O'Malley |
| [HADOOP-5925](https://issues.apache.org/jira/browse/HADOOP-5925) | EC2 scripts should exit on error |  Major | contrib/cloud | Tom White | Tom White |
| [HADOOP-5897](https://issues.apache.org/jira/browse/HADOOP-5897) | Add more Metrics to Namenode to capture heap usage |  Major | metrics | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-5879](https://issues.apache.org/jira/browse/HADOOP-5879) | GzipCodec should read compression level etc from configuration |  Major | io | Zheng Shao | He Yongqiang |
| [HADOOP-5867](https://issues.apache.org/jira/browse/HADOOP-5867) | Cleaning NNBench\* off javac warnings |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-5858](https://issues.apache.org/jira/browse/HADOOP-5858) | Eliminate UTF8 and fix warnings in test/hdfs-with-mr package |  Major | test | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-5839](https://issues.apache.org/jira/browse/HADOOP-5839) | fixes to ec2 scripts to allow remote job submission |  Major | contrib/cloud | Joydeep Sen Sarma | Joydeep Sen Sarma |
| [HADOOP-5822](https://issues.apache.org/jira/browse/HADOOP-5822) | Fix javac warnings in several dfs tests related to unncessary casts |  Major | test | Jakob Homan | Jakob Homan |
| [HADOOP-5771](https://issues.apache.org/jira/browse/HADOOP-5771) | Create unit test for LinuxTaskController |  Major | security, test | Sreekanth Ramakrishnan | Sreekanth Ramakrishnan |
| [HADOOP-5733](https://issues.apache.org/jira/browse/HADOOP-5733) | Add map/reduce slot capacity and lost map/reduce slot capacity to JobTracker metrics |  Major | metrics | Hong Tang | Sreekanth Ramakrishnan |
| [HADOOP-5657](https://issues.apache.org/jira/browse/HADOOP-5657) | Validate data passed through TestReduceFetch |  Minor | test | Chris Douglas | Chris Douglas |
| [HADOOP-5613](https://issues.apache.org/jira/browse/HADOOP-5613) | change S3Exception to checked exception |  Minor | fs/s3 | Andrew Hitchcock | Andrew Hitchcock |
| [HADOOP-5596](https://issues.apache.org/jira/browse/HADOOP-5596) | Make ObjectWritable support EnumSet |  Major | io | He Yongqiang | He Yongqiang |
| [HADOOP-5502](https://issues.apache.org/jira/browse/HADOOP-5502) | Backup and checkpoint nodes should be documented |  Major | documentation | Konstantin Shvachko | Jakob Homan |
| [HADOOP-5455](https://issues.apache.org/jira/browse/HADOOP-5455) | default "hadoop-metrics.properties" doesn't mention "rpc" context |  Minor | documentation, metrics | Philip Zeyliger | Philip Zeyliger |
| [HADOOP-5438](https://issues.apache.org/jira/browse/HADOOP-5438) | Merge FileSystem.create and FileSystem.append |  Major | fs | He Yongqiang | He Yongqiang |
| [HADOOP-5423](https://issues.apache.org/jira/browse/HADOOP-5423) | It should be posible to specify metadata for the output file produced by SequenceFile.Sorter.sort |  Major | io | Michael Tamm | Michael Tamm |
| [HADOOP-5317](https://issues.apache.org/jira/browse/HADOOP-5317) | Provide documentation for LazyOutput Feature |  Major | documentation | Jothi Padmanabhan | Jothi Padmanabhan |
| [HADOOP-5240](https://issues.apache.org/jira/browse/HADOOP-5240) | 'ant javadoc' does not check whether outputs are up to date and always rebuilds |  Major | build | Aaron Kimball | Aaron Kimball |
| [HADOOP-5196](https://issues.apache.org/jira/browse/HADOOP-5196) | avoiding unnecessary byte[] allocation in SequenceFile.CompressedBytes and SequenceFile.UncompressedBytes |  Minor | io | Hong Tang | Hong Tang |
| [HADOOP-5176](https://issues.apache.org/jira/browse/HADOOP-5176) | TestDFSIO reports itself as TestFDSIO |  Trivial | benchmarks | Bryan Duxbury | Ravi Phulari |
| [HADOOP-5135](https://issues.apache.org/jira/browse/HADOOP-5135) | Separate the core, hdfs and mapred junit tests |  Major | build | Sharad Agarwal | Sharad Agarwal |
| [HADOOP-5107](https://issues.apache.org/jira/browse/HADOOP-5107) | split the core, hdfs, and mapred jars from each other and publish them independently to the Maven repository |  Major | build | Owen O'Malley | Giridharan Kesavan |
| [HADOOP-5101](https://issues.apache.org/jira/browse/HADOOP-5101) | optimizing build.xml target dependencies |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-5088](https://issues.apache.org/jira/browse/HADOOP-5088) | include releaseaudit as part of  test-patch.sh script |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-4936](https://issues.apache.org/jira/browse/HADOOP-4936) | Improvements to TestSafeMode |  Major | test | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-4868](https://issues.apache.org/jira/browse/HADOOP-4868) | Split the hadoop script into 3 parts |  Major | scripts | Sharad Agarwal | Sharad Agarwal |
| [HADOOP-4794](https://issues.apache.org/jira/browse/HADOOP-4794) | separate branch for HadoopVersionAnnotation |  Major | build | Owen O'Malley | Chris Douglas |
| [HADOOP-4656](https://issues.apache.org/jira/browse/HADOOP-4656) | Add a user to groups mapping service |  Major | security | Arun C Murthy | Boris Shkolnik |
| [HADOOP-4365](https://issues.apache.org/jira/browse/HADOOP-4365) | Configuration.getProps() should be made protected for ease of overriding |  Major | conf | Steve Loughran | Steve Loughran |
| [HADOOP-4191](https://issues.apache.org/jira/browse/HADOOP-4191) | Add a testcase for jobhistory |  Major | test | Amar Kamat | Ravi Gummadi |
| [HADOOP-3659](https://issues.apache.org/jira/browse/HADOOP-3659) | Patch to allow hadoop native to compile on Mac OS X |  Minor | native | Colin Evans | Colin Evans |
| [HADOOP-2898](https://issues.apache.org/jira/browse/HADOOP-2898) | HOD should allow setting MapReduce UI ports within a port range |  Blocker | contrib/hod | Luca Telloli | Peeyush Bishnoi |
| [HDFS-1199](https://issues.apache.org/jira/browse/HDFS-1199) | Extract a subset of tests for smoke (DOA) validation. |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-1170](https://issues.apache.org/jira/browse/HDFS-1170) | Add more assertions to TestLargeDirectoryDelete |  Minor | test | Steve Loughran | Steve Loughran |
| [HDFS-1161](https://issues.apache.org/jira/browse/HDFS-1161) | Make DN minimum valid volumes configurable |  Blocker | datanode | Eli Collins | Eli Collins |
| [HDFS-1134](https://issues.apache.org/jira/browse/HDFS-1134) | Large-scale Automated Framework |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-1107](https://issues.apache.org/jira/browse/HDFS-1107) | Turn on append by default. |  Blocker | hdfs-client | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-1092](https://issues.apache.org/jira/browse/HDFS-1092) | Use logging rather than System.err in MiniDFSCluster |  Minor | test | Karthik K | Karthik K |
| [HDFS-1089](https://issues.apache.org/jira/browse/HDFS-1089) | Remove uses of FileContext#isFile, isDirectory and exists |  Major | test | Eli Collins | Eli Collins |
| [HDFS-1087](https://issues.apache.org/jira/browse/HDFS-1087) | Use StringBuilder instead of Formatter for audit logs |  Minor | namenode | Chris Douglas | Chris Douglas |
| [HDFS-1083](https://issues.apache.org/jira/browse/HDFS-1083) | Update TestHDFSCLI to not to expect exception class name in the error messages |  Minor | test | Suresh Srinivas | Suresh Srinivas |
| [HDFS-1078](https://issues.apache.org/jira/browse/HDFS-1078) | update libhdfs build process to produce static libraries |  Minor | libhdfs | sam rash | sam rash |
| [HDFS-1054](https://issues.apache.org/jira/browse/HDFS-1054) | Remove unnecessary sleep after failure in nextBlockOutputStream |  Major | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-1047](https://issues.apache.org/jira/browse/HDFS-1047) | Install/deploy source jars to Maven repo |  Major | build | Patrick Angeles | Patrick Angeles |
| [HDFS-1016](https://issues.apache.org/jira/browse/HDFS-1016) | HDFS side change for HADOOP-6569 |  Major | hdfs-client | Hairong Kuang | Hairong Kuang |
| [HDFS-1012](https://issues.apache.org/jira/browse/HDFS-1012) | documentLocation attribute in LdapEntry for HDFSProxy isn't specific to a cluster |  Major | contrib/hdfsproxy | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [HDFS-1011](https://issues.apache.org/jira/browse/HDFS-1011) | Improve Logging in HDFSProxy to include cluster name associated with the request |  Minor | contrib/hdfsproxy | Srikanth Sundarrajan | Ramesh Sekaran |
| [HDFS-1009](https://issues.apache.org/jira/browse/HDFS-1009) | Support Kerberos authorization in HDFSProxy |  Major | contrib/hdfsproxy | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [HDFS-997](https://issues.apache.org/jira/browse/HDFS-997) | DataNode local directories should have narrow permissions |  Major | datanode | Arun C Murthy | Luke Lu |
| [HDFS-949](https://issues.apache.org/jira/browse/HDFS-949) | Move Delegation token into Common so that we can use it for MapReduce also |  Major | security | Owen O'Malley | Owen O'Malley |
| [HDFS-930](https://issues.apache.org/jira/browse/HDFS-930) | o.a.h.hdfs.server.datanode.DataXceiver - run() - Version mismatch exception - more context to help debugging |  Minor | documentation | Karthik K | Karthik K |
| [HDFS-921](https://issues.apache.org/jira/browse/HDFS-921) | Convert TestDFSClientRetries::testNotYetReplicatedErrors to Mockito |  Major | test | Jakob Homan | Jakob Homan |
| [HDFS-892](https://issues.apache.org/jira/browse/HDFS-892) | optionally use Avro for namenode RPC |  Major | namenode | Doug Cutting | Doug Cutting |
| [HDFS-883](https://issues.apache.org/jira/browse/HDFS-883) | Datanode shutdown should log problems with Storage.unlockAll() |  Minor | datanode | Steve Loughran | Steve Loughran |
| [HDFS-873](https://issues.apache.org/jira/browse/HDFS-873) | DataNode directories as URIs |  Major | datanode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-854](https://issues.apache.org/jira/browse/HDFS-854) | Datanode should scan devices in parallel to generate block report |  Major | datanode | dhruba borthakur | Dmytro Molkov |
| [HDFS-832](https://issues.apache.org/jira/browse/HDFS-832) | HDFS side of HADOOP-6222. |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-826](https://issues.apache.org/jira/browse/HDFS-826) | Allow a mechanism for an application to detect that datanode(s)  have died in the write pipeline |  Major | hdfs-client | dhruba borthakur | dhruba borthakur |
| [HDFS-822](https://issues.apache.org/jira/browse/HDFS-822) | Appends to already-finalized blocks can rename across volumes |  Blocker | datanode | Todd Lipcon | Hairong Kuang |
| [HDFS-806](https://issues.apache.org/jira/browse/HDFS-806) | Add new unit tests to the 10-mins 'run-commit-test' target |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-800](https://issues.apache.org/jira/browse/HDFS-800) | The last block of a file under construction may change to the COMPLETE state in response to getAdditionalBlock or completeFileInternal |  Major | namenode | Hairong Kuang | Hairong Kuang |
| [HDFS-755](https://issues.apache.org/jira/browse/HDFS-755) | Read multiple checksum chunks at once in DFSInputStream |  Major | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-737](https://issues.apache.org/jira/browse/HDFS-737) | Improvement in metasave output |  Major | namenode | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HDFS-736](https://issues.apache.org/jira/browse/HDFS-736) | commitBlockSynchronization() should directly update block GS and length. |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-729](https://issues.apache.org/jira/browse/HDFS-729) | fsck option to list only corrupted files |  Major | namenode | dhruba borthakur | Rodrigo Schmidt |
| [HDFS-704](https://issues.apache.org/jira/browse/HDFS-704) | Unify build property names to facilitate cross-projects modifications |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-703](https://issues.apache.org/jira/browse/HDFS-703) | Replace current fault injection implementation with one from Common |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-685](https://issues.apache.org/jira/browse/HDFS-685) | Use the user-to-groups mapping service in the NameNode |  Major | namenode | Arun C Murthy | Boris Shkolnik |
| [HDFS-631](https://issues.apache.org/jira/browse/HDFS-631) | Changes in HDFS to rename the config keys as detailed in HDFS-531. |  Major | datanode, hdfs-client, namenode, test | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HDFS-630](https://issues.apache.org/jira/browse/HDFS-630) | In DFSOutputStream.nextBlockOutputStream(), the client can exclude specific datanodes when locating the next block. |  Major | hdfs-client, namenode | Ruyue Ma | Cosmin Lehene |
| [HDFS-618](https://issues.apache.org/jira/browse/HDFS-618) | Support for non-recursive mkdir in HDFS |  Major | hdfs-client, namenode | Kan Zhang | Kan Zhang |
| [HDFS-617](https://issues.apache.org/jira/browse/HDFS-617) | Support for non-recursive create() in HDFS |  Major | hdfs-client, namenode | Kan Zhang | Kan Zhang |
| [HDFS-605](https://issues.apache.org/jira/browse/HDFS-605) | There's not need to run fault-inject tests by 'run-test-hdfs-with-mr' target |  Major | build, test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-598](https://issues.apache.org/jira/browse/HDFS-598) | Eclipse launch task for HDFS |  Trivial | build | Eli Collins | Eli Collins |
| [HDFS-584](https://issues.apache.org/jira/browse/HDFS-584) | Fail the fault-inject build if any advices are mis-bound |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-581](https://issues.apache.org/jira/browse/HDFS-581) | Introduce an iterator over blocks in the block report array. |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-578](https://issues.apache.org/jira/browse/HDFS-578) | Support for using server default values for blockSize and replication when creating a file |  Major | hdfs-client, namenode | Kan Zhang | Kan Zhang |
| [HDFS-563](https://issues.apache.org/jira/browse/HDFS-563) | Simplify the codes in FSNamesystem.getBlockLocations(..) |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-549](https://issues.apache.org/jira/browse/HDFS-549) | Allow non fault-inject specific tests execution with an explicit -Dtestcase=... setting |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-548](https://issues.apache.org/jira/browse/HDFS-548) | TestFsck takes nearly 10 minutes to run - a quarter of the entire hdfs-test time |  Major | test | Jakob Homan | Hairong Kuang |
| [HDFS-546](https://issues.apache.org/jira/browse/HDFS-546) | DatanodeDescriptor block iterator should be BlockInfo based rather than Block. |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-539](https://issues.apache.org/jira/browse/HDFS-539) | Fault injeciton utlis for pipeline testing needs to be refactored for future reuse by other tests |  Minor | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-532](https://issues.apache.org/jira/browse/HDFS-532) | Allow applications to know that a read request failed because block is missing |  Major | hdfs-client | dhruba borthakur | dhruba borthakur |
| [HDFS-530](https://issues.apache.org/jira/browse/HDFS-530) | Refactor TestFileAppend\* to remove code duplications |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-529](https://issues.apache.org/jira/browse/HDFS-529) | More redundant block searches in BlockManager. |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-527](https://issues.apache.org/jira/browse/HDFS-527) | Refactor DFSClient constructors |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-511](https://issues.apache.org/jira/browse/HDFS-511) | Redundant block searches in BlockManager. |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-510](https://issues.apache.org/jira/browse/HDFS-510) | Rename DatanodeBlockInfo to be ReplicaInfo |  Major | datanode | Hairong Kuang | Jakob Homan |
| [HDFS-504](https://issues.apache.org/jira/browse/HDFS-504) | HDFS updates the modification time of a file when the file is closed. |  Minor | namenode | Chun Zhang | Chun Zhang |
| [HDFS-496](https://issues.apache.org/jira/browse/HDFS-496) | Use PureJavaCrc32 in HDFS |  Minor | datanode, hdfs-client, performance | Todd Lipcon | Todd Lipcon |
| [HDFS-493](https://issues.apache.org/jira/browse/HDFS-493) | Only fault-injected tests have to be executed by run-test-\*-faul-inject targets; none of fault-injected tests need to be ran normal testing process |  Major | build, test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-490](https://issues.apache.org/jira/browse/HDFS-490) | eliminate the usage of FileSystem.create( ) depracated by Hadoop-5438 |  Minor | test | He Yongqiang | He Yongqiang |
| [HDFS-457](https://issues.apache.org/jira/browse/HDFS-457) | better handling of volume failure in Data Node storage |  Major | datanode | Boris Shkolnik | Boris Shkolnik |
| [HDFS-443](https://issues.apache.org/jira/browse/HDFS-443) | New metrics in namenode to capture lost heartbeats. |  Major | namenode | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HDFS-352](https://issues.apache.org/jira/browse/HDFS-352) | saveNamespace command should be documented. |  Major | documentation | Konstantin Shvachko | Ravi Phulari |
| [HDFS-173](https://issues.apache.org/jira/browse/HDFS-173) | Recursively deleting a directory with millions of files makes NameNode unresponsive for other commands until the deletion completes |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [MAPREDUCE-1856](https://issues.apache.org/jira/browse/MAPREDUCE-1856) | Extract a subset of tests for smoke (DOA) validation |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [MAPREDUCE-1832](https://issues.apache.org/jira/browse/MAPREDUCE-1832) | Support for file sizes less than 1MB in DFSIO benchmark. |  Major | benchmarks | Konstantin Shvachko | Konstantin Shvachko |
| [MAPREDUCE-1751](https://issues.apache.org/jira/browse/MAPREDUCE-1751) | Change MapReduce to depend on Hadoop 'common' artifacts instead of 'core' |  Blocker | build | Tom White | Tom White |
| [MAPREDUCE-1627](https://issues.apache.org/jira/browse/MAPREDUCE-1627) | HadoopArchives should not uses DistCp method |  Minor | harchive | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-1593](https://issues.apache.org/jira/browse/MAPREDUCE-1593) | [Rumen] Improvements to random seed generation |  Trivial | tools/rumen | Tamas Sarlos | Tamas Sarlos |
| [MAPREDUCE-1590](https://issues.apache.org/jira/browse/MAPREDUCE-1590) | Move HarFileSystem from Hadoop Common to Mapreduce tools. |  Major | harchive | Mahadev konar | Mahadev konar |
| [MAPREDUCE-1579](https://issues.apache.org/jira/browse/MAPREDUCE-1579) | archive: check and possibly replace the space charater in paths |  Blocker | harchive | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-1570](https://issues.apache.org/jira/browse/MAPREDUCE-1570) | Shuffle stage - Key and Group Comparators |  Minor | contrib/mrunit | Chris White | Chris White |
| [MAPREDUCE-1569](https://issues.apache.org/jira/browse/MAPREDUCE-1569) | Mock Contexts & Configurations |  Minor | contrib/mrunit | Chris White | Chris White |
| [MAPREDUCE-1556](https://issues.apache.org/jira/browse/MAPREDUCE-1556) | upgrade to Avro 1.3.0 |  Major | jobtracker | Doug Cutting | Doug Cutting |
| [MAPREDUCE-1518](https://issues.apache.org/jira/browse/MAPREDUCE-1518) | On contrib/raid, the RaidNode currently runs the deletion check for parity files on directories too. It would be better if it didn't. |  Major | contrib/raid | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-1514](https://issues.apache.org/jira/browse/MAPREDUCE-1514) | Add documentation on permissions, limitations, error handling for archives. |  Major | documentation | Mahadev konar | Mahadev konar |
| [MAPREDUCE-1512](https://issues.apache.org/jira/browse/MAPREDUCE-1512) | RAID could use HarFileSystem directly instead of FileSystem.get |  Minor | contrib/raid | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-1491](https://issues.apache.org/jira/browse/MAPREDUCE-1491) | Use HAR filesystem to merge parity files |  Major | contrib/raid | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-1466](https://issues.apache.org/jira/browse/MAPREDUCE-1466) | FileInputFormat should save #input-files in JobConf |  Minor | client | Arun C Murthy | Luke Lu |
| [MAPREDUCE-1440](https://issues.apache.org/jira/browse/MAPREDUCE-1440) | MapReduce should use the short form of the user names |  Major | security | Owen O'Malley | Owen O'Malley |
| [MAPREDUCE-1428](https://issues.apache.org/jira/browse/MAPREDUCE-1428) | Make block size and the size of archive created files configurable. |  Major | harchive | Mahadev konar | Mahadev konar |
| [MAPREDUCE-1425](https://issues.apache.org/jira/browse/MAPREDUCE-1425) | archive throws OutOfMemoryError |  Major | harchive | Tsz Wo Nicholas Sze | Mahadev konar |
| [MAPREDUCE-1423](https://issues.apache.org/jira/browse/MAPREDUCE-1423) | Improve performance of CombineFileInputFormat when multiple pools are configured |  Major | client | dhruba borthakur | dhruba borthakur |
| [MAPREDUCE-1403](https://issues.apache.org/jira/browse/MAPREDUCE-1403) | Save file-sizes of each of the artifacts in DistributedCache in the JobConf |  Major | client | Arun C Murthy | Arun C Murthy |
| [MAPREDUCE-1317](https://issues.apache.org/jira/browse/MAPREDUCE-1317) | Reducing memory consumption of rumen objects |  Major | tools/rumen | Hong Tang | Hong Tang |
| [MAPREDUCE-1309](https://issues.apache.org/jira/browse/MAPREDUCE-1309) | I want to change the rumen job trace generator to use a more modular internal structure, to allow for more input log formats |  Major | tools/rumen | Dick King | Dick King |
| [MAPREDUCE-1306](https://issues.apache.org/jira/browse/MAPREDUCE-1306) | [MUMAK] Randomize the arrival of heartbeat responses |  Major | contrib/mumak | Tamas Sarlos | Tamas Sarlos |
| [MAPREDUCE-1305](https://issues.apache.org/jira/browse/MAPREDUCE-1305) | Running distcp with -delete incurs avoidable penalties |  Major | distcp | Peter Romianowski | Peter Romianowski |
| [MAPREDUCE-1302](https://issues.apache.org/jira/browse/MAPREDUCE-1302) | TrackerDistributedCacheManager can delete file asynchronously |  Major | tasktracker | Zheng Shao | Zheng Shao |
| [MAPREDUCE-1250](https://issues.apache.org/jira/browse/MAPREDUCE-1250) | Refactor job token to use a common token interface |  Major | security | Kan Zhang | Kan Zhang |
| [MAPREDUCE-1231](https://issues.apache.org/jira/browse/MAPREDUCE-1231) | Distcp is very slow |  Major | distcp | Jothi Padmanabhan | Jothi Padmanabhan |
| [MAPREDUCE-1229](https://issues.apache.org/jira/browse/MAPREDUCE-1229) | [Mumak] Allow customization of job submission policy |  Major | contrib/mumak | Hong Tang | Hong Tang |
| [MAPREDUCE-1221](https://issues.apache.org/jira/browse/MAPREDUCE-1221) | Kill tasks on a node if the free physical memory on that machine falls below a configured threshold |  Major | tasktracker | dhruba borthakur | Scott Chen |
| [MAPREDUCE-1198](https://issues.apache.org/jira/browse/MAPREDUCE-1198) | Alternatively schedule different types of tasks in fair share scheduler |  Major | contrib/fair-share | Scott Chen | Scott Chen |
| [MAPREDUCE-1189](https://issues.apache.org/jira/browse/MAPREDUCE-1189) | Reduce ivy console output to ovservable level |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [MAPREDUCE-1185](https://issues.apache.org/jira/browse/MAPREDUCE-1185) | URL to JT webconsole for running job and job history should be the same |  Major | jobtracker | Sharad Agarwal | Amareshwari Sriramadasu |
| [MAPREDUCE-1103](https://issues.apache.org/jira/browse/MAPREDUCE-1103) | Additional JobTracker metrics |  Major | jobtracker | Arun C Murthy | Sharad Agarwal |
| [MAPREDUCE-1097](https://issues.apache.org/jira/browse/MAPREDUCE-1097) | Changes/fixes to support Vertica 3.5 |  Minor | contrib/vertica | Omer Trajman | Omer Trajman |
| [MAPREDUCE-1084](https://issues.apache.org/jira/browse/MAPREDUCE-1084) | Implementing aspects development and fault injeciton framework for MapReduce |  Major | build, test | Konstantin Boudnik | Sreekanth Ramakrishnan |
| [MAPREDUCE-1083](https://issues.apache.org/jira/browse/MAPREDUCE-1083) |  Use the user-to-groups mapping service in the JobTracker |  Major | jobtracker | Arun C Murthy | Boris Shkolnik |
| [MAPREDUCE-1048](https://issues.apache.org/jira/browse/MAPREDUCE-1048) | Show total slot usage in cluster summary on jobtracker webui |  Major | jobtracker | Amar Kamat | Amareshwari Sriramadasu |
| [MAPREDUCE-1012](https://issues.apache.org/jira/browse/MAPREDUCE-1012) | Context interfaces should be Public Evolving |  Blocker | client | Tom White | Tom White |
| [MAPREDUCE-1011](https://issues.apache.org/jira/browse/MAPREDUCE-1011) | Git and Subversion ignore of build.properties |  Major | build | Owen O'Malley | Owen O'Malley |
| [MAPREDUCE-972](https://issues.apache.org/jira/browse/MAPREDUCE-972) | distcp can timeout during rename operation to s3 |  Major | distcp, documentation | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-967](https://issues.apache.org/jira/browse/MAPREDUCE-967) | TaskTracker does not need to fully unjar job jars |  Major | tasktracker | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-966](https://issues.apache.org/jira/browse/MAPREDUCE-966) | Rumen interface improvement |  Major | tools/rumen | Hong Tang | Hong Tang |
| [MAPREDUCE-954](https://issues.apache.org/jira/browse/MAPREDUCE-954) | The new interface's Context objects should be interfaces |  Major | client | Owen O'Malley | Arun C Murthy |
| [MAPREDUCE-953](https://issues.apache.org/jira/browse/MAPREDUCE-953) | Generate configuration dump for hierarchial queue configuration |  Blocker | jobtracker | rahul k singh | V.V.Chaitanya Krishna |
| [MAPREDUCE-944](https://issues.apache.org/jira/browse/MAPREDUCE-944) | Extend FairShare scheduler to fair-share memory usage in the cluster |  Major | contrib/fair-share | dhruba borthakur | dhruba borthakur |
| [MAPREDUCE-936](https://issues.apache.org/jira/browse/MAPREDUCE-936) | Allow a load difference in fairshare scheduler |  Major | contrib/fair-share | Zheng Shao | Zheng Shao |
| [MAPREDUCE-931](https://issues.apache.org/jira/browse/MAPREDUCE-931) | rumen should use its own interpolation classes to create runtimes for simulated tasks |  Minor | tools/rumen | Dick King | Dick King |
| [MAPREDUCE-930](https://issues.apache.org/jira/browse/MAPREDUCE-930) | rumen should interpret job history log input paths with respect to default FS, not local FS |  Minor | tools/rumen | Dick King | Chris Douglas |
| [MAPREDUCE-910](https://issues.apache.org/jira/browse/MAPREDUCE-910) | MRUnit should support counters |  Major | contrib/mrunit | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-893](https://issues.apache.org/jira/browse/MAPREDUCE-893) | Provide an ability to refresh queue configuration without restart. |  Major | jobtracker | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [MAPREDUCE-874](https://issues.apache.org/jira/browse/MAPREDUCE-874) | The name "PiEstimator" is misleading |  Minor | examples | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-873](https://issues.apache.org/jira/browse/MAPREDUCE-873) | Simplify Job Recovery |  Major | jobtracker | Devaraj Das | Sharad Agarwal |
| [MAPREDUCE-847](https://issues.apache.org/jira/browse/MAPREDUCE-847) | Adding Apache License Headers and reduce releaseaudit warnings to zero |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [MAPREDUCE-797](https://issues.apache.org/jira/browse/MAPREDUCE-797) | MRUnit MapReduceDriver should support combiners |  Major | contrib/mrunit | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-788](https://issues.apache.org/jira/browse/MAPREDUCE-788) | Modify gridmix2 to use new api. |  Major | benchmarks | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-784](https://issues.apache.org/jira/browse/MAPREDUCE-784) | Modify TestUserDefinedCounters to use LocalJobRunner instead of MiniMR |  Major | test | Jothi Padmanabhan | Jothi Padmanabhan |
| [MAPREDUCE-782](https://issues.apache.org/jira/browse/MAPREDUCE-782) | Use PureJavaCrc32 in mapreduce spills |  Minor | performance | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-781](https://issues.apache.org/jira/browse/MAPREDUCE-781) | distcp overrides user-selected job name |  Major | distcp | Rob Weltman | Venkatesh Seetharam |
| [MAPREDUCE-779](https://issues.apache.org/jira/browse/MAPREDUCE-779) | Add node health failures into JobTrackerStatistics |  Major | jobtracker | Sreekanth Ramakrishnan | Sreekanth Ramakrishnan |
| [MAPREDUCE-765](https://issues.apache.org/jira/browse/MAPREDUCE-765) | eliminate the usage of FileSystem.create( ) depracated by Hadoop-5438 |  Minor | distcp, jobtracker | He Yongqiang | He Yongqiang |
| [MAPREDUCE-742](https://issues.apache.org/jira/browse/MAPREDUCE-742) | Improve the java comments for the π examples |  Minor | documentation, examples | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-739](https://issues.apache.org/jira/browse/MAPREDUCE-739) | Allow relative paths to be created inside archives. |  Major | harchive | Mahadev konar | Mahadev konar |
| [MAPREDUCE-712](https://issues.apache.org/jira/browse/MAPREDUCE-712) | RandomTextWriter example is CPU bound |  Major | examples | Khaled Elmeleegy | Chris Douglas |
| [MAPREDUCE-701](https://issues.apache.org/jira/browse/MAPREDUCE-701) | Make TestRackAwareTaskPlacement a unit test |  Minor | test | Jothi Padmanabhan | Jothi Padmanabhan |
| [MAPREDUCE-664](https://issues.apache.org/jira/browse/MAPREDUCE-664) | distcp with -delete option does not display number of files deleted from the target that were not present on source |  Major | distcp | Suhas Gogate | Ravi Gummadi |
| [MAPREDUCE-654](https://issues.apache.org/jira/browse/MAPREDUCE-654) | Add an option -count to distcp for displaying some info about the src files |  Major | distcp | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-649](https://issues.apache.org/jira/browse/MAPREDUCE-649) | distcp should validate the data copied |  Major | distcp | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-318](https://issues.apache.org/jira/browse/MAPREDUCE-318) | Refactor reduce shuffle code |  Major | performance, task | Owen O'Malley | Owen O'Malley |
| [MAPREDUCE-277](https://issues.apache.org/jira/browse/MAPREDUCE-277) | Job history counters should be avaible on the UI. |  Blocker | jobtracker | Amareshwari Sriramadasu | Jothi Padmanabhan |
| [MAPREDUCE-271](https://issues.apache.org/jira/browse/MAPREDUCE-271) | Change examples code to use new mapreduce api. |  Major | examples | Amareshwari Sriramadasu | Amareshwari Sriramadasu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6875](https://issues.apache.org/jira/browse/HADOOP-6875) | [Herriot] Cleanup of temp. configurations is needed upon restart of a cluster |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [HADOOP-6860](https://issues.apache.org/jira/browse/HADOOP-6860) |  'compile-fault-inject' should never be called directly. |  Minor | build | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6847](https://issues.apache.org/jira/browse/HADOOP-6847) | Problem staging 0.21.0 artifacts to Apache Nexus Maven Repository |  Blocker | build | Tom White | Giridharan Kesavan |
| [HADOOP-6828](https://issues.apache.org/jira/browse/HADOOP-6828) | Herrior uses old way of accessing logs directories |  Major | test | Konstantin Boudnik | Sreekanth Ramakrishnan |
| [HADOOP-6826](https://issues.apache.org/jira/browse/HADOOP-6826) | Revert FileSystem create method that takes CreateFlags |  Blocker | fs | Tom White | Tom White |
| [HADOOP-6821](https://issues.apache.org/jira/browse/HADOOP-6821) | Document changes to memory monitoring |  Blocker | documentation | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-6819](https://issues.apache.org/jira/browse/HADOOP-6819) | [Herriot] Shell command for getting the new exceptions in the logs returning exitcode 1 after executing successfully. |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [HADOOP-6790](https://issues.apache.org/jira/browse/HADOOP-6790) | Instrumented (Herriot) build uses too wide mask to include aspect files. |  Minor | test | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6788](https://issues.apache.org/jira/browse/HADOOP-6788) | [Herriot] Exception exclusion functionality is not working correctly. |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [HADOOP-6748](https://issues.apache.org/jira/browse/HADOOP-6748) | Remove hadoop.cluster.administrators |  Major | security | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-6727](https://issues.apache.org/jira/browse/HADOOP-6727) | Remove UnresolvedLinkException from public FileContext APIs |  Blocker | fs | Eli Collins | Eli Collins |
| [HADOOP-6724](https://issues.apache.org/jira/browse/HADOOP-6724) | IPC doesn't properly handle IOEs thrown by socket factory |  Major | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-6723](https://issues.apache.org/jira/browse/HADOOP-6723) | unchecked exceptions thrown in IPC Connection orphan clients |  Critical | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-6722](https://issues.apache.org/jira/browse/HADOOP-6722) | NetUtils.connect should check that it hasn't connected a socket to itself |  Major | util | Todd Lipcon | Todd Lipcon |
| [HADOOP-6702](https://issues.apache.org/jira/browse/HADOOP-6702) | Incorrect exit codes for "dfs -chown", "dfs -chgrp"  when input is given in wildcard format. |  Minor | fs | Ravi Phulari | Ravi Phulari |
| [HADOOP-6701](https://issues.apache.org/jira/browse/HADOOP-6701) |  Incorrect exit codes for "dfs -chown", "dfs -chgrp" |  Minor | fs | Ravi Phulari | Ravi Phulari |
| [HADOOP-6698](https://issues.apache.org/jira/browse/HADOOP-6698) | Revert the io.serialization package to 0.20.2's api |  Blocker | io | Owen O'Malley | Tom White |
| [HADOOP-6691](https://issues.apache.org/jira/browse/HADOOP-6691) | TestFileSystemCaching sometimes hang |  Major | test | Hairong Kuang | Hairong Kuang |
| [HADOOP-6654](https://issues.apache.org/jira/browse/HADOOP-6654) | Example in WritableComparable javadoc doesn't compile |  Trivial | io | Tom White | Tom White |
| [HADOOP-6646](https://issues.apache.org/jira/browse/HADOOP-6646) | Move HarfileSystem out of Hadoop Common. |  Major | fs | Mahadev konar | Mahadev konar |
| [HADOOP-6645](https://issues.apache.org/jira/browse/HADOOP-6645) | Bugs on listStatus for HarFileSystem |  Major | fs | Rodrigo Schmidt | Rodrigo Schmidt |
| [HADOOP-6640](https://issues.apache.org/jira/browse/HADOOP-6640) | FileSystem.get() does RPC retries within a static synchronized block |  Critical | fs | Alejandro Abdelnur | Hairong Kuang |
| [HADOOP-6634](https://issues.apache.org/jira/browse/HADOOP-6634) | AccessControlList uses full-principal names to verify acls causing queue-acls to fail |  Major | security | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-6631](https://issues.apache.org/jira/browse/HADOOP-6631) | FileUtil.fullyDelete() should continue to delete other files despite failure at any level. |  Major | fs, util | Vinod Kumar Vavilapalli | Ravi Gummadi |
| [HADOOP-6609](https://issues.apache.org/jira/browse/HADOOP-6609) | Deadlock in DFSClient#getBlockLocations even with the security disabled |  Major | io | Hairong Kuang | Owen O'Malley |
| [HADOOP-6593](https://issues.apache.org/jira/browse/HADOOP-6593) | TextRecordInputStream doesn't close SequenceFile.Reader |  Minor | fs | Chase Bradford | Chase Bradford |
| [HADOOP-6591](https://issues.apache.org/jira/browse/HADOOP-6591) | HarFileSystem cannot handle paths with the space character |  Major | fs | Tsz Wo Nicholas Sze | Rodrigo Schmidt |
| [HADOOP-6572](https://issues.apache.org/jira/browse/HADOOP-6572) | RPC responses may be out-of-order with respect to SASL |  Major | ipc, security | Kan Zhang | Kan Zhang |
| [HADOOP-6570](https://issues.apache.org/jira/browse/HADOOP-6570) | RPC#stopProxy throws NullPointerExcption if getProxyEngine(proxy) returns null |  Major | ipc | Hairong Kuang | Hairong Kuang |
| [HADOOP-6560](https://issues.apache.org/jira/browse/HADOOP-6560) | HarFileSystem throws NPE for har://hdfs-/foo |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6558](https://issues.apache.org/jira/browse/HADOOP-6558) | archive does not work with distcp -update |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6552](https://issues.apache.org/jira/browse/HADOOP-6552) | KEYTAB\_KERBEROS\_OPTIONS in UserGroupInformation should have options for automatic renewal of keytab based tickets |  Major | security | Devaraj Das | Devaraj Das |
| [HADOOP-6548](https://issues.apache.org/jira/browse/HADOOP-6548) | Replace org.mortbay.log.Log imports with commons logging |  Trivial | fs, io | Chris Douglas | Chris Douglas |
| [HADOOP-6546](https://issues.apache.org/jira/browse/HADOOP-6546) | BloomMapFile can return false negatives |  Major | io | Clark Jefcoat | Clark Jefcoat |
| [HADOOP-6545](https://issues.apache.org/jira/browse/HADOOP-6545) | Cached FileSystem objects can lead to wrong token being used in setting up connections |  Major | security | Devaraj Das | Devaraj Das |
| [HADOOP-6522](https://issues.apache.org/jira/browse/HADOOP-6522) | TestUTF8 fails |  Critical | io | Todd Lipcon | Doug Cutting |
| [HADOOP-6521](https://issues.apache.org/jira/browse/HADOOP-6521) | FsPermission:SetUMask not updated to use new-style umask setting. |  Major | fs | Jakob Homan | Suresh Srinivas |
| [HADOOP-6505](https://issues.apache.org/jira/browse/HADOOP-6505) | sed in build.xml fails |  Minor | build | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-6504](https://issues.apache.org/jira/browse/HADOOP-6504) | Invalid example in the documentation of org.apache.hadoop.util.Tool |  Trivial | documentation | Benoit Sigoure | Benoit Sigoure |
| [HADOOP-6489](https://issues.apache.org/jira/browse/HADOOP-6489) | Findbug report: LI\_LAZY\_INIT\_STATIC, OBL\_UNSATISFIED\_OBLIGATION |  Major | fs, io, util | Erik Steffl | Erik Steffl |
| [HADOOP-6462](https://issues.apache.org/jira/browse/HADOOP-6462) | contrib/cloud failing, target "compile" does not exist |  Major | build | Steve Loughran | Tom White |
| [HADOOP-6461](https://issues.apache.org/jira/browse/HADOOP-6461) | webapps aren't located correctly post-split |  Blocker | util | Todd Lipcon | Steve Loughran |
| [HADOOP-6451](https://issues.apache.org/jira/browse/HADOOP-6451) | Contrib tests are not being run |  Blocker | build | Tom White | Tom White |
| [HADOOP-6441](https://issues.apache.org/jira/browse/HADOOP-6441) | Prevent remote CSS attacks in Hostname and UTF-7. |  Major | security | Owen O'Malley | Owen O'Malley |
| [HADOOP-6439](https://issues.apache.org/jira/browse/HADOOP-6439) | Shuffle deadlocks on wrong number of maps |  Blocker | conf | Owen O'Malley | V.V.Chaitanya Krishna |
| [HADOOP-6411](https://issues.apache.org/jira/browse/HADOOP-6411) | Remove deprecated file src/test/hadoop-site.xml |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6404](https://issues.apache.org/jira/browse/HADOOP-6404) | Rename the generated artifacts to common instead of core |  Blocker | build | Owen O'Malley | Tom White |
| [HADOOP-6402](https://issues.apache.org/jira/browse/HADOOP-6402) | testConf.xsl is not well-formed XML |  Trivial | test | Steve Loughran | Steve Loughran |
| [HADOOP-6398](https://issues.apache.org/jira/browse/HADOOP-6398) | Build is broken after HADOOP-6395 patch has been applied |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6396](https://issues.apache.org/jira/browse/HADOOP-6396) | Provide a description in the exception when an error is encountered parsing umask |  Major | fs | Jakob Homan | Jakob Homan |
| [HADOOP-6391](https://issues.apache.org/jira/browse/HADOOP-6391) | Classpath should not be part of command line arguments |  Major | scripts | Cristian Ivascu | Cristian Ivascu |
| [HADOOP-6375](https://issues.apache.org/jira/browse/HADOOP-6375) | Update documentation for FsShell du command |  Major | documentation | Todd Lipcon | Todd Lipcon |
| [HADOOP-6374](https://issues.apache.org/jira/browse/HADOOP-6374) | JUnit tests should never depend on anything in conf |  Blocker | test | Owen O'Malley | Anatoli Fomenko |
| [HADOOP-6344](https://issues.apache.org/jira/browse/HADOOP-6344) | rm and rmr fail to correctly move the user's files to the trash prior to deleting when they are over quota. |  Major | fs | gary murry | Jakob Homan |
| [HADOOP-6341](https://issues.apache.org/jira/browse/HADOOP-6341) | Hudson giving a +1 though no tests are included. |  Major | build | Hemanth Yamijala | Giridharan Kesavan |
| [HADOOP-6334](https://issues.apache.org/jira/browse/HADOOP-6334) | GenericOptionsParser does not understand uri for -files -libjars and -archives option |  Major | util | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-6327](https://issues.apache.org/jira/browse/HADOOP-6327) | Fix build error for one of the FileContext Tests |  Major | test | Sanjay Radia | Sanjay Radia |
| [HADOOP-6314](https://issues.apache.org/jira/browse/HADOOP-6314) | "bin/hadoop fs -help count"  fails to show help about only "count" command. |  Major | fs | Ravi Phulari | Ravi Phulari |
| [HADOOP-6293](https://issues.apache.org/jira/browse/HADOOP-6293) | FsShell -text should work on filesystems other than the default |  Minor | fs | Chris Douglas | Chris Douglas |
| [HADOOP-6286](https://issues.apache.org/jira/browse/HADOOP-6286) | The Glob methods in FileContext doe not deal with URIs correctly |  Major | fs | Sanjay Radia | Boris Shkolnik |
| [HADOOP-6283](https://issues.apache.org/jira/browse/HADOOP-6283) | The exception meessage in FileUtil$HardLink.getLinkCount(..) is not clear |  Minor | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6274](https://issues.apache.org/jira/browse/HADOOP-6274) | TestLocalFSFileContextMainOperations tests wrongly expect a certain order to be returned. |  Major | test | gary murry | gary murry |
| [HADOOP-6257](https://issues.apache.org/jira/browse/HADOOP-6257) | Two TestFileSystem classes are confusing hadoop-hdfs-hdfwithmr |  Minor | build, fs, test | Philip Zeyliger | Philip Zeyliger |
| [HADOOP-6254](https://issues.apache.org/jira/browse/HADOOP-6254) | s3n fails with SocketTimeoutException |  Major | fs/s3 | Andrew Hitchcock | Andrew Hitchcock |
| [HADOOP-6250](https://issues.apache.org/jira/browse/HADOOP-6250) | test-patch.sh doesn't clean up conf/\*.xml files after the trunk run. |  Major | build | rahul k singh | rahul k singh |
| [HADOOP-6243](https://issues.apache.org/jira/browse/HADOOP-6243) | NPE in handling deprecated configuration keys. |  Blocker | conf | Konstantin Shvachko | Sreekanth Ramakrishnan |
| [HADOOP-6240](https://issues.apache.org/jira/browse/HADOOP-6240) | Rename operation is not consistent between different implementations of FileSystem |  Major | fs | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-6229](https://issues.apache.org/jira/browse/HADOOP-6229) | Atempt to make a directory under an existing file on LocalFileSystem should throw an Exception. |  Major | fs | Boris Shkolnik | Boris Shkolnik |
| [HADOOP-6227](https://issues.apache.org/jira/browse/HADOOP-6227) | Configuration does not lock parameters marked final if they have no value. |  Major | conf | Hemanth Yamijala | Amareshwari Sriramadasu |
| [HADOOP-6199](https://issues.apache.org/jira/browse/HADOOP-6199) | Add the documentation for io.map.index.skip in core-default |  Major | io | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-6192](https://issues.apache.org/jira/browse/HADOOP-6192) | Shell.getUlimitMemoryCommand is tied to Map-Reduce |  Major | util | Arun C Murthy | Arun C Murthy |
| [HADOOP-6188](https://issues.apache.org/jira/browse/HADOOP-6188) | TestHDFSTrash fails because of TestTrash in common |  Major | test | Boris Shkolnik | Boris Shkolnik |
| [HADOOP-6181](https://issues.apache.org/jira/browse/HADOOP-6181) | Fixes for Eclipse template |  Minor | build | Carlos Valiente | Carlos Valiente |
| [HADOOP-6175](https://issues.apache.org/jira/browse/HADOOP-6175) | Incorret version compilation with es\_ES.ISO8859-15 locale on Solaris 10 |  Major | build | Urko Benito | Urko Benito |
| [HADOOP-6172](https://issues.apache.org/jira/browse/HADOOP-6172) | bin/hadoop version not working |  Minor | build | Hong Tang | Hong Tang |
| [HADOOP-6152](https://issues.apache.org/jira/browse/HADOOP-6152) | Hadoop scripts do not correctly put jars on the classpath |  Blocker | scripts | Aaron Kimball | Aaron Kimball |
| [HADOOP-6151](https://issues.apache.org/jira/browse/HADOOP-6151) | The servlets should quote html characters |  Critical | security | Owen O'Malley | Owen O'Malley |
| [HADOOP-6138](https://issues.apache.org/jira/browse/HADOOP-6138) | eliminate the depracate warnings introduced by H-5438 |  Minor | fs | He Yongqiang | He Yongqiang |
| [HADOOP-6137](https://issues.apache.org/jira/browse/HADOOP-6137) | to fix project specific test-patch requirements |  Critical | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-6132](https://issues.apache.org/jira/browse/HADOOP-6132) | RPC client opens an extra connection for VersionedProtocol |  Major | ipc | Kan Zhang | Kan Zhang |
| [HADOOP-6131](https://issues.apache.org/jira/browse/HADOOP-6131) | A sysproperty should not be set unless the property is set on the ant command line in build.xml. |  Trivial | build | Hong Tang | Hong Tang |
| [HADOOP-6124](https://issues.apache.org/jira/browse/HADOOP-6124) | patchJavacWarnings and trunkJavacWarnings are not consistent. |  Critical | build | Tsz Wo Nicholas Sze | Giridharan Kesavan |
| [HADOOP-6123](https://issues.apache.org/jira/browse/HADOOP-6123) | hdfs script does not work after project split. |  Major | scripts | Konstantin Shvachko | Sharad Agarwal |
| [HADOOP-6122](https://issues.apache.org/jira/browse/HADOOP-6122) | 64 javac compiler warnings |  Major | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6114](https://issues.apache.org/jira/browse/HADOOP-6114) | bug in documentation: org.apache.hadoop.fs.FileStatus.getLen() |  Major | documentation | Dmitry Rzhevskiy | Dmitry Rzhevskiy |
| [HADOOP-6112](https://issues.apache.org/jira/browse/HADOOP-6112) | to fix hudsonPatchQueueAdmin for different projects |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-6103](https://issues.apache.org/jira/browse/HADOOP-6103) | Configuration clone constructor does not clone all the members. |  Major | conf | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-6096](https://issues.apache.org/jira/browse/HADOOP-6096) | Fix Eclipse project and classpath files following project split |  Major | build | Tom White | Tom White |
| [HADOOP-6090](https://issues.apache.org/jira/browse/HADOOP-6090) | GridMix is broke after upgrading random(text)writer to newer mapreduce apis |  Major | benchmarks | Arun C Murthy | Amareshwari Sriramadasu |
| [HADOOP-6076](https://issues.apache.org/jira/browse/HADOOP-6076) | Forrest documentation compilation is broken because of HADOOP-5913 |  Blocker | documentation | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-6031](https://issues.apache.org/jira/browse/HADOOP-6031) | Remove @author tags from Java source files |  Minor | documentation | Ravi Phulari | Ravi Phulari |
| [HADOOP-6009](https://issues.apache.org/jira/browse/HADOOP-6009) | S3N listStatus incorrectly returns null instead of empty array when called on empty root |  Major | fs/s3 | Ian Nowland | Ian Nowland |
| [HADOOP-6004](https://issues.apache.org/jira/browse/HADOOP-6004) | BlockLocation deserialization is incorrect |  Major | fs | Jakob Homan | Jakob Homan |
| [HADOOP-5963](https://issues.apache.org/jira/browse/HADOOP-5963) | unnecessary exception catch in NNBench |  Minor | test | Boris Shkolnik | Boris Shkolnik |
| [HADOOP-5958](https://issues.apache.org/jira/browse/HADOOP-5958) | Use JDK 1.6 File APIs in DF.java wherever possible |  Major | fs | Devaraj Das | Aaron Kimball |
| [HADOOP-5956](https://issues.apache.org/jira/browse/HADOOP-5956) | org.apache.hadoop.hdfsproxy.TestHdfsProxy.testHdfsProxyInterface test fails on trunk |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-5954](https://issues.apache.org/jira/browse/HADOOP-5954) | Fix javac warnings in HDFS tests |  Major | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-5953](https://issues.apache.org/jira/browse/HADOOP-5953) | KosmosFileSystem.isDirectory() should not be deprecated. |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-5940](https://issues.apache.org/jira/browse/HADOOP-5940) | trunk eclipse-plugin build fails while trying to copy commons-cli jar from the lib dir |  Major | contrib/eclipse-plugin | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-5935](https://issues.apache.org/jira/browse/HADOOP-5935) | Hudson's release audit warnings link is broken |  Major | build | Tom White | Giridharan Kesavan |
| [HADOOP-5900](https://issues.apache.org/jira/browse/HADOOP-5900) | Minor correction in HDFS Documentation |  Minor | documentation | Ravi Phulari | Ravi Phulari |
| [HADOOP-5891](https://issues.apache.org/jira/browse/HADOOP-5891) | If dfs.http.address is default, SecondaryNameNode can't find NameNode |  Major | fs | Todd Lipcon | Todd Lipcon |
| [HADOOP-5877](https://issues.apache.org/jira/browse/HADOOP-5877) | Fix javac warnings in TestHDFSServerPorts, TestCheckpoint, TestNameEditsConfig, TestStartup and TestStorageRestore |  Major | test | Jakob Homan | Jakob Homan |
| [HADOOP-5861](https://issues.apache.org/jira/browse/HADOOP-5861) | s3n files are not getting split by default |  Major | fs/s3 | Joydeep Sen Sarma | Tom White |
| [HADOOP-5845](https://issues.apache.org/jira/browse/HADOOP-5845) | Build successful despite test failure on test-core target |  Major | test | Chris Douglas | Sharad Agarwal |
| [HADOOP-5836](https://issues.apache.org/jira/browse/HADOOP-5836) | Bug in S3N handling of directory markers using an object with a trailing "/" causes jobs to fail |  Major | fs/s3 | Ian Nowland | Ian Nowland |
| [HADOOP-5823](https://issues.apache.org/jira/browse/HADOOP-5823) | Handling javac "deprecated" warning for using UTF8 |  Major | build | Raghu Angadi | Raghu Angadi |
| [HADOOP-5805](https://issues.apache.org/jira/browse/HADOOP-5805) | problem using top level s3 buckets as input/output directories |  Major | fs/s3 | Arun Jacob | Ian Nowland |
| [HADOOP-5804](https://issues.apache.org/jira/browse/HADOOP-5804) | neither s3.block.size not fs.s3.block.size are honoured |  Major | fs/s3 | Mathieu Poumeyrol | Tom White |
| [HADOOP-5738](https://issues.apache.org/jira/browse/HADOOP-5738) | Split waiting tasks field in JobTracker metrics to individual tasks |  Major | metrics | Sreekanth Ramakrishnan | Sreekanth Ramakrishnan |
| [HADOOP-5737](https://issues.apache.org/jira/browse/HADOOP-5737) | UGI checks in testcases are broken |  Major | security, test | Amar Kamat | Amar Kamat |
| [HADOOP-5734](https://issues.apache.org/jira/browse/HADOOP-5734) | HDFS architecture documentation describes outdated placement policy |  Minor | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-5715](https://issues.apache.org/jira/browse/HADOOP-5715) | Should conf/mapred-queue-acls.xml be added to the ignore list? |  Major | conf | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-5704](https://issues.apache.org/jira/browse/HADOOP-5704) | Scheduler test code does not compile |  Major | test | Chris Douglas | Chris Douglas |
| [HADOOP-5658](https://issues.apache.org/jira/browse/HADOOP-5658) | Eclipse templates fail out of the box; need updating |  Major | build | Philip Zeyliger | Philip Zeyliger |
| [HADOOP-5656](https://issues.apache.org/jira/browse/HADOOP-5656) | Counter for S3N Read Bytes does not work |  Minor | fs/s3 | Ian Nowland | Ian Nowland |
| [HADOOP-5635](https://issues.apache.org/jira/browse/HADOOP-5635) | distributed cache doesn't work with other distributed file systems |  Minor | filecache | Andrew Hitchcock | Andrew Hitchcock |
| [HADOOP-5592](https://issues.apache.org/jira/browse/HADOOP-5592) | Hadoop Streaming - GzipCodec |  Minor | documentation | Corinne Chandel | Corinne Chandel |
| [HADOOP-5561](https://issues.apache.org/jira/browse/HADOOP-5561) | Javadoc-dev ant target runs out of heap space |  Major | build | Jakob Homan | Jakob Homan |
| [HADOOP-5489](https://issues.apache.org/jira/browse/HADOOP-5489) | hadoop-env.sh still refers to java1.5 |  Trivial | conf | Steve Loughran | Steve Loughran |
| [HADOOP-5486](https://issues.apache.org/jira/browse/HADOOP-5486) | ReliabilityTest does not test lostTrackers, some times. |  Major | test | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-5477](https://issues.apache.org/jira/browse/HADOOP-5477) | TestCLI fails |  Major | test | Amar Kamat | Jakob Homan |
| [HADOOP-5476](https://issues.apache.org/jira/browse/HADOOP-5476) | calling new SequenceFile.Reader(...) leaves an InputStream open, if the given sequence file is broken |  Major | io | Michael Tamm | Michael Tamm |
| [HADOOP-5456](https://issues.apache.org/jira/browse/HADOOP-5456) | javadoc warning: can't find restoreFailedStorage() in ClientProtocol |  Minor | documentation | Tsz Wo Nicholas Sze | Boris Shkolnik |
| [HADOOP-5406](https://issues.apache.org/jira/browse/HADOOP-5406) | Misnamed function in ZlibCompressor.c |  Minor | native | Lars Francke | Lars Francke |
| [HADOOP-5341](https://issues.apache.org/jira/browse/HADOOP-5341) | hadoop-daemon isn't compatible after HADOOP-4868 |  Major | scripts | Owen O'Malley | Sharad Agarwal |
| [HADOOP-5300](https://issues.apache.org/jira/browse/HADOOP-5300) | "ant javadoc-dev" does not work |  Major | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-5273](https://issues.apache.org/jira/browse/HADOOP-5273) | License header missing in TestJobInProgress.java |  Minor | documentation | Amar Kamat | Jakob Homan |
| [HADOOP-5253](https://issues.apache.org/jira/browse/HADOOP-5253) | to remove duplicate calls to the cn-docs target. |  Minor | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-5229](https://issues.apache.org/jira/browse/HADOOP-5229) | duplicate variables in build.xml hadoop.version vs version let build fails at assert-hadoop-jar-exists |  Trivial | build | Stefan Groschupf | Stefan Groschupf |
| [HADOOP-5226](https://issues.apache.org/jira/browse/HADOOP-5226) | Add license headers to html and jsp files |  Major | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-5219](https://issues.apache.org/jira/browse/HADOOP-5219) | SequenceFile is using mapred property |  Major | io | Sharad Agarwal | Sharad Agarwal |
| [HADOOP-5213](https://issues.apache.org/jira/browse/HADOOP-5213) | BZip2CompressionOutputStream NullPointerException |  Blocker | io | Zheng Shao | Zheng Shao |
| [HADOOP-5212](https://issues.apache.org/jira/browse/HADOOP-5212) | cygwin path translation not happening correctly after Hadoop-4868 |  Major | scripts | Sharad Agarwal | Sharad Agarwal |
| [HADOOP-5209](https://issues.apache.org/jira/browse/HADOOP-5209) | Update year to 2009 for javadoc |  Minor | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-5204](https://issues.apache.org/jira/browse/HADOOP-5204) | hudson trunk build failure due to autoheader failure in create-c++-configure-libhdfs task |  Blocker | build | Lee Tucker | Sreekanth Ramakrishnan |
| [HADOOP-5198](https://issues.apache.org/jira/browse/HADOOP-5198) | NPE in Shell.runCommand() |  Blocker | util | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-5172](https://issues.apache.org/jira/browse/HADOOP-5172) | Chukwa : TestAgentConfig.testInitAdaptors\_vs\_Checkpoint regularly fails |  Major | test | Raghu Angadi | Jerome Boulon |
| [HADOOP-5113](https://issues.apache.org/jira/browse/HADOOP-5113) | logcondense should delete hod logs for a user , whose username has any of the characters in the value passed to "-l" options |  Major | contrib/hod | Peeyush Bishnoi | Peeyush Bishnoi |
| [HADOOP-5078](https://issues.apache.org/jira/browse/HADOOP-5078) | Broken AMI/AKI for ec2 on hadoop |  Major | contrib/cloud | Mathieu Poumeyrol | Tom White |
| [HADOOP-5072](https://issues.apache.org/jira/browse/HADOOP-5072) | testSequenceFileGzipCodec won't pass without native gzip codec |  Major | test | Zheng Shao | Zheng Shao |
| [HADOOP-5070](https://issues.apache.org/jira/browse/HADOOP-5070) | Update the year for the copyright to 2009 |  Blocker | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-5022](https://issues.apache.org/jira/browse/HADOOP-5022) | [HOD] logcondense should delete all hod logs for a user, including jobtracker logs |  Blocker | contrib/hod | Hemanth Yamijala | Peeyush Bishnoi |
| [HADOOP-4948](https://issues.apache.org/jira/browse/HADOOP-4948) | ant test-patch does not work |  Major | scripts | Tsz Wo Nicholas Sze | Giridharan Kesavan |
| [HADOOP-4864](https://issues.apache.org/jira/browse/HADOOP-4864) | -libjars with multiple jars broken when client and cluster reside on different OSs |  Minor | filecache | Stuart White | Amareshwari Sriramadasu |
| [HADOOP-4779](https://issues.apache.org/jira/browse/HADOOP-4779) | Remove deprecated FileSystem methods |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4655](https://issues.apache.org/jira/browse/HADOOP-4655) | FileSystem.CACHE should be ref-counted |  Major | fs | Hong Tang | dhruba borthakur |
| [HADOOP-4648](https://issues.apache.org/jira/browse/HADOOP-4648) | Remove ChecksumDistriubtedFileSystem and InMemoryFileSystem |  Major | fs | Owen O'Malley | Chris Douglas |
| [HADOOP-4220](https://issues.apache.org/jira/browse/HADOOP-4220) | Job Restart tests take 10 minutes, can time out very easily |  Blocker | test | Steve Loughran | Amar Kamat |
| [HADOOP-4041](https://issues.apache.org/jira/browse/HADOOP-4041) | IsolationRunner does not work as documented |  Major | documentation | Yuri Pradkin | Philip Zeyliger |
| [HADOOP-3205](https://issues.apache.org/jira/browse/HADOOP-3205) | Read multiple chunks directly from FSInputChecker subclass into user buffers |  Major | fs | Raghu Angadi | Todd Lipcon |
| [HADOOP-2827](https://issues.apache.org/jira/browse/HADOOP-2827) | Remove deprecated NetUtils.getServerAddress |  Major | conf, util | dhruba borthakur | Chris Douglas |
| [HADOOP-2366](https://issues.apache.org/jira/browse/HADOOP-2366) | Space in the value for dfs.data.dir can cause great problems |  Major | conf | Ted Dunning | Michele Catasta |
| [HDFS-1313](https://issues.apache.org/jira/browse/HDFS-1313) | HdfsProxy changes from HDFS-481 missed in y20.1xx |  Major | contrib/hdfsproxy | Rohini Palaniswamy | Rohini Palaniswamy |
| [HDFS-1311](https://issues.apache.org/jira/browse/HDFS-1311) | Running tests with 'testcase' cause triple execution of the same test case |  Minor | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-1299](https://issues.apache.org/jira/browse/HDFS-1299) | 'compile-fault-inject' never should be called directly. |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-1292](https://issues.apache.org/jira/browse/HDFS-1292) | Allow artifacts to be published to the staging Apache Nexus Maven Repository |  Blocker | build | Tom White | Giridharan Kesavan |
| [HDFS-1267](https://issues.apache.org/jira/browse/HDFS-1267) | fuse-dfs does not compile |  Critical | fuse-dfs | Tom White | Devaraj Das |
| [HDFS-1258](https://issues.apache.org/jira/browse/HDFS-1258) | Clearing namespace quota on "/" corrupts FS image |  Blocker | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-1255](https://issues.apache.org/jira/browse/HDFS-1255) | test-libhdfs.sh fails |  Blocker | test | Tom White | Tom White |
| [HDFS-1212](https://issues.apache.org/jira/browse/HDFS-1212) | Harmonize HDFS JAR library versions with Common |  Blocker | build | Tom White | Tom White |
| [HDFS-1193](https://issues.apache.org/jira/browse/HDFS-1193) | -mvn-system-deploy target is broken which inturn fails the mvn-deploy task leading to unstable mapreduce build. |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HDFS-1181](https://issues.apache.org/jira/browse/HDFS-1181) | Move configuration and script files post project split |  Blocker | scripts | Tom White | Tom White |
| [HDFS-1159](https://issues.apache.org/jira/browse/HDFS-1159) | clean-cache target removes wrong ivy cache |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-1104](https://issues.apache.org/jira/browse/HDFS-1104) | Fsck triggers full GC on NameNode |  Major | namenode | Hairong Kuang | Hairong Kuang |
| [HDFS-1088](https://issues.apache.org/jira/browse/HDFS-1088) | Prevent renaming a symlink to its target |  Major | namenode | Eli Collins | Eli Collins |
| [HDFS-1074](https://issues.apache.org/jira/browse/HDFS-1074) | TestProxyUtil fails |  Major | contrib/hdfsproxy | Tsz Wo Nicholas Sze | Srikanth Sundarrajan |
| [HDFS-1072](https://issues.apache.org/jira/browse/HDFS-1072) | AlreadyBeingCreatedException with HDFS\_NameNode as the lease holder |  Major | hdfs-client, namenode | Tsz Wo Nicholas Sze | Erik Steffl |
| [HDFS-1046](https://issues.apache.org/jira/browse/HDFS-1046) | Build fails trying to download an old version of tomcat |  Blocker | build, contrib/hdfsproxy | gary murry | Srikanth Sundarrajan |
| [HDFS-1041](https://issues.apache.org/jira/browse/HDFS-1041) | DFSClient does not retry in getFileChecksum(..) |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-1015](https://issues.apache.org/jira/browse/HDFS-1015) | Intermittent failure in TestSecurityTokenEditLog |  Major | namenode, test | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HDFS-1010](https://issues.apache.org/jira/browse/HDFS-1010) | HDFSProxy: Retrieve group information from UnixUserGroupInformation instead of LdapEntry |  Major | contrib/hdfsproxy | Srikanth Sundarrajan | Srikanth Sundarrajan |
| [HDFS-995](https://issues.apache.org/jira/browse/HDFS-995) | Replace usage of FileStatus#isDir() |  Blocker | namenode | Eli Collins | Eli Collins |
| [HDFS-966](https://issues.apache.org/jira/browse/HDFS-966) | NameNode recovers lease even in safemode |  Major | namenode | dhruba borthakur | dhruba borthakur |
| [HDFS-965](https://issues.apache.org/jira/browse/HDFS-965) | TestDelegationToken fails in trunk |  Major | test | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HDFS-961](https://issues.apache.org/jira/browse/HDFS-961) | dfs\_readdir incorrectly parses paths |  Major | fuse-dfs | Eli Collins | Eli Collins |
| [HDFS-939](https://issues.apache.org/jira/browse/HDFS-939) | libhdfs test is broken |  Blocker | libhdfs | Eli Collins | Eli Collins |
| [HDFS-938](https://issues.apache.org/jira/browse/HDFS-938) | Replace calls to UGI.getUserName() with UGI.getShortUserName() |  Major | hdfs-client, namenode | Jakob Homan | Jakob Homan |
| [HDFS-927](https://issues.apache.org/jira/browse/HDFS-927) | DFSInputStream retries too many times for new block locations |  Critical | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-913](https://issues.apache.org/jira/browse/HDFS-913) | TestRename won't run automatically from 'run-test-hdfs-faul-inject' target |  Major | test | Konstantin Boudnik | Suresh Srinivas |
| [HDFS-909](https://issues.apache.org/jira/browse/HDFS-909) | Race condition between rollEditLog or rollFSImage ant FSEditsLog.write operations  corrupts edits log |  Blocker | namenode | Cosmin Lehene | Todd Lipcon |
| [HDFS-897](https://issues.apache.org/jira/browse/HDFS-897) | ReplicasMap remove has a bug in generation stamp comparison |  Major | datanode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-894](https://issues.apache.org/jira/browse/HDFS-894) | DatanodeID.ipcPort is not updated when existing node re-registers |  Blocker | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-885](https://issues.apache.org/jira/browse/HDFS-885) | Datanode toString() NPEs on null dnRegistration |  Minor | datanode | Steve Loughran | Steve Loughran |
| [HDFS-880](https://issues.apache.org/jira/browse/HDFS-880) | TestNNLeaseRecovery fails on windows |  Major | test | Konstantin Shvachko | Konstantin Boudnik |
| [HDFS-877](https://issues.apache.org/jira/browse/HDFS-877) | Client-driven block verification not functioning |  Major | hdfs-client, test | Todd Lipcon | Todd Lipcon |
| [HDFS-861](https://issues.apache.org/jira/browse/HDFS-861) | fuse-dfs does not support O\_RDWR |  Minor | fuse-dfs | Brian Bockelman | Brian Bockelman |
| [HDFS-859](https://issues.apache.org/jira/browse/HDFS-859) | fuse-dfs utime behavior causes issues with tar |  Minor | fuse-dfs | Brian Bockelman | Brian Bockelman |
| [HDFS-858](https://issues.apache.org/jira/browse/HDFS-858) | Incorrect return codes for fuse-dfs |  Minor | fuse-dfs | Brian Bockelman | Brian Bockelman |
| [HDFS-857](https://issues.apache.org/jira/browse/HDFS-857) | Incorrect type for fuse-dfs capacity can cause "df" to return negative values on 32-bit machines |  Minor | fuse-dfs | Brian Bockelman | Brian Bockelman |
| [HDFS-856](https://issues.apache.org/jira/browse/HDFS-856) | Hardcoded replication level for new files in fuse-dfs |  Minor | fuse-dfs | Brian Bockelman | Brian Bockelman |
| [HDFS-849](https://issues.apache.org/jira/browse/HDFS-849) | TestFiDataTransferProtocol2#pipeline\_Fi\_18 sometimes fails |  Major | test | Hairong Kuang | Hairong Kuang |
| [HDFS-825](https://issues.apache.org/jira/browse/HDFS-825) | Build fails to pull latest hadoop-core-\* artifacts |  Critical | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-824](https://issues.apache.org/jira/browse/HDFS-824) | Stop lease checker in TestReadWhileWriting |  Major | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-823](https://issues.apache.org/jira/browse/HDFS-823) | In Checkpointer the getImage servlet is added to public rather than internal servlet list |  Major | namenode | Jakob Homan | Jakob Homan |
| [HDFS-812](https://issues.apache.org/jira/browse/HDFS-812) | FSNamesystem#internalReleaseLease throws NullPointerException on a single-block file's lease recovery |  Blocker | namenode | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-802](https://issues.apache.org/jira/browse/HDFS-802) | Update Eclipse configuration to match changes to Ivy configuration |  Major | build | Edwin Chan | Edward J. Yoon |
| [HDFS-797](https://issues.apache.org/jira/browse/HDFS-797) | TestHDFSCLI much slower after HDFS-265 merge |  Blocker | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-793](https://issues.apache.org/jira/browse/HDFS-793) | DataNode should first receive the whole packet ack message before it constructs and sends its own ack message for the packet |  Blocker | datanode | Hairong Kuang | Hairong Kuang |
| [HDFS-792](https://issues.apache.org/jira/browse/HDFS-792) | TestHDFSCLI is failing |  Blocker | test | Konstantin Boudnik | Todd Lipcon |
| [HDFS-791](https://issues.apache.org/jira/browse/HDFS-791) | Build is broken after HDFS-787 patch has been applied |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-785](https://issues.apache.org/jira/browse/HDFS-785) | Missing license header in java source files. |  Minor | documentation | Ravi Phulari | Ravi Phulari |
| [HDFS-783](https://issues.apache.org/jira/browse/HDFS-783) | libhdfs tests brakes code coverage runs with Clover |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-781](https://issues.apache.org/jira/browse/HDFS-781) | Metrics PendingDeletionBlocks is not decremented |  Blocker | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-775](https://issues.apache.org/jira/browse/HDFS-775) | FSDataset calls getCapacity() twice -bug? |  Minor | datanode | Steve Loughran | Steve Loughran |
| [HDFS-774](https://issues.apache.org/jira/browse/HDFS-774) | Intermittent race condition in TestFiPipelines |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-763](https://issues.apache.org/jira/browse/HDFS-763) | DataBlockScanner reporting of bad blocks is slightly misleading |  Major | datanode | dhruba borthakur | dhruba borthakur |
| [HDFS-761](https://issues.apache.org/jira/browse/HDFS-761) | Failure to process rename operation from edits log due to quota verification |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-757](https://issues.apache.org/jira/browse/HDFS-757) | Unit tests failure for RAID |  Major | contrib/raid | dhruba borthakur | dhruba borthakur |
| [HDFS-756](https://issues.apache.org/jira/browse/HDFS-756) | libhdfs unit tests do not run |  Critical | libhdfs | dhruba borthakur | Eli Collins |
| [HDFS-750](https://issues.apache.org/jira/browse/HDFS-750) | TestRename build failure |  Blocker | build | Suresh Srinivas | Suresh Srinivas |
| [HDFS-741](https://issues.apache.org/jira/browse/HDFS-741) | TestHFlush test doesn't seek() past previously written part of the file |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-735](https://issues.apache.org/jira/browse/HDFS-735) | TestReadWhileWriting has wrong line termination symbols |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-725](https://issues.apache.org/jira/browse/HDFS-725) | Support the build error fix for HADOOP-6327 |  Major | test | Sanjay Radia | Sanjay Radia |
| [HDFS-724](https://issues.apache.org/jira/browse/HDFS-724) | Pipeline close hangs if one of the datanode is not responsive. |  Blocker | datanode, hdfs-client | Tsz Wo Nicholas Sze | Hairong Kuang |
| [HDFS-722](https://issues.apache.org/jira/browse/HDFS-722) | The pointcut callCreateBlockWriteStream in FSDatasetAspects is broken |  Major | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-706](https://issues.apache.org/jira/browse/HDFS-706) | Intermittent failures in TestFiHFlush |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-699](https://issues.apache.org/jira/browse/HDFS-699) | Primary datanode should compare replicas' on disk lengths |  Major | datanode | Tsz Wo Nicholas Sze | Hairong Kuang |
| [HDFS-695](https://issues.apache.org/jira/browse/HDFS-695) | RaidNode should read in configuration from hdfs-site.xml |  Major | contrib/raid | dhruba borthakur | dhruba borthakur |
| [HDFS-691](https://issues.apache.org/jira/browse/HDFS-691) | Limitation on java.io.InputStream.available() |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-690](https://issues.apache.org/jira/browse/HDFS-690) | TestAppend2#testComplexAppend failed on "Too many open files" |  Blocker | test | Hairong Kuang | Hairong Kuang |
| [HDFS-688](https://issues.apache.org/jira/browse/HDFS-688) | Add configuration resources to DFSAdmin |  Major | hdfs-client | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-682](https://issues.apache.org/jira/browse/HDFS-682) | TestBlockUnderConstruction fails |  Major | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-677](https://issues.apache.org/jira/browse/HDFS-677) | Rename failure due to quota results in deletion of src directory |  Blocker | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-673](https://issues.apache.org/jira/browse/HDFS-673) | BlockReceiver#PacketResponder should not remove a packet from the ack queue before its ack is sent |  Blocker | datanode | Hairong Kuang | Hairong Kuang |
| [HDFS-646](https://issues.apache.org/jira/browse/HDFS-646) | missing test-contrib ant target would break hudson patch test process |  Blocker | build | Giridharan Kesavan | Giridharan Kesavan |
| [HDFS-641](https://issues.apache.org/jira/browse/HDFS-641) | Move all of the benchmarks and tests that depend on mapreduce to mapreduce |  Blocker | test | Owen O'Malley | Owen O'Malley |
| [HDFS-640](https://issues.apache.org/jira/browse/HDFS-640) | TestHDFSFileContextMainOperations uses old FileContext.mkdirs(..) |  Major | test | Tsz Wo Nicholas Sze | Suresh Srinivas |
| [HDFS-638](https://issues.apache.org/jira/browse/HDFS-638) | The build.xml refences jars that don't exist |  Major | build | Owen O'Malley | Owen O'Malley |
| [HDFS-637](https://issues.apache.org/jira/browse/HDFS-637) | DataNode sends a Success ack when block write fails |  Blocker | datanode | Hairong Kuang | Hairong Kuang |
| [HDFS-629](https://issues.apache.org/jira/browse/HDFS-629) | Remove ReplicationTargetChooser.java along with fixing import warnings. |  Major | namenode | Konstantin Shvachko | dhruba borthakur |
| [HDFS-625](https://issues.apache.org/jira/browse/HDFS-625) | ListPathsServlet throws NullPointerException |  Major | namenode | Tsz Wo Nicholas Sze | Suresh Srinivas |
| [HDFS-622](https://issues.apache.org/jira/browse/HDFS-622) | checkMinReplication should count only live node. |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-614](https://issues.apache.org/jira/browse/HDFS-614) | TestDatanodeBlockScanner obtain should data-node directories directly from MiniDFSCluster |  Major | test | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-612](https://issues.apache.org/jira/browse/HDFS-612) | FSDataset should not use org.mortbay.log.Log |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-611](https://issues.apache.org/jira/browse/HDFS-611) | Heartbeats times from Datanodes increase when there are plenty of blocks to delete |  Major | datanode | dhruba borthakur | Zheng Shao |
| [HDFS-606](https://issues.apache.org/jira/browse/HDFS-606) | ConcurrentModificationException in invalidateCorruptReplicas() |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-602](https://issues.apache.org/jira/browse/HDFS-602) | Atempt to make a directory under an existing file on DistributedFileSystem should throw an FileAlreadyExistsException instead of FileNotFoundException |  Major | hdfs-client, namenode | Boris Shkolnik | Boris Shkolnik |
| [HDFS-601](https://issues.apache.org/jira/browse/HDFS-601) | TestBlockReport should obtain data directories from MiniHDFSCluster |  Major | test | Konstantin Shvachko | Konstantin Boudnik |
| [HDFS-596](https://issues.apache.org/jira/browse/HDFS-596) | Memory leak in libhdfs: hdfsFreeFileInfo() in libhdfs does not free memory for mOwner and mGroup |  Blocker | fuse-dfs | Zhang Bingjun | Zhang Bingjun |
| [HDFS-587](https://issues.apache.org/jira/browse/HDFS-587) | Test programs support only default queue. |  Major | test | Sreekanth Ramakrishnan | Erik Steffl |
| [HDFS-586](https://issues.apache.org/jira/browse/HDFS-586) | TestBlocksWithNotEnoughRacks fails |  Major | test | Hairong Kuang | Jitendra Nath Pandey |
| [HDFS-568](https://issues.apache.org/jira/browse/HDFS-568) | TestServiceLevelAuthorization fails on latest build in Hudson |  Minor | test | gary murry | Amareshwari Sriramadasu |
| [HDFS-553](https://issues.apache.org/jira/browse/HDFS-553) | BlockSender reports wrong failed position in ChecksumException |  Major | datanode | Hairong Kuang | Hairong Kuang |
| [HDFS-534](https://issues.apache.org/jira/browse/HDFS-534) | Required avro classes are missing |  Major | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-525](https://issues.apache.org/jira/browse/HDFS-525) | ListPathsServlet.java uses static SimpleDateFormat that has threading issues |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-514](https://issues.apache.org/jira/browse/HDFS-514) | DFSClient.namenode is a public field. Should be private. |  Major | hdfs-client | Bill Zeller | Bill Zeller |
| [HDFS-500](https://issues.apache.org/jira/browse/HDFS-500) | Fix lingering and new javac warnings |  Minor | namenode | Jakob Homan | Jakob Homan |
| [HDFS-489](https://issues.apache.org/jira/browse/HDFS-489) | Updated TestHDFSCLI for changes from HADOOP-6139 |  Major | test | Jakob Homan | Jakob Homan |
| [HDFS-484](https://issues.apache.org/jira/browse/HDFS-484) | bin-package and package doesnt seem to package any jar file |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HDFS-482](https://issues.apache.org/jira/browse/HDFS-482) | change HsftpFileSystem's ssl.client.do.not.authenticate.server configuration setting to ssl-client.xml |  Major | contrib/hdfsproxy | zhiyong zhang | Srikanth Sundarrajan |
| [HDFS-481](https://issues.apache.org/jira/browse/HDFS-481) | Bug Fixes + HdfsProxy to use proxy user to impresonate the real user |  Major | contrib/hdfsproxy | zhiyong zhang | Srikanth Sundarrajan |
| [HDFS-480](https://issues.apache.org/jira/browse/HDFS-480) | Typo in jar name in build.xml |  Major | build, scripts | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-472](https://issues.apache.org/jira/browse/HDFS-472) | Document hdfsproxy design and set-up guide |  Major | contrib/hdfsproxy | zhiyong zhang | zhiyong zhang |
| [HDFS-464](https://issues.apache.org/jira/browse/HDFS-464) | Memory leaks in libhdfs |  Blocker | libhdfs | Christian Kunz | Christian Kunz |
| [HDFS-463](https://issues.apache.org/jira/browse/HDFS-463) | CreateEditsLog utility broken due to FSImage URL scheme check |  Major | tools | Suresh Srinivas | Suresh Srinivas |
| [HDFS-462](https://issues.apache.org/jira/browse/HDFS-462) | Unit tests not working under Windows |  Major | namenode, test | Luca Telloli | Jakob Homan |
| [HDFS-456](https://issues.apache.org/jira/browse/HDFS-456) | Problems with dfs.name.edits.dirs as URI |  Blocker | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-446](https://issues.apache.org/jira/browse/HDFS-446) | Offline Image Viewer Ls visitor incorrectly says 'output file' instead of 'input file' |  Minor | test, tools | Jakob Homan | Jakob Homan |
| [HDFS-441](https://issues.apache.org/jira/browse/HDFS-441) | TestFTPFileSystem fails |  Major | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-440](https://issues.apache.org/jira/browse/HDFS-440) | javadoc warnings: broken links |  Major | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-423](https://issues.apache.org/jira/browse/HDFS-423) | Unbreak FUSE build and fuse\_dfs\_wrapper.sh |  Major | fuse-dfs | Giridharan Kesavan | Eli Collins |
| [HDFS-192](https://issues.apache.org/jira/browse/HDFS-192) | TestBackupNode sometimes fails |  Major | namenode | Tsz Wo Nicholas Sze | Konstantin Shvachko |
| [HDFS-187](https://issues.apache.org/jira/browse/HDFS-187) | TestStartup fails if hdfs is running in the same machine |  Major | test | Tsz Wo Nicholas Sze | Todd Lipcon |
| [HDFS-181](https://issues.apache.org/jira/browse/HDFS-181) | INode.getPathComponents throws NPE when given a non-absolute path |  Minor | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-167](https://issues.apache.org/jira/browse/HDFS-167) | DFSClient continues to retry indefinitely |  Minor | hdfs-client | Derek Wollenstein | Bill Zeller |
| [HDFS-127](https://issues.apache.org/jira/browse/HDFS-127) | DFSClient block read failures cause open DFSInputStream to become unusable |  Major | hdfs-client | Igor Bolotin | Igor Bolotin |
| [HDFS-119](https://issues.apache.org/jira/browse/HDFS-119) | logSync() may block NameNode forever. |  Major | namenode | Konstantin Shvachko | Suresh Srinivas |
| [HDFS-101](https://issues.apache.org/jira/browse/HDFS-101) | DFS write pipeline : DFSClient sometimes does not detect second datanode failure |  Blocker | datanode | Raghu Angadi | Hairong Kuang |
| [HDFS-29](https://issues.apache.org/jira/browse/HDFS-29) | In Datanode, update block may fail due to length inconsistency |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-2014](https://issues.apache.org/jira/browse/MAPREDUCE-2014) | Remove task-controller from 0.21 branch |  Major | security | Tom White | Tom White |
| [MAPREDUCE-2012](https://issues.apache.org/jira/browse/MAPREDUCE-2012) | Some contrib tests fail in branch 0.21 and trunk |  Blocker | test | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1942](https://issues.apache.org/jira/browse/MAPREDUCE-1942) |  'compile-fault-inject' should never be called directly. |  Minor | build | Konstantin Boudnik | Konstantin Boudnik |
| [MAPREDUCE-1926](https://issues.apache.org/jira/browse/MAPREDUCE-1926) | MapReduce distribution is missing build-utils.xml |  Blocker | build | Tom White | Tom White |
| [MAPREDUCE-1880](https://issues.apache.org/jira/browse/MAPREDUCE-1880) | "java.lang.ArithmeticException: Non-terminating decimal expansion; no exact representable decimal result." while running "hadoop jar hadoop-0.20.1+169.89-examples.jar pi 4 30" |  Minor | examples | Victor Pakhomov | Tsz Wo Nicholas Sze |
| [MAPREDUCE-1876](https://issues.apache.org/jira/browse/MAPREDUCE-1876) | TaskAttemptStartedEvent.java incorrectly logs MAP\_ATTEMPT\_STARTED as event type for reduce tasks |  Major | jobtracker | Amar Kamat | Amar Kamat |
| [MAPREDUCE-1870](https://issues.apache.org/jira/browse/MAPREDUCE-1870) | Harmonize MapReduce JAR library versions with Common and HDFS |  Blocker | build | Tom White | Tom White |
| [MAPREDUCE-1853](https://issues.apache.org/jira/browse/MAPREDUCE-1853) | MultipleOutputs does not cache TaskAttemptContext |  Critical | task | Torsten Curdt | Torsten Curdt |
| [MAPREDUCE-1845](https://issues.apache.org/jira/browse/MAPREDUCE-1845) | FairScheduler.tasksToPeempt() can return negative number |  Major | contrib/fair-share | Scott Chen | Scott Chen |
| [MAPREDUCE-1810](https://issues.apache.org/jira/browse/MAPREDUCE-1810) | 0.21 build is broken |  Major | build | Sharad Agarwal | Tom White |
| [MAPREDUCE-1765](https://issues.apache.org/jira/browse/MAPREDUCE-1765) | Streaming doc - change StreamXmlRecord to StreamXmlRecordReader |  Minor | contrib/streaming, documentation | Corinne Chandel | Corinne Chandel |
| [MAPREDUCE-1747](https://issues.apache.org/jira/browse/MAPREDUCE-1747) | Remove documentation for the 'unstable' job-acls feature |  Blocker | documentation | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-1727](https://issues.apache.org/jira/browse/MAPREDUCE-1727) | TestJobACLs fails after HADOOP-6686 |  Major | test | Vinod Kumar Vavilapalli | Ravi Gummadi |
| [MAPREDUCE-1725](https://issues.apache.org/jira/browse/MAPREDUCE-1725) | Fix MapReduce API incompatibilities between 0.20 and 0.21 |  Blocker | client | Tom White | Tom White |
| [MAPREDUCE-1705](https://issues.apache.org/jira/browse/MAPREDUCE-1705) | Archiving and Purging of parity files should handle globbed policies |  Major | contrib/raid | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-1697](https://issues.apache.org/jira/browse/MAPREDUCE-1697) | Document the behavior of -file option in streaming and deprecate it in favour of generic -files option. |  Major | contrib/streaming, documentation | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1695](https://issues.apache.org/jira/browse/MAPREDUCE-1695) | capacity scheduler is not included in findbugs/javadoc targets |  Major | capacity-sched | Hong Tang | Hong Tang |
| [MAPREDUCE-1692](https://issues.apache.org/jira/browse/MAPREDUCE-1692) | Remove TestStreamedMerge from the streaming tests |  Minor | contrib/streaming | Sreekanth Ramakrishnan | Amareshwari Sriramadasu |
| [MAPREDUCE-1659](https://issues.apache.org/jira/browse/MAPREDUCE-1659) | RaidNode should write temp files on /tmp and add random numbers to their names to avoid conflicts |  Major | contrib/raid | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-1657](https://issues.apache.org/jira/browse/MAPREDUCE-1657) | After task logs directory is deleted, tasklog servlet displays wrong error message about job ACLs |  Major | tasktracker | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-1635](https://issues.apache.org/jira/browse/MAPREDUCE-1635) | ResourceEstimator does not work after MAPREDUCE-842 |  Major | tasktracker | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1628](https://issues.apache.org/jira/browse/MAPREDUCE-1628) | HarFileSystem shows incorrect replication numbers and permissions |  Major | harchive | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-1622](https://issues.apache.org/jira/browse/MAPREDUCE-1622) | Include slf4j dependencies in binary tarball |  Minor | build | Chris Douglas | Chris Douglas |
| [MAPREDUCE-1618](https://issues.apache.org/jira/browse/MAPREDUCE-1618) | JobStatus.getJobAcls() and setJobAcls should have javadoc |  Trivial | documentation | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1612](https://issues.apache.org/jira/browse/MAPREDUCE-1612) | job conf file is not accessible from job history web page |  Major | jobtracker | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-1611](https://issues.apache.org/jira/browse/MAPREDUCE-1611) | Refresh nodes and refresh queues doesnt work with service authorization enabled |  Blocker | security | Amar Kamat | Amar Kamat |
| [MAPREDUCE-1610](https://issues.apache.org/jira/browse/MAPREDUCE-1610) | Forrest documentation should be updated to reflect the changes in MAPREDUCE-856 |  Major | documentation | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-1609](https://issues.apache.org/jira/browse/MAPREDUCE-1609) | TaskTracker.localizeJob should not set permissions on job log directory recursively |  Major | tasktracker | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1607](https://issues.apache.org/jira/browse/MAPREDUCE-1607) | Task controller may not set permissions for a task cleanup attempt's log directory |  Major | task-controller | Hemanth Yamijala | Amareshwari Sriramadasu |
| [MAPREDUCE-1606](https://issues.apache.org/jira/browse/MAPREDUCE-1606) | TestJobACLs may timeout as there are no slots for launching JOB\_CLEANUP task |  Major | test | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-1604](https://issues.apache.org/jira/browse/MAPREDUCE-1604) | Job acls should be documented in forrest. |  Major | documentation, security | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1602](https://issues.apache.org/jira/browse/MAPREDUCE-1602) | When the src does not exist, archive shows IndexOutOfBoundsException |  Major | harchive | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-1596](https://issues.apache.org/jira/browse/MAPREDUCE-1596) | MapReduce trunk snapshot is not being published to maven |  Critical | build | Aaron Kimball | Giridharan Kesavan |
| [MAPREDUCE-1585](https://issues.apache.org/jira/browse/MAPREDUCE-1585) | Create Hadoop Archives version 2 with filenames URL-encoded |  Major | harchive | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-1578](https://issues.apache.org/jira/browse/MAPREDUCE-1578) | HadoopArchives.java should not use HarFileSystem.VERSION |  Major | harchive | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-1573](https://issues.apache.org/jira/browse/MAPREDUCE-1573) | TestStreamingAsDifferentUser fails if run as tt\_user |  Major | task-controller, test | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-1547](https://issues.apache.org/jira/browse/MAPREDUCE-1547) | Build Hadoop-Mapreduce-trunk and Mapreduce-trunk-Commit  fails |  Major | build | Iyappan Srinivasan | Giridharan Kesavan |
| [MAPREDUCE-1538](https://issues.apache.org/jira/browse/MAPREDUCE-1538) | TrackerDistributedCacheManager can fail because the number of subdirectories reaches system limit |  Major | tasktracker | Scott Chen | Scott Chen |
| [MAPREDUCE-1523](https://issues.apache.org/jira/browse/MAPREDUCE-1523) | Sometimes rumen trace generator fails to extract the job finish time. |  Major | tools/rumen | Hong Tang | Dick King |
| [MAPREDUCE-1519](https://issues.apache.org/jira/browse/MAPREDUCE-1519) | RaidNode fails to create new parity file if an older version already exists |  Major | contrib/raid | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-1515](https://issues.apache.org/jira/browse/MAPREDUCE-1515) | need to pass down java5 and forrest home variables |  Major | build | Owen O'Malley | Al Thompson |
| [MAPREDUCE-1508](https://issues.apache.org/jira/browse/MAPREDUCE-1508) | NPE in TestMultipleLevelCaching on error cleanup path |  Major | test | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-1497](https://issues.apache.org/jira/browse/MAPREDUCE-1497) | Suppress warning on inconsistent TaskTracker.indexCache synchronization |  Major | tasktracker | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1494](https://issues.apache.org/jira/browse/MAPREDUCE-1494) | TestJobDirCleanup verifies wrong jobcache directory |  Minor | tasktracker, test | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1490](https://issues.apache.org/jira/browse/MAPREDUCE-1490) | Raid client throws NullPointerException during initialization |  Major | contrib/raid | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-1482](https://issues.apache.org/jira/browse/MAPREDUCE-1482) | Better handling of task diagnostic information stored in the TaskInProgress |  Major | jobtracker | Amar Kamat | Amar Kamat |
| [MAPREDUCE-1474](https://issues.apache.org/jira/browse/MAPREDUCE-1474) | forrest docs for archives is out of date. |  Major | documentation | Mahadev konar | Mahadev konar |
| [MAPREDUCE-1435](https://issues.apache.org/jira/browse/MAPREDUCE-1435) | symlinks in cwd of the task are not handled properly after MAPREDUCE-896 |  Major | tasktracker | Amareshwari Sriramadasu | Ravi Gummadi |
| [MAPREDUCE-1422](https://issues.apache.org/jira/browse/MAPREDUCE-1422) | Changing permissions of files/dirs under job-work-dir may be needed sothat cleaning up of job-dir in all mapred-local-directories succeeds always |  Major | task-controller, tasktracker | Ravi Gummadi | Amar Kamat |
| [MAPREDUCE-1421](https://issues.apache.org/jira/browse/MAPREDUCE-1421) | LinuxTaskController tests failing on trunk after the commit of MAPREDUCE-1385 |  Major | task-controller, tasktracker, test | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1420](https://issues.apache.org/jira/browse/MAPREDUCE-1420) | TestTTResourceReporting failing in trunk |  Major | test | Iyappan Srinivasan | Scott Chen |
| [MAPREDUCE-1417](https://issues.apache.org/jira/browse/MAPREDUCE-1417) | Forrest documentation should be updated to reflect the changes in MAPREDUCE-744 |  Major | documentation | Vinod Kumar Vavilapalli | Ravi Gummadi |
| [MAPREDUCE-1412](https://issues.apache.org/jira/browse/MAPREDUCE-1412) | TestTaskTrackerBlacklisting fails sometimes |  Minor | test | Chris Douglas | Chris Douglas |
| [MAPREDUCE-1409](https://issues.apache.org/jira/browse/MAPREDUCE-1409) | FileOutputCommitter.abortTask should not catch IOException |  Major | tasktracker | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1408](https://issues.apache.org/jira/browse/MAPREDUCE-1408) | Allow customization of job submission policies |  Major | contrib/gridmix | rahul k singh | rahul k singh |
| [MAPREDUCE-1399](https://issues.apache.org/jira/browse/MAPREDUCE-1399) | The archive command shows a null error message |  Major | harchive | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-1398](https://issues.apache.org/jira/browse/MAPREDUCE-1398) | TaskLauncher remains stuck on tasks waiting for free nodes even if task is killed. |  Major | tasktracker | Hemanth Yamijala | Amareshwari Sriramadasu |
| [MAPREDUCE-1397](https://issues.apache.org/jira/browse/MAPREDUCE-1397) | NullPointerException observed during task failures |  Minor | tasktracker | Ramya Sunil | Amareshwari Sriramadasu |
| [MAPREDUCE-1378](https://issues.apache.org/jira/browse/MAPREDUCE-1378) | Args in job details links on jobhistory.jsp are not URL encoded |  Trivial | jobtracker | E. Sammer | E. Sammer |
| [MAPREDUCE-1372](https://issues.apache.org/jira/browse/MAPREDUCE-1372) | ConcurrentModificationException in JobInProgress |  Blocker | jobtracker | Amareshwari Sriramadasu | Dick King |
| [MAPREDUCE-1369](https://issues.apache.org/jira/browse/MAPREDUCE-1369) | JUnit tests should never depend on anything in conf |  Blocker | test | Anatoli Fomenko | Anatoli Fomenko |
| [MAPREDUCE-1365](https://issues.apache.org/jira/browse/MAPREDUCE-1365) | TestTaskTrackerBlacklisting.AtestTrackerBlacklistingForJobFailures is mistyped. |  Trivial | test | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1348](https://issues.apache.org/jira/browse/MAPREDUCE-1348) | Package org.apache.hadoop.blockforensics does not match directory name |  Major | build | Tom White | Tom White |
| [MAPREDUCE-1342](https://issues.apache.org/jira/browse/MAPREDUCE-1342) | Potential JT deadlock in faulty TT tracking |  Major | jobtracker | Todd Lipcon | Amareshwari Sriramadasu |
| [MAPREDUCE-1322](https://issues.apache.org/jira/browse/MAPREDUCE-1322) | TestStreamingAsDifferentUser fails on trunk |  Major | contrib/streaming, test | Amareshwari Sriramadasu | Devaraj Das |
| [MAPREDUCE-1316](https://issues.apache.org/jira/browse/MAPREDUCE-1316) | JobTracker holds stale references to retired jobs via unreported tasks |  Blocker | jobtracker | Amar Kamat | Amar Kamat |
| [MAPREDUCE-1301](https://issues.apache.org/jira/browse/MAPREDUCE-1301) | TestDebugScriptWithLinuxTaskController fails |  Major | test | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1294](https://issues.apache.org/jira/browse/MAPREDUCE-1294) | Build fails to pull latest hadoop-core-\* artifacts |  Critical | build | Konstantin Boudnik | Konstantin Boudnik |
| [MAPREDUCE-1293](https://issues.apache.org/jira/browse/MAPREDUCE-1293) | AutoInputFormat doesn't work with non-default FileSystems |  Major | contrib/streaming | Andrew Hitchcock | Andrew Hitchcock |
| [MAPREDUCE-1285](https://issues.apache.org/jira/browse/MAPREDUCE-1285) | DistCp cannot handle -delete if destination is local filesystem |  Major | distcp | Peter Romianowski | Peter Romianowski |
| [MAPREDUCE-1284](https://issues.apache.org/jira/browse/MAPREDUCE-1284) | TestLocalizationWithLinuxTaskController fails |  Major | tasktracker, test | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-1276](https://issues.apache.org/jira/browse/MAPREDUCE-1276) | Shuffle connection logic needs correction |  Blocker | task | Jothi Padmanabhan | Amareshwari Sriramadasu |
| [MAPREDUCE-1258](https://issues.apache.org/jira/browse/MAPREDUCE-1258) | Fair scheduler event log not logging job info |  Minor | contrib/fair-share | Matei Zaharia | Matei Zaharia |
| [MAPREDUCE-1249](https://issues.apache.org/jira/browse/MAPREDUCE-1249) | mapreduce.reduce.shuffle.read.timeout's default value should be 3 minutes, in mapred-default.xml |  Blocker | task | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1245](https://issues.apache.org/jira/browse/MAPREDUCE-1245) | TestFairScheduler fails with "too many open files" error |  Major | test | Vinod Kumar Vavilapalli | Sharad Agarwal |
| [MAPREDUCE-1244](https://issues.apache.org/jira/browse/MAPREDUCE-1244) | eclipse-plugin fails with missing dependencies |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [MAPREDUCE-1239](https://issues.apache.org/jira/browse/MAPREDUCE-1239) | Mapreduce test build is broken after HADOOP-5107 |  Blocker | build | Vinod Kumar Vavilapalli | Giridharan Kesavan |
| [MAPREDUCE-1230](https://issues.apache.org/jira/browse/MAPREDUCE-1230) | Vertica streaming adapter doesn't handle nulls in all cases |  Major | contrib/vertica | Omer Trajman | Omer Trajman |
| [MAPREDUCE-1222](https://issues.apache.org/jira/browse/MAPREDUCE-1222) | [Mumak] We should not include nodes with numeric ips in cluster topology. |  Major | contrib/mumak | Hong Tang | Hong Tang |
| [MAPREDUCE-1212](https://issues.apache.org/jira/browse/MAPREDUCE-1212) | Mapreduce contrib project ivy dependencies are not included in binary target |  Critical | build | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-1196](https://issues.apache.org/jira/browse/MAPREDUCE-1196) | MAPREDUCE-947 incompatibly changed FileOutputCommitter |  Blocker | client | Arun C Murthy | Arun C Murthy |
| [MAPREDUCE-1186](https://issues.apache.org/jira/browse/MAPREDUCE-1186) | While localizing a DistributedCache file, TT sets permissions recursively on the whole base-dir |  Major | tasktracker | Vinod Kumar Vavilapalli | Amareshwari Sriramadasu |
| [MAPREDUCE-1177](https://issues.apache.org/jira/browse/MAPREDUCE-1177) | TestTaskTrackerMemoryManager retries a task for more than 100 times. |  Blocker | tasktracker, test | Amareshwari Sriramadasu | Vinod Kumar Vavilapalli |
| [MAPREDUCE-1171](https://issues.apache.org/jira/browse/MAPREDUCE-1171) | Lots of fetch failures |  Blocker | task | Christian Kunz | Amareshwari Sriramadasu |
| [MAPREDUCE-1160](https://issues.apache.org/jira/browse/MAPREDUCE-1160) | Two log statements at INFO level fill up jobtracker logs |  Major | jobtracker | Hemanth Yamijala | Ravi Gummadi |
| [MAPREDUCE-1158](https://issues.apache.org/jira/browse/MAPREDUCE-1158) | running\_maps is not decremented when the tasks of a job is killed/failed |  Major | jobtracker | Ramya Sunil | Sharad Agarwal |
| [MAPREDUCE-1155](https://issues.apache.org/jira/browse/MAPREDUCE-1155) | Streaming tests swallow exceptions |  Minor | contrib/streaming | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-1153](https://issues.apache.org/jira/browse/MAPREDUCE-1153) | Metrics counting tasktrackers and blacklisted tasktrackers are not updated when trackers are decommissioned. |  Major | jobtracker | Hemanth Yamijala | Sharad Agarwal |
| [MAPREDUCE-1140](https://issues.apache.org/jira/browse/MAPREDUCE-1140) | Per cache-file refcount can become negative when tasks release distributed-cache files |  Major | tasktracker | Vinod Kumar Vavilapalli | Amareshwari Sriramadasu |
| [MAPREDUCE-1131](https://issues.apache.org/jira/browse/MAPREDUCE-1131) | Using profilers other than hprof can cause JobClient to report job failure |  Major | client | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-1128](https://issues.apache.org/jira/browse/MAPREDUCE-1128) | MRUnit Allows Iteration Twice |  Minor | contrib/mrunit | Ed Kohlwey | Aaron Kimball |
| [MAPREDUCE-1124](https://issues.apache.org/jira/browse/MAPREDUCE-1124) | TestGridmixSubmission fails sometimes |  Major | contrib/gridmix | Amareshwari Sriramadasu | Chris Douglas |
| [MAPREDUCE-1119](https://issues.apache.org/jira/browse/MAPREDUCE-1119) | When tasks fail to report status, show tasks's stack dump before killing |  Major | tasktracker | Todd Lipcon | Aaron Kimball |
| [MAPREDUCE-1111](https://issues.apache.org/jira/browse/MAPREDUCE-1111) | JT Jetty UI not working if we run mumak.sh off packaged distribution directory. |  Major | contrib/mumak | Hong Tang | Hong Tang |
| [MAPREDUCE-1105](https://issues.apache.org/jira/browse/MAPREDUCE-1105) | CapacityScheduler: It should be possible to set queue hard-limit beyond it's actual capacity |  Blocker | capacity-sched | Arun C Murthy | rahul k singh |
| [MAPREDUCE-1104](https://issues.apache.org/jira/browse/MAPREDUCE-1104) | RecoveryManager not initialized in SimulatorJobTracker led to NPE in JT Jetty server |  Major | contrib/mumak | Hong Tang | Hong Tang |
| [MAPREDUCE-1098](https://issues.apache.org/jira/browse/MAPREDUCE-1098) | Incorrect synchronization in DistributedCache causes TaskTrackers to freeze up during localization of Cache for tasks. |  Major | tasktracker | Sreekanth Ramakrishnan | Amareshwari Sriramadasu |
| [MAPREDUCE-1090](https://issues.apache.org/jira/browse/MAPREDUCE-1090) | Modify log statement in Tasktracker log related to memory monitoring to include attempt id. |  Major | tasktracker | Hemanth Yamijala | Hemanth Yamijala |
| [MAPREDUCE-1089](https://issues.apache.org/jira/browse/MAPREDUCE-1089) | Fair Scheduler preemption triggers NPE when tasks are scheduled but not running |  Major | contrib/fair-share | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-1086](https://issues.apache.org/jira/browse/MAPREDUCE-1086) | hadoop commands in streaming tasks are trying to write to tasktracker's log |  Major | tasktracker | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-1077](https://issues.apache.org/jira/browse/MAPREDUCE-1077) | When rumen reads a truncated job tracker log, it produces a job whose outcome is SUCCESS.  Should be null. |  Major | tools/rumen | Dick King | Dick King |
| [MAPREDUCE-1076](https://issues.apache.org/jira/browse/MAPREDUCE-1076) | ClusterStatus class should be deprecated |  Blocker | client | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-1065](https://issues.apache.org/jira/browse/MAPREDUCE-1065) | Modify the mapred tutorial documentation to use new mapreduce api. |  Blocker | documentation | Amareshwari Sriramadasu | Aaron Kimball |
| [MAPREDUCE-1062](https://issues.apache.org/jira/browse/MAPREDUCE-1062) | MRReliability test does not work with retired jobs |  Major | test | Sreekanth Ramakrishnan | Sreekanth Ramakrishnan |
| [MAPREDUCE-1038](https://issues.apache.org/jira/browse/MAPREDUCE-1038) | Mumak's compile-aspects target weaves aspects even though there are no changes to the Mumak's sources |  Major | build | Vinod Kumar Vavilapalli | Aaron Kimball |
| [MAPREDUCE-1031](https://issues.apache.org/jira/browse/MAPREDUCE-1031) | ant tar target doens't seem to compile tests in contrib projects |  Blocker | build | Arun C Murthy | Aaron Kimball |
| [MAPREDUCE-1030](https://issues.apache.org/jira/browse/MAPREDUCE-1030) | Reduce tasks are getting starved in capacity scheduler |  Blocker | capacity-sched | rahul k singh | rahul k singh |
| [MAPREDUCE-1029](https://issues.apache.org/jira/browse/MAPREDUCE-1029) | TestCopyFiles fails on testHftpAccessControl() |  Blocker | build | Amar Kamat | Jothi Padmanabhan |
| [MAPREDUCE-1028](https://issues.apache.org/jira/browse/MAPREDUCE-1028) | Cleanup tasks are scheduled using high memory configuration, leaving tasks in unassigned state. |  Blocker | jobtracker | Hemanth Yamijala | Ravi Gummadi |
| [MAPREDUCE-1022](https://issues.apache.org/jira/browse/MAPREDUCE-1022) | Trunk tests fail because of test-failure in Vertica |  Blocker | test | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-1018](https://issues.apache.org/jira/browse/MAPREDUCE-1018) | Document changes to the memory management and scheduling model |  Blocker | documentation | Hemanth Yamijala | Hemanth Yamijala |
| [MAPREDUCE-1009](https://issues.apache.org/jira/browse/MAPREDUCE-1009) | Forrest documentation needs to be updated to describes features provided for supporting hierarchical queues |  Blocker | documentation | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [MAPREDUCE-1007](https://issues.apache.org/jira/browse/MAPREDUCE-1007) | MAPREDUCE-777 breaks the UI for hierarchial Queues. |  Blocker | jobtracker | rahul k singh | V.V.Chaitanya Krishna |
| [MAPREDUCE-1002](https://issues.apache.org/jira/browse/MAPREDUCE-1002) | After MAPREDUCE-862, command line queue-list doesn't print any queues |  Major | client | Vinod Kumar Vavilapalli | V.V.Chaitanya Krishna |
| [MAPREDUCE-1000](https://issues.apache.org/jira/browse/MAPREDUCE-1000) | JobHistory.initDone() should retain the try ... catch in the body |  Major | jobtracker | Hong Tang | Jothi Padmanabhan |
| [MAPREDUCE-988](https://issues.apache.org/jira/browse/MAPREDUCE-988) | ant package does not copy the capacity-scheduler.jar under HADOOP\_HOME/build/hadoop-mapred-0.21.0-dev/contrib/capacity-scheduler |  Major | build | Iyappan Srinivasan | Hong Tang |
| [MAPREDUCE-986](https://issues.apache.org/jira/browse/MAPREDUCE-986) | rumen makes a task with a null type when one of the task lines is truncated |  Major | tools/rumen | Dick King | Dick King |
| [MAPREDUCE-977](https://issues.apache.org/jira/browse/MAPREDUCE-977) | Missing jackson jars from Eclipse template |  Major | build | Tom White | Tom White |
| [MAPREDUCE-973](https://issues.apache.org/jira/browse/MAPREDUCE-973) | Move test utilities from examples to test |  Trivial | examples, test | Chris Douglas | Chris Douglas |
| [MAPREDUCE-971](https://issues.apache.org/jira/browse/MAPREDUCE-971) | distcp does not always remove distcp.tmp.dir |  Major | distcp | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-968](https://issues.apache.org/jira/browse/MAPREDUCE-968) | NPE in distcp encountered when placing \_logs directory on S3FileSystem |  Major | distcp | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-962](https://issues.apache.org/jira/browse/MAPREDUCE-962) | NPE in ProcfsBasedProcessTree.destroy() |  Major | tasktracker | Vinod Kumar Vavilapalli | Ravi Gummadi |
| [MAPREDUCE-952](https://issues.apache.org/jira/browse/MAPREDUCE-952) | Previously removed Task.Counter reintroduced by MAPREDUCE-318 |  Blocker | task | Arun C Murthy | Jothi Padmanabhan |
| [MAPREDUCE-945](https://issues.apache.org/jira/browse/MAPREDUCE-945) | Test programs support only default queue. |  Major | test | Suman Sehgal | Sreekanth Ramakrishnan |
| [MAPREDUCE-915](https://issues.apache.org/jira/browse/MAPREDUCE-915) | For secure environments, the Map/Reduce debug script must be run as the user. |  Blocker | security, tasktracker | Hemanth Yamijala | Devaraj Das |
| [MAPREDUCE-913](https://issues.apache.org/jira/browse/MAPREDUCE-913) | TaskRunner crashes with NPE resulting in held up slots, UNINITIALIZED tasks and hung TaskTracker |  Blocker | tasktracker | Vinod Kumar Vavilapalli | Amareshwari Sriramadasu |
| [MAPREDUCE-899](https://issues.apache.org/jira/browse/MAPREDUCE-899) | When using LinuxTaskController, localized files may become accessible to unintended users if permissions are misconfigured. |  Major | tasktracker | Vinod Kumar Vavilapalli | Amareshwari Sriramadasu |
| [MAPREDUCE-896](https://issues.apache.org/jira/browse/MAPREDUCE-896) | Users can set non-writable permissions on temporary files for TT and can abuse disk usage. |  Major | tasktracker | Vinod Kumar Vavilapalli | Ravi Gummadi |
| [MAPREDUCE-890](https://issues.apache.org/jira/browse/MAPREDUCE-890) | After HADOOP-4491, the user who started mapred system is not able to run job. |  Blocker | tasktracker | Karam Singh | Ravi Gummadi |
| [MAPREDUCE-889](https://issues.apache.org/jira/browse/MAPREDUCE-889) | binary communication formats added to Streaming by HADOOP-1722 should be documented |  Blocker | documentation | Amareshwari Sriramadasu | Klaas Bosteels |
| [MAPREDUCE-884](https://issues.apache.org/jira/browse/MAPREDUCE-884) | TestReduceFetchFromPartialMem fails sometimes |  Major | test | Amar Kamat | Jothi Padmanabhan |
| [MAPREDUCE-879](https://issues.apache.org/jira/browse/MAPREDUCE-879) | TestTaskTrackerLocalization fails on MAC OS |  Blocker | test | Devaraj Das | Sreekanth Ramakrishnan |
| [MAPREDUCE-877](https://issues.apache.org/jira/browse/MAPREDUCE-877) | Required avro class are missing in contrib projects |  Blocker | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-867](https://issues.apache.org/jira/browse/MAPREDUCE-867) | trunk builds fails as ivy is lookin for avro jar from the local resolver |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [MAPREDUCE-859](https://issues.apache.org/jira/browse/MAPREDUCE-859) | Unable to run examples with current trunk |  Major | build | Jothi Padmanabhan | Ravi Gummadi |
| [MAPREDUCE-852](https://issues.apache.org/jira/browse/MAPREDUCE-852) | ExampleDriver is incorrectly set as a Main-Class in tools in build.xml |  Major | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-848](https://issues.apache.org/jira/browse/MAPREDUCE-848) | TestCapacityScheduler is failing |  Major | capacity-sched | Devaraj Das | Amar Kamat |
| [MAPREDUCE-845](https://issues.apache.org/jira/browse/MAPREDUCE-845) | build.xml hard codes findbugs heap size, in some configurations 512M is insufficient to successfully build |  Minor | build | Lee Tucker | Lee Tucker |
| [MAPREDUCE-809](https://issues.apache.org/jira/browse/MAPREDUCE-809) | Job summary logs show status of completed jobs as RUNNING |  Major | jobtracker | Arun C Murthy | Arun C Murthy |
| [MAPREDUCE-808](https://issues.apache.org/jira/browse/MAPREDUCE-808) | Buffer objects incorrectly serialized to typed bytes |  Major | contrib/streaming | Klaas Bosteels | Klaas Bosteels |
| [MAPREDUCE-799](https://issues.apache.org/jira/browse/MAPREDUCE-799) | Some of MRUnit's self-tests were not being run |  Major | contrib/mrunit | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-787](https://issues.apache.org/jira/browse/MAPREDUCE-787) | -files, -archives should honor user given symlink path |  Major | client | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [MAPREDUCE-773](https://issues.apache.org/jira/browse/MAPREDUCE-773) | LineRecordReader can report non-zero progress while it is processing a compressed stream |  Major | task | Devaraj Das | Devaraj Das |
| [MAPREDUCE-771](https://issues.apache.org/jira/browse/MAPREDUCE-771) | Setup and cleanup tasks remain in UNASSIGNED state for a long time on tasktrackers with long running high RAM tasks |  Blocker | jobtracker | Hemanth Yamijala | Hemanth Yamijala |
| [MAPREDUCE-764](https://issues.apache.org/jira/browse/MAPREDUCE-764) | TypedBytesInput's readRaw() does not preserve custom type codes |  Blocker | contrib/streaming | Klaas Bosteels | Klaas Bosteels |
| [MAPREDUCE-760](https://issues.apache.org/jira/browse/MAPREDUCE-760) | TestNodeRefresh might not work as expected |  Major | test | Amar Kamat | Amar Kamat |
| [MAPREDUCE-754](https://issues.apache.org/jira/browse/MAPREDUCE-754) | NPE in expiry thread when a TT is lost |  Minor | jobtracker | Ramya Sunil | Amar Kamat |
| [MAPREDUCE-743](https://issues.apache.org/jira/browse/MAPREDUCE-743) | Progress of map phase in map task is not updated properly |  Major | task | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-734](https://issues.apache.org/jira/browse/MAPREDUCE-734) | java.util.ConcurrentModificationException observed in unreserving slots for HiRam Jobs |  Major | capacity-sched | Karam Singh | Arun C Murthy |
| [MAPREDUCE-733](https://issues.apache.org/jira/browse/MAPREDUCE-733) | When running ant test TestTrackerBlacklistAcrossJobs, losing task tracker heartbeat exception occurs. |  Major | tasktracker | Iyappan Srinivasan | Arun C Murthy |
| [MAPREDUCE-722](https://issues.apache.org/jira/browse/MAPREDUCE-722) | More slots are getting reserved for HiRAM job tasks then required |  Major | capacity-sched | Karam Singh | Vinod Kumar Vavilapalli |
| [MAPREDUCE-717](https://issues.apache.org/jira/browse/MAPREDUCE-717) | Fix some corner case issues in speculative execution (post hadoop-2141) |  Major | jobtracker | Devaraj Das | Devaraj Das |
| [MAPREDUCE-708](https://issues.apache.org/jira/browse/MAPREDUCE-708) | node health check script does not refresh the "reason for blacklisting" |  Minor | tasktracker | Ramya Sunil | Sreekanth Ramakrishnan |
| [MAPREDUCE-702](https://issues.apache.org/jira/browse/MAPREDUCE-702) | eclipse-plugin jar target fails during packaging |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [MAPREDUCE-694](https://issues.apache.org/jira/browse/MAPREDUCE-694) | JSP jars should be added to dependcy list for Capacity scheduler |  Major | build, capacity-sched | Sreekanth Ramakrishnan | Giridharan Kesavan |
| [MAPREDUCE-683](https://issues.apache.org/jira/browse/MAPREDUCE-683) | TestJobTrackerRestart fails with Map task completion events ordering mismatch |  Major | jobtracker | Sreekanth Ramakrishnan | Amar Kamat |
| [MAPREDUCE-682](https://issues.apache.org/jira/browse/MAPREDUCE-682) | Reserved tasktrackers should be removed when a node is globally blacklisted |  Major | jobtracker | Hemanth Yamijala | Sreekanth Ramakrishnan |
| [MAPREDUCE-680](https://issues.apache.org/jira/browse/MAPREDUCE-680) | Reuse of Writable objects is improperly handled by MRUnit |  Major | contrib/mrunit | Aaron Kimball | Aaron Kimball |
| [MAPREDUCE-677](https://issues.apache.org/jira/browse/MAPREDUCE-677) | TestNodeRefresh timesout |  Major | test | Amar Kamat | Amar Kamat |
| [MAPREDUCE-671](https://issues.apache.org/jira/browse/MAPREDUCE-671) | Update ignore list |  Trivial | build | Chris Douglas | Chris Douglas |
| [MAPREDUCE-659](https://issues.apache.org/jira/browse/MAPREDUCE-659) | gridmix2 not compiling under mapred module trunk/src/benchmarks/gridmix2 |  Critical | build | Iyappan Srinivasan | Giridharan Kesavan |
| [MAPREDUCE-658](https://issues.apache.org/jira/browse/MAPREDUCE-658) | NPE in distcp if source path does not exist |  Major | distcp | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-648](https://issues.apache.org/jira/browse/MAPREDUCE-648) | Two distcp bugs |  Minor | distcp | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-646](https://issues.apache.org/jira/browse/MAPREDUCE-646) | distcp should place the file distcp\_src\_files in distributed cache |  Major | distcp | Ravi Gummadi | Ravi Gummadi |
| [MAPREDUCE-645](https://issues.apache.org/jira/browse/MAPREDUCE-645) | When disctp is used to overwrite a file, it should return immediately with an error message |  Minor | distcp | Ramya Sunil | Ravi Gummadi |
| [MAPREDUCE-642](https://issues.apache.org/jira/browse/MAPREDUCE-642) | distcp could have an option to preserve the full source path |  Major | distcp | Rodrigo Schmidt | Rodrigo Schmidt |
| [MAPREDUCE-639](https://issues.apache.org/jira/browse/MAPREDUCE-639) | Update the TeraSort to reflect the new benchmark rules for '09 |  Major | examples | Owen O'Malley | Owen O'Malley |
| [MAPREDUCE-637](https://issues.apache.org/jira/browse/MAPREDUCE-637) | Check in the codes that compute the 10^15+1st bit of π |  Major | examples | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-522](https://issues.apache.org/jira/browse/MAPREDUCE-522) | Rewrite TestQueueCapacities to make it simpler and avoid timeout errors |  Major | capacity-sched | Hemanth Yamijala | Sreekanth Ramakrishnan |
| [MAPREDUCE-408](https://issues.apache.org/jira/browse/MAPREDUCE-408) | TestKillSubProcesses fails with assertion failure sometimes |  Major | test | Amareshwari Sriramadasu | Ravi Gummadi |
| [MAPREDUCE-144](https://issues.apache.org/jira/browse/MAPREDUCE-144) | TaskMemoryManager should log process-tree's status while killing tasks. |  Major | tasktracker | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-64](https://issues.apache.org/jira/browse/MAPREDUCE-64) | Map-side sort is hampered by io.sort.record.percent |  Major | performance, task | Arun C Murthy | Chris Douglas |
| [MAPREDUCE-28](https://issues.apache.org/jira/browse/MAPREDUCE-28) | TestQueueManager takes too long and times out some times |  Major | jobtracker, test | Amareshwari Sriramadasu | V.V.Chaitanya Krishna |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6836](https://issues.apache.org/jira/browse/HADOOP-6836) | [Herriot]: Generic method for adding/modifying the attributes for new configuration. |  Major | test | Iyappan Srinivasan | Vinay Kumar Thota |
| [HADOOP-6705](https://issues.apache.org/jira/browse/HADOOP-6705) | jiracli fails to upload test-patch comments to jira |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-6689](https://issues.apache.org/jira/browse/HADOOP-6689) | Add directory renaming test to FileContextMainOperationsBaseTest |  Minor | fs, test | Eli Collins | Eli Collins |
| [HADOOP-6563](https://issues.apache.org/jira/browse/HADOOP-6563) | Add more tests to FileContextSymlinkBaseTest that cover intermediate symlinks in paths |  Major | fs, test | Eli Collins | Eli Collins |
| [HADOOP-6309](https://issues.apache.org/jira/browse/HADOOP-6309) | Enable asserts for tests by default |  Major | build | Eli Collins | Eli Collins |
| [HADOOP-6261](https://issues.apache.org/jira/browse/HADOOP-6261) | Junit tests for FileContextURI |  Blocker | test | Ravi Phulari | Ravi Phulari |
| [HADOOP-6260](https://issues.apache.org/jira/browse/HADOOP-6260) | Unit tests for FileSystemContextUtil. |  Major | fs | gary murry | gary murry |
| [HADOOP-6222](https://issues.apache.org/jira/browse/HADOOP-6222) | Core doesn't have TestCommonCLI facility |  Major | test | Boris Shkolnik | Konstantin Boudnik |
| [HADOOP-6176](https://issues.apache.org/jira/browse/HADOOP-6176) | Adding a couple private methods to AccessTokenHandler for testing purposes |  Major | security | Kan Zhang | Kan Zhang |
| [HADOOP-5955](https://issues.apache.org/jira/browse/HADOOP-5955) | TestFileOuputFormat can use LOCAL\_MR instead of CLUSTER\_MR |  Major | test | Jothi Padmanabhan | Jothi Padmanabhan |
| [HADOOP-5952](https://issues.apache.org/jira/browse/HADOOP-5952) | Hudson -1 wording change |  Minor | build | gary murry | gary murry |
| [HADOOP-5948](https://issues.apache.org/jira/browse/HADOOP-5948) | Modify TestJavaSerialization to use LocalJobRunner instead of MiniMR/DFS cluster |  Major | test | Jothi Padmanabhan | Jothi Padmanabhan |
| [HADOOP-5457](https://issues.apache.org/jira/browse/HADOOP-5457) | Failing contrib tests should not stop the build |  Major | test | Chris Douglas | Giridharan Kesavan |
| [HADOOP-5081](https://issues.apache.org/jira/browse/HADOOP-5081) | Split TestCLI into HDFS, Mapred and Core tests |  Minor | test | Ramya Sunil | Sharad Agarwal |
| [HDFS-1043](https://issues.apache.org/jira/browse/HDFS-1043) | Benchmark overhead of server-side group resolution of users |  Major | benchmarks | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-907](https://issues.apache.org/jira/browse/HDFS-907) | Add  tests for getBlockLocations and totalLoad metrics. |  Minor | namenode | Ravi Phulari | Ravi Phulari |
| [HDFS-902](https://issues.apache.org/jira/browse/HDFS-902) | Move RAID from HDFS to MR |  Major | contrib/raid | Eli Collins | Eli Collins |
| [HDFS-813](https://issues.apache.org/jira/browse/HDFS-813) | Enable the append test in TestReadWhileWriting |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-804](https://issues.apache.org/jira/browse/HDFS-804) | New unit tests for concurrent lease recovery |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-714](https://issues.apache.org/jira/browse/HDFS-714) | Create fault injection test for the new pipeline close |  Major | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-710](https://issues.apache.org/jira/browse/HDFS-710) | Add actions with constraints to the pipeline fault injection tests |  Major | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-705](https://issues.apache.org/jira/browse/HDFS-705) | Create an adapter to access some of package-private methods of DataNode from tests |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-669](https://issues.apache.org/jira/browse/HDFS-669) | Add unit tests framework (Mockito) |  Major | build | Eli Collins | Konstantin Boudnik |
| [HDFS-451](https://issues.apache.org/jira/browse/HDFS-451) | Test DataTransferProtocol with fault injection |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-409](https://issues.apache.org/jira/browse/HDFS-409) | Add more access token tests |  Major | datanode, hdfs-client | Kan Zhang | Kan Zhang |
| [MAPREDUCE-1359](https://issues.apache.org/jira/browse/MAPREDUCE-1359) | TypedBytes TestIO doesn't mkdir its test dir first |  Major | contrib/streaming | Todd Lipcon | Anatoli Fomenko |
| [MAPREDUCE-1050](https://issues.apache.org/jira/browse/MAPREDUCE-1050) | Introduce a mock object testing framework |  Major | test | Tom White | Tom White |
| [MAPREDUCE-793](https://issues.apache.org/jira/browse/MAPREDUCE-793) | Create a new test that consolidates a few tests to be included in the commit-test list |  Major | test | Jothi Padmanabhan | Jothi Padmanabhan |
| [MAPREDUCE-686](https://issues.apache.org/jira/browse/MAPREDUCE-686) | Move TestSpeculativeExecution.Fake\* into a separate class so that it can be used by other tests also |  Major | test | Jothi Padmanabhan | Jothi Padmanabhan |
| [MAPREDUCE-670](https://issues.apache.org/jira/browse/MAPREDUCE-670) |  Create target for 10 minute patch test build for mapreduce |  Major | build | Jothi Padmanabhan | Jothi Padmanabhan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6771](https://issues.apache.org/jira/browse/HADOOP-6771) | Herriot's artifact id for Maven deployment should be set to hadoop-core-instrumented |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6752](https://issues.apache.org/jira/browse/HADOOP-6752) | Remote cluster control functionality needs JavaDocs improvement |  Major | test | Konstantin Boudnik | Balaji Rajagopalan |
| [HADOOP-6692](https://issues.apache.org/jira/browse/HADOOP-6692) | Add FileContext#listStatus that returns an iterator |  Major | fs | Hairong Kuang | Hairong Kuang |
| [HADOOP-6668](https://issues.apache.org/jira/browse/HADOOP-6668) | Apply audience and stability annotations to classes in common |  Blocker | documentation | Tom White | Tom White |
| [HADOOP-6658](https://issues.apache.org/jira/browse/HADOOP-6658) | Exclude  Public elements in  generated Javadoc |  Blocker | documentation | Tom White | Tom White |
| [HADOOP-6568](https://issues.apache.org/jira/browse/HADOOP-6568) | Authorization for default servlets |  Major | security | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-6538](https://issues.apache.org/jira/browse/HADOOP-6538) | Set hadoop.security.authentication to "simple" by default |  Major | security | Devaraj Das | Devaraj Das |
| [HADOOP-6486](https://issues.apache.org/jira/browse/HADOOP-6486) | fix common classes to work with Avro 1.3 reflection |  Major | ipc | Doug Cutting | Doug Cutting |
| [HADOOP-6422](https://issues.apache.org/jira/browse/HADOOP-6422) | permit RPC protocols to be implemented by Avro |  Major | ipc | Doug Cutting | Doug Cutting |
| [HADOOP-6410](https://issues.apache.org/jira/browse/HADOOP-6410) | Rename TestCLI class to prevent JUnit from trying to run this class as a test |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-6230](https://issues.apache.org/jira/browse/HADOOP-6230) | Move process tree, and memory calculator classes out of Common into Map/Reduce. |  Major | util | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-6223](https://issues.apache.org/jira/browse/HADOOP-6223) | New improved FileSystem interface for those implementing new files systems. |  Major | fs | Sanjay Radia | Sanjay Radia |
| [HADOOP-5217](https://issues.apache.org/jira/browse/HADOOP-5217) | Split the AllTestDriver for core, hdfs and mapred |  Major | test | Sharad Agarwal | Sharad Agarwal |
| [HADOOP-5045](https://issues.apache.org/jira/browse/HADOOP-5045) | FileSystem.isDirectory() should not be deprecated. |  Major | fs | Tsz Wo Nicholas Sze | Suresh Srinivas |
| [HADOOP-4942](https://issues.apache.org/jira/browse/HADOOP-4942) | Remove getName() and getNamed(String name, Configuration conf) |  Major | fs | Tsz Wo Nicholas Sze | Jakob Homan |
| [HADOOP-4941](https://issues.apache.org/jira/browse/HADOOP-4941) | Remove getBlockSize(Path f), getLength(Path f) and getReplication(Path src) |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4940](https://issues.apache.org/jira/browse/HADOOP-4940) | Remove delete(Path f) |  Major | fs | Tsz Wo Nicholas Sze | Enis Soztutar |
| [HADOOP-4490](https://issues.apache.org/jira/browse/HADOOP-4490) | Map and Reduce tasks should run as the user who submitted the job |  Major | security | Arun C Murthy | Hemanth Yamijala |
| [HDFS-1100](https://issues.apache.org/jira/browse/HDFS-1100) | Override TestFcHdfsSymlink#unwrapException |  Major | test | Eli Collins | Eli Collins |
| [HDFS-1067](https://issues.apache.org/jira/browse/HDFS-1067) | Create block recovery tests that handle errors |  Major | test | Hairong Kuang | Hairong Kuang |
| [HDFS-1057](https://issues.apache.org/jira/browse/HDFS-1057) | Concurrent readers hit ChecksumExceptions if following a writer to very end of file |  Blocker | datanode | Todd Lipcon | sam rash |
| [HDFS-730](https://issues.apache.org/jira/browse/HDFS-730) | Add fault injection tests for pipleline close ack |  Major | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-719](https://issues.apache.org/jira/browse/HDFS-719) | Add more fault injection tests for pipeline close |  Major | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-716](https://issues.apache.org/jira/browse/HDFS-716) | Define a pointcut for pipeline close |  Major | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-676](https://issues.apache.org/jira/browse/HDFS-676) | NPE in FSDataset.updateReplicaUnderRecovery(..) |  Major | datanode | Tsz Wo Nicholas Sze | Konstantin Shvachko |
| [HDFS-663](https://issues.apache.org/jira/browse/HDFS-663) | DFSIO for append |  Major | test | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-660](https://issues.apache.org/jira/browse/HDFS-660) | Remove deprecated methods from InterDatanodeProtocol. |  Major | datanode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-616](https://issues.apache.org/jira/browse/HDFS-616) | Create functional tests for new design of the block report |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-564](https://issues.apache.org/jira/browse/HDFS-564) | Adding pipeline test 17-35 |  Blocker | test | Kan Zhang | Hairong Kuang |
| [HDFS-561](https://issues.apache.org/jira/browse/HDFS-561) | Fix write pipeline READ\_TIMEOUT |  Major | datanode, hdfs-client | Kan Zhang | Kan Zhang |
| [HDFS-552](https://issues.apache.org/jira/browse/HDFS-552) | Change TestFiDataTransferProtocol to junit 4 and add a few new tests |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-551](https://issues.apache.org/jira/browse/HDFS-551) | Create new functional test for a block report. |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-524](https://issues.apache.org/jira/browse/HDFS-524) | Further DataTransferProtocol code refactoring. |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-521](https://issues.apache.org/jira/browse/HDFS-521) | Create new tests for pipeline |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-520](https://issues.apache.org/jira/browse/HDFS-520) | Create new tests for block recovery |  Major | test | Konstantin Boudnik | Hairong Kuang |
| [HDFS-519](https://issues.apache.org/jira/browse/HDFS-519) | Create new tests for lease recovery |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-508](https://issues.apache.org/jira/browse/HDFS-508) | Factor out BlockInfo from BlocksMap |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-501](https://issues.apache.org/jira/browse/HDFS-501) | Use enum to define the constants in DataTransferProtocol |  Major | datanode, hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-498](https://issues.apache.org/jira/browse/HDFS-498) | Add development guide and framework documentation |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-475](https://issues.apache.org/jira/browse/HDFS-475) | Create a separate targets for fault injection related test and jar files creation files |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-444](https://issues.apache.org/jira/browse/HDFS-444) | Current fault injection framework implementation doesn't allow to change probability levels dynamically |  Minor | test | Konstantin Boudnik | Konstantin Boudnik |
| [HDFS-436](https://issues.apache.org/jira/browse/HDFS-436) | AspectJ framework for HDFS code and tests |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [MAPREDUCE-1791](https://issues.apache.org/jira/browse/MAPREDUCE-1791) | Remote cluster control functionality needs JavaDocs improvement |  Major | test | Konstantin Boudnik | Konstantin Boudnik |
| [MAPREDUCE-1650](https://issues.apache.org/jira/browse/MAPREDUCE-1650) | Exclude Private elements from generated MapReduce Javadoc |  Major | documentation | Tom White | Tom White |
| [MAPREDUCE-1625](https://issues.apache.org/jira/browse/MAPREDUCE-1625) | Improve grouping of packages in Javadoc |  Blocker | documentation | Tom White | Tom White |
| [MAPREDUCE-1623](https://issues.apache.org/jira/browse/MAPREDUCE-1623) | Apply audience and stability annotations to classes in mapred package |  Blocker | documentation | Tom White | Tom White |
| [MAPREDUCE-1493](https://issues.apache.org/jira/browse/MAPREDUCE-1493) | Authorization for job-history pages |  Major | jobtracker, security | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-1455](https://issues.apache.org/jira/browse/MAPREDUCE-1455) | Authorization for servlets |  Major | jobtracker, security, tasktracker | Devaraj Das | Ravi Gummadi |
| [MAPREDUCE-1433](https://issues.apache.org/jira/browse/MAPREDUCE-1433) | Create a Delegation token for MapReduce |  Major | security | Owen O'Malley | Owen O'Malley |
| [MAPREDUCE-1430](https://issues.apache.org/jira/browse/MAPREDUCE-1430) | JobTracker should be able to renew delegation tokens for the jobs |  Major | jobtracker | Devaraj Das | Boris Shkolnik |
| [MAPREDUCE-1326](https://issues.apache.org/jira/browse/MAPREDUCE-1326) | fi tests don't use fi-site.xml |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [MAPREDUCE-1307](https://issues.apache.org/jira/browse/MAPREDUCE-1307) | Introduce the concept of Job Permissions |  Major | security | Devaraj Das | Vinod Kumar Vavilapalli |
| [MAPREDUCE-1209](https://issues.apache.org/jira/browse/MAPREDUCE-1209) | Move common specific part of the test TestReflectionUtils out of mapred into common |  Blocker | test | Vinod Kumar Vavilapalli | Todd Lipcon |
| [MAPREDUCE-1190](https://issues.apache.org/jira/browse/MAPREDUCE-1190) | Add package.html to pi and pi.math packages. |  Minor | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-1026](https://issues.apache.org/jira/browse/MAPREDUCE-1026) | Shuffle should be secure |  Major | security | Owen O'Malley | Boris Shkolnik |
| [MAPREDUCE-975](https://issues.apache.org/jira/browse/MAPREDUCE-975) | Add an API in job client to get the history file url for a given job id |  Major | client, jobtracker | Sharad Agarwal | Sharad Agarwal |
| [MAPREDUCE-943](https://issues.apache.org/jira/browse/MAPREDUCE-943) | TestNodeRefresh timesout occasionally |  Major | jobtracker | Amareshwari Sriramadasu | Amar Kamat |
| [MAPREDUCE-871](https://issues.apache.org/jira/browse/MAPREDUCE-871) | Job/Task local files have incorrect group ownership set by LinuxTaskController binary |  Major | tasktracker | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-861](https://issues.apache.org/jira/browse/MAPREDUCE-861) | Modify queue configuration format and parsing to support a hierarchy of queues. |  Major | jobtracker | Hemanth Yamijala | rahul k singh |
| [MAPREDUCE-856](https://issues.apache.org/jira/browse/MAPREDUCE-856) | Localized files from DistributedCache should have right access-control |  Major | tasktracker | Arun C Murthy | Vinod Kumar Vavilapalli |
| [MAPREDUCE-842](https://issues.apache.org/jira/browse/MAPREDUCE-842) | Per-job local data on the TaskTracker node should have right access-control |  Major | security, task-controller, tasktracker | Arun C Murthy | Vinod Kumar Vavilapalli |
| [MAPREDUCE-817](https://issues.apache.org/jira/browse/MAPREDUCE-817) | Add a cache for retired jobs with minimal job info and provide a way to access history file url |  Major | client, jobtracker | Sharad Agarwal | Sharad Agarwal |
| [MAPREDUCE-814](https://issues.apache.org/jira/browse/MAPREDUCE-814) | Move completed Job history files to HDFS |  Major | jobtracker | Sharad Agarwal | Sharad Agarwal |
| [MAPREDUCE-744](https://issues.apache.org/jira/browse/MAPREDUCE-744) | Support in DistributedCache to share cache files with other users after HADOOP-4493 |  Major | distributed-cache, security, tasktracker | Vinod Kumar Vavilapalli | Devaraj Das |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-6839](https://issues.apache.org/jira/browse/HADOOP-6839) | [Herriot] Implement a functionality for getting the user list for creating proxy users. |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [HADOOP-6772](https://issues.apache.org/jira/browse/HADOOP-6772) | Utilities for system tests specific. |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [HADOOP-6507](https://issues.apache.org/jira/browse/HADOOP-6507) | Hadoop Common Docs - delete 3 doc files that do not belong under Common |  Blocker | documentation | Corinne Chandel | Corinne Chandel |
| [HADOOP-6346](https://issues.apache.org/jira/browse/HADOOP-6346) | Add support for specifying unpack pattern regex to RunJar.unJar |  Major | conf, util | Todd Lipcon | Todd Lipcon |
| [HADOOP-6329](https://issues.apache.org/jira/browse/HADOOP-6329) | Add build-fi directory to the ignore list |  Major | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6321](https://issues.apache.org/jira/browse/HADOOP-6321) | Hadoop Common - Site logo |  Blocker | documentation | Corinne Chandel | Corinne Chandel |
| [HADOOP-6292](https://issues.apache.org/jira/browse/HADOOP-6292) | Native Libraries Guide - Update |  Blocker | documentation | Corinne Chandel | Corinne Chandel |
| [HADOOP-6217](https://issues.apache.org/jira/browse/HADOOP-6217) | Hadoop Doc Split: Common Docs |  Blocker | documentation | Corinne Chandel | Corinne Chandel |
| [HADOOP-6155](https://issues.apache.org/jira/browse/HADOOP-6155) | deprecate Record IO |  Major | record | Owen O'Malley | Tom White |
| [HDFS-1277](https://issues.apache.org/jira/browse/HDFS-1277) | [Herriot] New property for multi user list. |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [HDFS-1174](https://issues.apache.org/jira/browse/HDFS-1174) | New properties for suspend and resume process. |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [HDFS-869](https://issues.apache.org/jira/browse/HDFS-869) | 0.21.0 - snapshot incorrect dependency published in .pom files |  Critical | build | Karthik K | Giridharan Kesavan |
| [HDFS-651](https://issues.apache.org/jira/browse/HDFS-651) | HDFS Docs - fix listing of docs in the doc menu |  Blocker | documentation | Corinne Chandel | Corinne Chandel |
| [HDFS-574](https://issues.apache.org/jira/browse/HDFS-574) | Hadoop Doc Split: HDFS Docs |  Blocker | documentation | Corinne Chandel | Corinne Chandel |
| [MAPREDUCE-1896](https://issues.apache.org/jira/browse/MAPREDUCE-1896) | [Herriot] New property for multi user list. |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [MAPREDUCE-1812](https://issues.apache.org/jira/browse/MAPREDUCE-1812) | New properties for suspend and resume process. |  Major | test | Vinay Kumar Thota | Vinay Kumar Thota |
| [MAPREDUCE-1404](https://issues.apache.org/jira/browse/MAPREDUCE-1404) | Cluster-Setup and Single-Node-Setup Docs |  Blocker | documentation | Corinne Chandel | Tom White |
| [MAPREDUCE-1352](https://issues.apache.org/jira/browse/MAPREDUCE-1352) | 0.21.0 - snapshot incorrect dependency published in .pom files |  Critical | build | Karthik K | Giridharan Kesavan |
| [MAPREDUCE-1121](https://issues.apache.org/jira/browse/MAPREDUCE-1121) | Hadoop MapReduce - Site Logo |  Blocker | documentation | Corinne Chandel | Corinne Chandel |
| [MAPREDUCE-1063](https://issues.apache.org/jira/browse/MAPREDUCE-1063) | Document Gridmix benchmark |  Minor | benchmarks | Chris Douglas | Chris Douglas |
| [MAPREDUCE-916](https://issues.apache.org/jira/browse/MAPREDUCE-916) | Hadoop Doc Split: MapReduce Docs |  Blocker | documentation | Corinne Chandel | Corinne Chandel |
| [MAPREDUCE-878](https://issues.apache.org/jira/browse/MAPREDUCE-878) | Rename fair scheduler design doc to fair-scheduler-design-doc.tex and add Apache license header |  Trivial | contrib/fair-share, documentation | Matei Zaharia | Matei Zaharia |
| [MAPREDUCE-831](https://issues.apache.org/jira/browse/MAPREDUCE-831) | Put fair scheduler design doc in SVN |  Trivial | contrib/fair-share | Matei Zaharia | Matei Zaharia |
| [MAPREDUCE-819](https://issues.apache.org/jira/browse/MAPREDUCE-819) | DistCP Guide - updates |  Major | documentation | Corinne Chandel | Corinne Chandel |
| [MAPREDUCE-665](https://issues.apache.org/jira/browse/MAPREDUCE-665) | Move libhdfs to HDFS project |  Blocker | build | Tsz Wo Nicholas Sze | Eli Collins |


