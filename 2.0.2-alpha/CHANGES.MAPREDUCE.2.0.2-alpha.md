# Hadoop Changelog

## Release 2.0.2-alpha - 2012-10-09

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4629](https://issues.apache.org/jira/browse/MAPREDUCE-4629) | Remove JobHistory.DEBUG\_MODE |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-4311](https://issues.apache.org/jira/browse/MAPREDUCE-4311) | Capacity scheduler.xml does not accept decimal values for capacity and maximum-capacity settings |  Major | capacity-sched, mrv2 | Thomas Graves | Karthik Kambatla |
| [MAPREDUCE-4072](https://issues.apache.org/jira/browse/MAPREDUCE-4072) | User set java.library.path seems to overwrite default creating problems native lib loading |  Major | mrv2 | Anupam Seth | Anupam Seth |
| [MAPREDUCE-3812](https://issues.apache.org/jira/browse/MAPREDUCE-3812) | Lower default allocation sizes, fix allocation configurations and document them |  Major | mrv2, performance | Vinod Kumar Vavilapalli | Harsh J |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4417](https://issues.apache.org/jira/browse/MAPREDUCE-4417) | add support for encrypted shuffle |  Major | mrv2, security | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-4355](https://issues.apache.org/jira/browse/MAPREDUCE-4355) | Add RunningJob.getJobStatus() |  Major | mrv1, mrv2 | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-3773](https://issues.apache.org/jira/browse/MAPREDUCE-3773) | Add queue metrics with buckets for job run times |  Major | jobtracker | Owen O'Malley | Owen O'Malley |
| [MAPREDUCE-3451](https://issues.apache.org/jira/browse/MAPREDUCE-3451) | Port Fair Scheduler to MR2 |  Major | mrv2, scheduler | NO NAME | NO NAME |
| [MAPREDUCE-987](https://issues.apache.org/jira/browse/MAPREDUCE-987) | Exposing MiniDFS and MiniMR clusters as a single process command-line |  Minor | build, test | Philip Zeyliger | Ahmed Radwan |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4638](https://issues.apache.org/jira/browse/MAPREDUCE-4638) | MR AppMaster shouldn't rely on YARN\_APPLICATION\_CLASSPATH providing MR jars |  Major | . | Arun C Murthy | Arun C Murthy |
| [MAPREDUCE-4614](https://issues.apache.org/jira/browse/MAPREDUCE-4614) | Simplify debugging a job's tokens |  Major | client, task | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-4511](https://issues.apache.org/jira/browse/MAPREDUCE-4511) | Add IFile readahead |  Major | mrv1, mrv2, performance | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4422](https://issues.apache.org/jira/browse/MAPREDUCE-4422) | YARN\_APPLICATION\_CLASSPATH needs a documented default value in YarnConfiguration |  Major | nodemanager | Arun C Murthy | Ahmed Radwan |
| [MAPREDUCE-4408](https://issues.apache.org/jira/browse/MAPREDUCE-4408) | allow jobs to set a JAR that is in the distributed cached |  Major | mrv1, mrv2 | Alejandro Abdelnur | Robert Kanter |
| [MAPREDUCE-4375](https://issues.apache.org/jira/browse/MAPREDUCE-4375) | Show Configuration Tracability in MR UI |  Major | applicationmaster | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4301](https://issues.apache.org/jira/browse/MAPREDUCE-4301) | Dedupe some strings in MRAM for memory savings |  Major | applicationmaster | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4283](https://issues.apache.org/jira/browse/MAPREDUCE-4283) | Display tail of aggregated logs by default |  Major | jobhistoryserver, mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4274](https://issues.apache.org/jira/browse/MAPREDUCE-4274) | MapOutputBuffer should use native byte order for kvmeta |  Minor | performance, task | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-4210](https://issues.apache.org/jira/browse/MAPREDUCE-4210) | Expose listener address for WebApp |  Major | webapps | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-4205](https://issues.apache.org/jira/browse/MAPREDUCE-4205) | retrofit all JVM shutdown hooks to use ShutdownHookManager |  Major | mrv2 | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-4190](https://issues.apache.org/jira/browse/MAPREDUCE-4190) |  Improve web UI for task attempts userlog link |  Major | mrv2, webapps | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4157](https://issues.apache.org/jira/browse/MAPREDUCE-4157) | ResourceManager should not kill apps that are well behaved |  Major | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4151](https://issues.apache.org/jira/browse/MAPREDUCE-4151) | RM scheduler web page should filter apps to those that are relevant to scheduling |  Major | mrv2, webapps | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4146](https://issues.apache.org/jira/browse/MAPREDUCE-4146) | Support limits on task status string length and number of block locations in branch-2 |  Major | . | Tom White | Ahmed Radwan |
| [MAPREDUCE-4079](https://issues.apache.org/jira/browse/MAPREDUCE-4079) | Allow MR AppMaster to limit ephemeral port range. |  Blocker | mr-am, mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4059](https://issues.apache.org/jira/browse/MAPREDUCE-4059) | The history server should have a separate pluggable storage/query interface |  Major | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4017](https://issues.apache.org/jira/browse/MAPREDUCE-4017) | Add jobname to jobsummary log |  Trivial | jobhistoryserver, jobtracker | Koji Noguchi | Thomas Graves |
| [MAPREDUCE-3921](https://issues.apache.org/jira/browse/MAPREDUCE-3921) | MR AM should act on the nodes liveliness information when nodes go up/down/unhealthy |  Major | mr-am, mrv2 | Vinod Kumar Vavilapalli | Bikas Saha |
| [MAPREDUCE-3907](https://issues.apache.org/jira/browse/MAPREDUCE-3907) | Document entries mapred-default.xml for the jobhistory server. |  Minor | documentation | Eugene Koontz | Eugene Koontz |
| [MAPREDUCE-3906](https://issues.apache.org/jira/browse/MAPREDUCE-3906) | Fix inconsistency in documentation regarding mapreduce.jobhistory.principal |  Trivial | documentation | Eugene Koontz | Eugene Koontz |
| [MAPREDUCE-3871](https://issues.apache.org/jira/browse/MAPREDUCE-3871) | Allow symlinking in LocalJobRunner DistributedCache |  Major | distributed-cache | Tom White | Tom White |
| [MAPREDUCE-3850](https://issues.apache.org/jira/browse/MAPREDUCE-3850) | Avoid redundant calls for tokens in TokenCache |  Major | security | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-3842](https://issues.apache.org/jira/browse/MAPREDUCE-3842) | stop webpages from automatic refreshing |  Critical | mrv2, webapps | Alejandro Abdelnur | Thomas Graves |
| [MAPREDUCE-3659](https://issues.apache.org/jira/browse/MAPREDUCE-3659) | Host-based token support |  Major | security | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-3289](https://issues.apache.org/jira/browse/MAPREDUCE-3289) | Make use of fadvise in the NM's shuffle handler |  Major | mrv2, nodemanager, performance | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-2786](https://issues.apache.org/jira/browse/MAPREDUCE-2786) | TestDFSIO should also test compression reading/writing from command-line. |  Minor | benchmarks | Plamen Jeliazkov | Plamen Jeliazkov |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4691](https://issues.apache.org/jira/browse/MAPREDUCE-4691) | Historyserver can report "Unknown job" after RM says job has completed |  Critical | jobhistoryserver, mrv2 | Jason Lowe | Robert Joseph Evans |
| [MAPREDUCE-4689](https://issues.apache.org/jira/browse/MAPREDUCE-4689) | JobClient.getMapTaskReports on failed job results in NPE |  Major | client | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4649](https://issues.apache.org/jira/browse/MAPREDUCE-4649) | mr-jobhistory-daemon.sh needs to be updated post YARN-1 |  Major | jobhistoryserver | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-4647](https://issues.apache.org/jira/browse/MAPREDUCE-4647) | We should only unjar jobjar if there is a lib directory in it. |  Major | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4646](https://issues.apache.org/jira/browse/MAPREDUCE-4646) | client does not receive job diagnostics for failed jobs |  Major | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4642](https://issues.apache.org/jira/browse/MAPREDUCE-4642) | MiniMRClientClusterFactory should not use job.setJar() |  Major | test | Robert Kanter | Robert Kanter |
| [MAPREDUCE-4641](https://issues.apache.org/jira/browse/MAPREDUCE-4641) | Exception in commitJob marks job as successful in job history |  Major | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4635](https://issues.apache.org/jira/browse/MAPREDUCE-4635) | MR side of YARN-83. Changing package of YarnClient |  Major | . | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4633](https://issues.apache.org/jira/browse/MAPREDUCE-4633) | history server doesn't set permissions on all subdirs |  Critical | jobhistoryserver | Thomas Graves | oss.wakayama |
| [MAPREDUCE-4612](https://issues.apache.org/jira/browse/MAPREDUCE-4612) | job summary file permissions not set when its created |  Critical | . | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4611](https://issues.apache.org/jira/browse/MAPREDUCE-4611) | MR AM dies badly when Node is decomissioned |  Critical | . | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4610](https://issues.apache.org/jira/browse/MAPREDUCE-4610) | Support deprecated mapreduce.job.counters.limit property in MR2 |  Major | mrv2 | Tom White | Tom White |
| [MAPREDUCE-4608](https://issues.apache.org/jira/browse/MAPREDUCE-4608) | hadoop-mapreduce-client is missing some dependencies |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-4604](https://issues.apache.org/jira/browse/MAPREDUCE-4604) | In mapred-default, mapreduce.map.maxattempts & mapreduce.reduce.maxattempts defaults are set to 4 as well as mapreduce.job.maxtaskfailures.per.tracker. |  Critical | mrv2 | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-4600](https://issues.apache.org/jira/browse/MAPREDUCE-4600) | TestTokenCache.java from MRV1 no longer compiles |  Critical | . | Robert Joseph Evans | Daryn Sharp |
| [MAPREDUCE-4580](https://issues.apache.org/jira/browse/MAPREDUCE-4580) | Change MapReduce to use the yarn-client module |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-4579](https://issues.apache.org/jira/browse/MAPREDUCE-4579) | TestTaskAttempt fails jdk7 |  Major | . | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4577](https://issues.apache.org/jira/browse/MAPREDUCE-4577) | HDFS-3672 broke TestCombineFileInputFormat.testMissingBlocks() test |  Minor | test | Alejandro Abdelnur | Aaron T. Myers |
| [MAPREDUCE-4572](https://issues.apache.org/jira/browse/MAPREDUCE-4572) | Can not access user logs - Jetty is not configured by default to serve aliases/symlinks |  Major | tasktracker, webapps | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4570](https://issues.apache.org/jira/browse/MAPREDUCE-4570) | ProcfsBasedProcessTree#constructProcessInfo() prints a warning if procfsDir/\<pid\>/stat is not found. |  Minor | mrv2 | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4569](https://issues.apache.org/jira/browse/MAPREDUCE-4569) | TestHsWebServicesJobsQuery fails on jdk7 |  Major | . | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4562](https://issues.apache.org/jira/browse/MAPREDUCE-4562) | Support for "FileSystemCounter" legacy counter group name for compatibility reasons is creating incorrect counter name |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [MAPREDUCE-4504](https://issues.apache.org/jira/browse/MAPREDUCE-4504) | SortValidator writes to wrong directory |  Major | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4503](https://issues.apache.org/jira/browse/MAPREDUCE-4503) | Should throw InvalidJobConfException if duplicates found in cacheArchives or cacheFiles |  Major | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4498](https://issues.apache.org/jira/browse/MAPREDUCE-4498) | Remove hsqldb jar from Hadoop runtime classpath |  Critical | build, examples | Robert Kanter | Robert Kanter |
| [MAPREDUCE-4496](https://issues.apache.org/jira/browse/MAPREDUCE-4496) | AM logs link is missing user name |  Major | applicationmaster, mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4494](https://issues.apache.org/jira/browse/MAPREDUCE-4494) | TestFifoScheduler failing with Metrics source QueueMetrics,q0=default already exists! |  Major | mrv2, test | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4493](https://issues.apache.org/jira/browse/MAPREDUCE-4493) | Distibuted Cache Compatability Issues |  Critical | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4492](https://issues.apache.org/jira/browse/MAPREDUCE-4492) | Configuring total queue capacity between 100.5 and 99.5 at perticular level is sucessfull |  Minor | mrv2 | Nishan Shetty | Mayank Bansal |
| [MAPREDUCE-4484](https://issues.apache.org/jira/browse/MAPREDUCE-4484) | Incorrect IS\_MINI\_YARN\_CLUSTER property name in YarnConfiguration |  Major | mrv2 | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4483](https://issues.apache.org/jira/browse/MAPREDUCE-4483) | 2.0 build does not work |  Major | . | John George | John George |
| [MAPREDUCE-4470](https://issues.apache.org/jira/browse/MAPREDUCE-4470) | Fix TestCombineFileInputFormat.testForEmptyFile |  Major | test | Kihwal Lee | Ilya Katsov |
| [MAPREDUCE-4467](https://issues.apache.org/jira/browse/MAPREDUCE-4467) | IndexCache failures due to missing synchronization |  Critical | nodemanager | Andrey Klochkov | Kihwal Lee |
| [MAPREDUCE-4465](https://issues.apache.org/jira/browse/MAPREDUCE-4465) | Update description of yarn.nodemanager.address property |  Trivial | . | Bo Wang | Bo Wang |
| [MAPREDUCE-4457](https://issues.apache.org/jira/browse/MAPREDUCE-4457) | mr job invalid transition TA\_TOO\_MANY\_FETCH\_FAILURE at FAILED |  Critical | mrv2 | Thomas Graves | Robert Joseph Evans |
| [MAPREDUCE-4456](https://issues.apache.org/jira/browse/MAPREDUCE-4456) | LocalDistributedCacheManager can get an ArrayIndexOutOfBounds when creating symlinks |  Major | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4449](https://issues.apache.org/jira/browse/MAPREDUCE-4449) | Incorrect MR\_HISTORY\_STORAGE property name in JHAdminConfig |  Major | mrv2 | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4448](https://issues.apache.org/jira/browse/MAPREDUCE-4448) | Nodemanager crashes upon application cleanup if aggregation failed to start |  Critical | mrv2, nodemanager | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4447](https://issues.apache.org/jira/browse/MAPREDUCE-4447) | Remove aop from cruft from the ant build |  Major | build | Eli Collins | Eli Collins |
| [MAPREDUCE-4444](https://issues.apache.org/jira/browse/MAPREDUCE-4444) | nodemanager fails to start when one of the local-dirs is bad |  Blocker | nodemanager | Nathan Roberts | Jason Lowe |
| [MAPREDUCE-4441](https://issues.apache.org/jira/browse/MAPREDUCE-4441) | Fix build issue caused by MR-3451 |  Blocker | . | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-4440](https://issues.apache.org/jira/browse/MAPREDUCE-4440) | Change SchedulerApp & SchedulerNode to be a minimal interface |  Major | . | Arun C Murthy | Arun C Murthy |
| [MAPREDUCE-4437](https://issues.apache.org/jira/browse/MAPREDUCE-4437) | Race in MR ApplicationMaster can cause reducers to never be scheduled |  Critical | applicationmaster, mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4432](https://issues.apache.org/jira/browse/MAPREDUCE-4432) | Confusing warning message when GenericOptionsParser is not used |  Trivial | . | Gabriel Reid |  |
| [MAPREDUCE-4423](https://issues.apache.org/jira/browse/MAPREDUCE-4423) | Potential infinite fetching of map output |  Critical | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4419](https://issues.apache.org/jira/browse/MAPREDUCE-4419) | ./mapred queue -info \<queuename\> -showJobs displays all the jobs irrespective of \<queuename\> |  Major | mrv2 | Nishan Shetty | Devaraj K |
| [MAPREDUCE-4416](https://issues.apache.org/jira/browse/MAPREDUCE-4416) | Some tests fail if Clover is enabled |  Critical | client, mrv2 | Kihwal Lee | Kihwal Lee |
| [MAPREDUCE-4407](https://issues.apache.org/jira/browse/MAPREDUCE-4407) | Add hadoop-yarn-server-tests-\<version\>-tests.jar to hadoop dist package |  Major | build, mrv2 | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4406](https://issues.apache.org/jira/browse/MAPREDUCE-4406) | Users should be able to specify the MiniCluster ResourceManager and JobHistoryServer ports |  Major | mrv2, test | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4402](https://issues.apache.org/jira/browse/MAPREDUCE-4402) | TestFileInputFormat fails intermittently |  Major | test | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4395](https://issues.apache.org/jira/browse/MAPREDUCE-4395) | Possible NPE at ClientDistributedCacheManager#determineTimestamps |  Critical | distributed-cache, job submission, mrv2 | Bhallamudi Venkata Siva Kamesh | Bhallamudi Venkata Siva Kamesh |
| [MAPREDUCE-4392](https://issues.apache.org/jira/browse/MAPREDUCE-4392) | Counters.makeCompactString() changed behavior from 0.20 |  Major | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4387](https://issues.apache.org/jira/browse/MAPREDUCE-4387) | RM gets fatal error and exits during TestRM |  Major | resourcemanager | Kihwal Lee | Kihwal Lee |
| [MAPREDUCE-4384](https://issues.apache.org/jira/browse/MAPREDUCE-4384) | Race conditions in IndexCache |  Major | nodemanager | Kihwal Lee | Kihwal Lee |
| [MAPREDUCE-4383](https://issues.apache.org/jira/browse/MAPREDUCE-4383) | HadoopPipes.cc needs to include unistd.h |  Minor | pipes | Andy Isaacson | Andy Isaacson |
| [MAPREDUCE-4380](https://issues.apache.org/jira/browse/MAPREDUCE-4380) | Empty Userlogs directory is getting created under logs directory |  Minor | mrv2, nodemanager | Devaraj K | Devaraj K |
| [MAPREDUCE-4379](https://issues.apache.org/jira/browse/MAPREDUCE-4379) | Node Manager throws java.lang.OutOfMemoryError: Java heap space due to org.apache.hadoop.fs.LocalDirAllocator.contexts |  Blocker | mrv2, nodemanager | Devaraj K | Devaraj K |
| [MAPREDUCE-4376](https://issues.apache.org/jira/browse/MAPREDUCE-4376) | TestClusterMRNotification times out |  Major | mrv2, test | Jason Lowe | Kihwal Lee |
| [MAPREDUCE-4372](https://issues.apache.org/jira/browse/MAPREDUCE-4372) | Deadlock in Resource Manager between SchedulerEventDispatcher.EventProcessor and Shutdown hook manager |  Major | mrv2, resourcemanager | Devaraj K | Devaraj K |
| [MAPREDUCE-4361](https://issues.apache.org/jira/browse/MAPREDUCE-4361) | Fix detailed metrics for protobuf-based RPC on 0.23 |  Major | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4342](https://issues.apache.org/jira/browse/MAPREDUCE-4342) | Distributed Cache gives inconsistent result if cache files get deleted from task tracker |  Major | . | Mayank Bansal | Mayank Bansal |
| [MAPREDUCE-4341](https://issues.apache.org/jira/browse/MAPREDUCE-4341) | add types to capacity scheduler properties documentation |  Major | capacity-sched, mrv2 | Thomas Graves | Karthik Kambatla |
| [MAPREDUCE-4336](https://issues.apache.org/jira/browse/MAPREDUCE-4336) | Distributed Shell fails when used with the CapacityScheduler |  Major | mrv2 | Siddharth Seth | Ahmed Radwan |
| [MAPREDUCE-4320](https://issues.apache.org/jira/browse/MAPREDUCE-4320) | gridmix mainClass wrong in pom.xml |  Major | contrib/gridmix | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4313](https://issues.apache.org/jira/browse/MAPREDUCE-4313) | TestTokenCache doesn't compile due TokenCache.getDelegationToken compilation error |  Blocker | build, test | Eli Collins | Robert Joseph Evans |
| [MAPREDUCE-4307](https://issues.apache.org/jira/browse/MAPREDUCE-4307) | TeraInputFormat calls FileSystem.getDefaultBlockSize() without a Path - Failure when using ViewFileSystem |  Major | mrv2 | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4306](https://issues.apache.org/jira/browse/MAPREDUCE-4306) | Problem running Distributed Shell applications as a user other than the one started the daemons |  Major | mrv2 | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4302](https://issues.apache.org/jira/browse/MAPREDUCE-4302) | NM goes down if error encountered during log aggregation |  Critical | nodemanager | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-4300](https://issues.apache.org/jira/browse/MAPREDUCE-4300) | OOM in AM can turn it into a zombie. |  Major | applicationmaster | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4299](https://issues.apache.org/jira/browse/MAPREDUCE-4299) | Terasort hangs with MR2 FifoScheduler |  Major | mrv2 | Tom White | Tom White |
| [MAPREDUCE-4297](https://issues.apache.org/jira/browse/MAPREDUCE-4297) | Usersmap file in gridmix should not fail on empty lines |  Major | contrib/gridmix | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-4295](https://issues.apache.org/jira/browse/MAPREDUCE-4295) | RM crashes due to DNS issue |  Critical | mrv2, resourcemanager | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4290](https://issues.apache.org/jira/browse/MAPREDUCE-4290) | JobStatus.getState() API is giving ambiguous values |  Major | mrv2 | Nishan Shetty | Devaraj K |
| [MAPREDUCE-4276](https://issues.apache.org/jira/browse/MAPREDUCE-4276) | Allow setting yarn.nodemanager.delete.debug-delay-sec property to "-1" for easier container debugging. |  Major | mrv2 | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4270](https://issues.apache.org/jira/browse/MAPREDUCE-4270) | data\_join test classes are in the wrong packge |  Major | mrv2 | Brock Noland | Thomas Graves |
| [MAPREDUCE-4269](https://issues.apache.org/jira/browse/MAPREDUCE-4269) | documentation: Gridmix has javadoc warnings in StressJobFactory |  Major | mrv2 | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-4267](https://issues.apache.org/jira/browse/MAPREDUCE-4267) | mavenize pipes |  Critical | mrv2 | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4264](https://issues.apache.org/jira/browse/MAPREDUCE-4264) | Got ClassCastException when using mapreduce.history.server.delegationtoken.required=true |  Blocker | mrv2 | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4262](https://issues.apache.org/jira/browse/MAPREDUCE-4262) | NM gives wrong log message saying "Connected to ResourceManager" before trying to connect |  Minor | mrv2, nodemanager | Devaraj K | Devaraj K |
| [MAPREDUCE-4252](https://issues.apache.org/jira/browse/MAPREDUCE-4252) | MR2 job never completes with 1 pending task |  Major | mrv2 | Tom White | Tom White |
| [MAPREDUCE-4250](https://issues.apache.org/jira/browse/MAPREDUCE-4250) | hadoop-config.sh missing variable exports, causes Yarn jobs to fail with ClassNotFoundException MRAppMaster |  Major | nodemanager | Patrick Hunt | Patrick Hunt |
| [MAPREDUCE-4238](https://issues.apache.org/jira/browse/MAPREDUCE-4238) | mavenize data\_join |  Critical | mrv2 | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4237](https://issues.apache.org/jira/browse/MAPREDUCE-4237) | TestNodeStatusUpdater can fail if localhost has a domain associated with it |  Major | . | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4233](https://issues.apache.org/jira/browse/MAPREDUCE-4233) | NPE can happen in RMNMNodeInfo. |  Critical | . | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4228](https://issues.apache.org/jira/browse/MAPREDUCE-4228) | mapreduce.job.reduce.slowstart.completedmaps is not working properly to delay the scheduling of the reduce tasks |  Major | applicationmaster, mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4226](https://issues.apache.org/jira/browse/MAPREDUCE-4226) | ConcurrentModificationException in FileSystemCounterGroup |  Major | mrv2 | Tom White | Tom White |
| [MAPREDUCE-4224](https://issues.apache.org/jira/browse/MAPREDUCE-4224) | TestFifoScheduler throws org.apache.hadoop.metrics2.MetricsException |  Major | mrv2, scheduler, test | Devaraj K | Devaraj K |
| [MAPREDUCE-4220](https://issues.apache.org/jira/browse/MAPREDUCE-4220) | RM apps page starttime/endtime sorts are incorrect |  Minor | mrv2 | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-4215](https://issues.apache.org/jira/browse/MAPREDUCE-4215) | RM app page shows 500 error on appid parse error |  Major | mrv2 | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-4211](https://issues.apache.org/jira/browse/MAPREDUCE-4211) | Error conditions (missing appid, appid not found) are masked in the RM app page |  Minor | mrv2 | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-4209](https://issues.apache.org/jira/browse/MAPREDUCE-4209) | junit dependency in hadoop-mapreduce-client is missing scope test |  Major | build | Radim Kolar |  |
| [MAPREDUCE-4206](https://issues.apache.org/jira/browse/MAPREDUCE-4206) | Sorting by Last Health-Update on the RM nodes page sorts does not work correctly |  Minor | mrv2 | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-4197](https://issues.apache.org/jira/browse/MAPREDUCE-4197) | Include the hsqldb jar in the hadoop-mapreduce tar file |  Major | . | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-4194](https://issues.apache.org/jira/browse/MAPREDUCE-4194) | ConcurrentModificationError in DirectoryCollection |  Major | mrv2 | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-4189](https://issues.apache.org/jira/browse/MAPREDUCE-4189) | TestContainerManagerSecurity is failing |  Critical | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-4169](https://issues.apache.org/jira/browse/MAPREDUCE-4169) | Container Logs appear in unsorted order |  Minor | mrv2 | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-4165](https://issues.apache.org/jira/browse/MAPREDUCE-4165) | Committing is misspelled as commiting in task logs |  Trivial | mrv2 | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-4160](https://issues.apache.org/jira/browse/MAPREDUCE-4160) | some mrv1 ant tests fail with timeout - due to 4156 |  Major | test | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4159](https://issues.apache.org/jira/browse/MAPREDUCE-4159) | Job is running in Uber mode after setting "mapreduce.job.ubertask.maxreduces" to zero |  Major | mrv2 | Nishan Shetty | Devaraj K |
| [MAPREDUCE-4156](https://issues.apache.org/jira/browse/MAPREDUCE-4156) | ant build fails compiling JobInProgress |  Major | build | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4152](https://issues.apache.org/jira/browse/MAPREDUCE-4152) | map task left hanging after AM dies trying to connect to RM |  Major | mrv2 | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4148](https://issues.apache.org/jira/browse/MAPREDUCE-4148) | MapReduce should not have a compile-time dependency on HDFS |  Major | mrv2 | Tom White | Tom White |
| [MAPREDUCE-4144](https://issues.apache.org/jira/browse/MAPREDUCE-4144) | ResourceManager NPE while handling NODE\_UPDATE |  Critical | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4140](https://issues.apache.org/jira/browse/MAPREDUCE-4140) | mapreduce classes incorrectly importing "clover.org.apache.*" classes |  Major | client, mrv2 | Patrick Hunt | Patrick Hunt |
| [MAPREDUCE-4139](https://issues.apache.org/jira/browse/MAPREDUCE-4139) | Potential ResourceManager deadlock when SchedulerEventDispatcher is stopped |  Major | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4133](https://issues.apache.org/jira/browse/MAPREDUCE-4133) | MR over viewfs is broken |  Major | . | John George | John George |
| [MAPREDUCE-4129](https://issues.apache.org/jira/browse/MAPREDUCE-4129) | Lots of unneeded counters log messages |  Major | mrv2 | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4128](https://issues.apache.org/jira/browse/MAPREDUCE-4128) | AM Recovery expects all attempts of a completed task to also be completed. |  Major | mrv2 | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4117](https://issues.apache.org/jira/browse/MAPREDUCE-4117) | mapred job -status throws NullPointerException |  Critical | client, mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-4102](https://issues.apache.org/jira/browse/MAPREDUCE-4102) | job counters not available in Jobhistory webui for killed jobs |  Major | webapps | Thomas Graves | Bhallamudi Venkata Siva Kamesh |
| [MAPREDUCE-4099](https://issues.apache.org/jira/browse/MAPREDUCE-4099) | ApplicationMaster may fail to remove staging directory |  Critical | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4097](https://issues.apache.org/jira/browse/MAPREDUCE-4097) | tools testcases fail because missing mrapp-generated-classpath file in classpath |  Major | build | Alejandro Abdelnur | Roman Shaposhnik |
| [MAPREDUCE-4092](https://issues.apache.org/jira/browse/MAPREDUCE-4092) | commitJob Exception does not fail job (regression in 0.23 vs 0.20) |  Blocker | mrv2 | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-4091](https://issues.apache.org/jira/browse/MAPREDUCE-4091) | tools testcases failing because of MAPREDUCE-4082 |  Critical | build, test | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-4089](https://issues.apache.org/jira/browse/MAPREDUCE-4089) | Hung Tasks never time out. |  Blocker | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4082](https://issues.apache.org/jira/browse/MAPREDUCE-4082) | hadoop-mapreduce-client-app's mrapp-generated-classpath file should not be in the module JAR |  Critical | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-4074](https://issues.apache.org/jira/browse/MAPREDUCE-4074) | Client continuously retries to RM When RM goes down before launching Application Master |  Major | . | Devaraj K | xieguiming |
| [MAPREDUCE-4073](https://issues.apache.org/jira/browse/MAPREDUCE-4073) | CS assigns multiple off-switch containers when using multi-level-queues |  Critical | mrv2, scheduler | Siddharth Seth | Siddharth Seth |
| [MAPREDUCE-4068](https://issues.apache.org/jira/browse/MAPREDUCE-4068) | Jars in lib subdirectory of the submittable JAR are not added to the classpath |  Blocker | mrv2 | Ahmed Radwan | Robert Kanter |
| [MAPREDUCE-4062](https://issues.apache.org/jira/browse/MAPREDUCE-4062) | AM Launcher thread can hang forever |  Major | mrv2 | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4060](https://issues.apache.org/jira/browse/MAPREDUCE-4060) | Multiple SLF4J binding warning |  Major | build | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4053](https://issues.apache.org/jira/browse/MAPREDUCE-4053) | Counters group names deprecation is wrong, iterating over group names deprecated names don't show up |  Major | mrv2 | Alejandro Abdelnur | Robert Joseph Evans |
| [MAPREDUCE-4050](https://issues.apache.org/jira/browse/MAPREDUCE-4050) | Invalid node link |  Major | mrv2 | Bhallamudi Venkata Siva Kamesh | Bhallamudi Venkata Siva Kamesh |
| [MAPREDUCE-4048](https://issues.apache.org/jira/browse/MAPREDUCE-4048) | NullPointerException exception while accessing the Application Master UI |  Major | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-4040](https://issues.apache.org/jira/browse/MAPREDUCE-4040) | History links should use hostname rather than IP address. |  Minor | jobhistoryserver, mrv2 | Bhallamudi Venkata Siva Kamesh | Bhallamudi Venkata Siva Kamesh |
| [MAPREDUCE-4031](https://issues.apache.org/jira/browse/MAPREDUCE-4031) | Node Manager hangs on shut down |  Critical | mrv2, nodemanager | Devaraj K | Devaraj K |
| [MAPREDUCE-4024](https://issues.apache.org/jira/browse/MAPREDUCE-4024) | RM webservices can't query on finalStatus |  Major | mrv2 | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4020](https://issues.apache.org/jira/browse/MAPREDUCE-4020) | Web services returns incorrect JSON for deep queue tree |  Major | mrv2, webapps | Jason Lowe | Anupam Seth |
| [MAPREDUCE-4012](https://issues.apache.org/jira/browse/MAPREDUCE-4012) | Hadoop Job setup error leaves no useful info to users (when LinuxTaskController is used) |  Minor | . | Koji Noguchi | Thomas Graves |
| [MAPREDUCE-4010](https://issues.apache.org/jira/browse/MAPREDUCE-4010) | TestWritableJobConf fails on trunk |  Critical | mrv2 | Jason Lowe | Alejandro Abdelnur |
| [MAPREDUCE-4002](https://issues.apache.org/jira/browse/MAPREDUCE-4002) | MultiFileWordCount job fails if the input path is not from default file system |  Major | examples | Bhallamudi Venkata Siva Kamesh | Bhallamudi Venkata Siva Kamesh |
| [MAPREDUCE-3999](https://issues.apache.org/jira/browse/MAPREDUCE-3999) | Tracking link gives an error if the AppMaster hasn't started yet |  Major | mrv2, webapps | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-3993](https://issues.apache.org/jira/browse/MAPREDUCE-3993) | Graceful handling of codec errors during decompression |  Major | mrv1, mrv2 | Todd Lipcon | Karthik Kambatla |
| [MAPREDUCE-3992](https://issues.apache.org/jira/browse/MAPREDUCE-3992) | Reduce fetcher doesn't verify HTTP status code of response |  Major | mrv1 | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-3988](https://issues.apache.org/jira/browse/MAPREDUCE-3988) | mapreduce.job.local.dir doesn't point to a single directory on a node. |  Major | mrv2 | Vinod Kumar Vavilapalli | Eric Payne |
| [MAPREDUCE-3947](https://issues.apache.org/jira/browse/MAPREDUCE-3947) | yarn.app.mapreduce.am.resource.mb not documented |  Minor | . | Todd Lipcon | Devaraj K |
| [MAPREDUCE-3932](https://issues.apache.org/jira/browse/MAPREDUCE-3932) | MR tasks failing and crashing the AM when available-resources/headRoom becomes zero |  Critical | mr-am, mrv2 | Vinod Kumar Vavilapalli | Robert Joseph Evans |
| [MAPREDUCE-3927](https://issues.apache.org/jira/browse/MAPREDUCE-3927) | Shuffle hang when set map.failures.percent |  Critical | mrv2 | MengWang | Bhallamudi Venkata Siva Kamesh |
| [MAPREDUCE-3893](https://issues.apache.org/jira/browse/MAPREDUCE-3893) | allow capacity scheduler configs maximum-applications and maximum-am-resource-percent configurable on a per queue basis |  Critical | mrv2 | Thomas Graves | Thomas Graves |
| [MAPREDUCE-3889](https://issues.apache.org/jira/browse/MAPREDUCE-3889) | job client tries to use /tasklog interface, but that doesn't exist anymore |  Critical | mrv2 | Thomas Graves | Devaraj K |
| [MAPREDUCE-3873](https://issues.apache.org/jira/browse/MAPREDUCE-3873) | Nodemanager is not getting decommisioned if the absolute ip is given in exclude file. |  Minor | mrv2, nodemanager | Nishan Shetty | xieguiming |
| [MAPREDUCE-3870](https://issues.apache.org/jira/browse/MAPREDUCE-3870) | Invalid App Metrics |  Major | mrv2 | Bhallamudi Venkata Siva Kamesh | Bhallamudi Venkata Siva Kamesh |
| [MAPREDUCE-3782](https://issues.apache.org/jira/browse/MAPREDUCE-3782) | teragen terasort jobs fail when using webhdfs:// |  Critical | mrv2 | Arpit Gupta | Jason Lowe |
| [MAPREDUCE-3728](https://issues.apache.org/jira/browse/MAPREDUCE-3728) | ShuffleHandler can't access results when configured in a secure mode |  Critical | mrv2, nodemanager | Roman Shaposhnik | Ding Yuan |
| [MAPREDUCE-3682](https://issues.apache.org/jira/browse/MAPREDUCE-3682) | Tracker URL says AM tasks run on localhost |  Major | mrv2 | David Capwell | Ravi Prakash |
| [MAPREDUCE-3672](https://issues.apache.org/jira/browse/MAPREDUCE-3672) | Killed maps shouldn't be counted towards JobCounter.NUM\_FAILED\_MAPS |  Major | mr-am, mrv2 | Vinod Kumar Vavilapalli | Anupam Seth |
| [MAPREDUCE-3650](https://issues.apache.org/jira/browse/MAPREDUCE-3650) | testGetTokensForHftpFS() fails |  Blocker | mrv2 | Thomas Graves | Ravi Prakash |
| [MAPREDUCE-3621](https://issues.apache.org/jira/browse/MAPREDUCE-3621) | TestDBJob and TestDataDrivenDBInputFormat ant tests fail |  Major | mrv2 | Thomas Graves | Ravi Prakash |
| [MAPREDUCE-3543](https://issues.apache.org/jira/browse/MAPREDUCE-3543) | Mavenize Gridmix. |  Critical | mrv2 | Mahadev konar | Thomas Graves |
| [MAPREDUCE-3506](https://issues.apache.org/jira/browse/MAPREDUCE-3506) | Calling getPriority on JobInfo after parsing a history log with JobHistoryParser throws a NullPointerException |  Minor | client, mrv2 | Ratandeep Ratti | Jason Lowe |
| [MAPREDUCE-3493](https://issues.apache.org/jira/browse/MAPREDUCE-3493) | Add the default mapreduce.shuffle.port property to mapred-default.xml |  Minor | mrv2 | Ahmed Radwan |  |
| [MAPREDUCE-3350](https://issues.apache.org/jira/browse/MAPREDUCE-3350) | Per-app RM page should have the list of application-attempts like on the app JHS page |  Critical | mrv2, webapps | Vinod Kumar Vavilapalli | Jonathan Eagles |
| [MAPREDUCE-3348](https://issues.apache.org/jira/browse/MAPREDUCE-3348) | mapred job -status fails to give info even if the job is present in History |  Major | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-3082](https://issues.apache.org/jira/browse/MAPREDUCE-3082) | archive command take wrong path for input file with current directory |  Major | harchive | Rajit Saha | John George |
| [MAPREDUCE-2739](https://issues.apache.org/jira/browse/MAPREDUCE-2739) | MR-279: Update installation docs (remove YarnClientFactory) |  Minor | mrv2 | Ahmed Radwan | Bo Wang |
| [MAPREDUCE-2374](https://issues.apache.org/jira/browse/MAPREDUCE-2374) | "Text File Busy" errors launching MR tasks |  Major | . | Todd Lipcon | Andy Isaacson |
| [MAPREDUCE-2289](https://issues.apache.org/jira/browse/MAPREDUCE-2289) | Permissions race can make getStagingDir fail on local filesystem |  Major | job submission | Todd Lipcon | Ahmed Radwan |
| [MAPREDUCE-2220](https://issues.apache.org/jira/browse/MAPREDUCE-2220) | Fix new API FileOutputFormat-related typos in mapred-default.xml |  Minor | documentation | Rui KUBO | Rui KUBO |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4212](https://issues.apache.org/jira/browse/MAPREDUCE-4212) | TestJobClientGetJob sometimes fails |  Major | test | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-3983](https://issues.apache.org/jira/browse/MAPREDUCE-3983) | TestTTResourceReporting can fail, and should just be deleted |  Major | mrv1 | Robert Joseph Evans | Ravi Prakash |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4163](https://issues.apache.org/jira/browse/MAPREDUCE-4163) | consistently set the bind address |  Major | mrv2 | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-4162](https://issues.apache.org/jira/browse/MAPREDUCE-4162) | Correctly set token service |  Major | client, mrv2 | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-4161](https://issues.apache.org/jira/browse/MAPREDUCE-4161) | create sockets consistently |  Major | client, mrv2 | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-3972](https://issues.apache.org/jira/browse/MAPREDUCE-3972) | Locking and exception issues in JobHistory Server. |  Major | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-3942](https://issues.apache.org/jira/browse/MAPREDUCE-3942) | Randomize master key generation for ApplicationTokenSecretManager and roll it every so often |  Major | mrv2, security | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-3940](https://issues.apache.org/jira/browse/MAPREDUCE-3940) | ContainerTokens should have an expiry interval |  Major | mrv2, security | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-3613](https://issues.apache.org/jira/browse/MAPREDUCE-3613) | web service calls header contains 2 content types |  Critical | mrv2 | Thomas Graves | Thomas Graves |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4134](https://issues.apache.org/jira/browse/MAPREDUCE-4134) | Remove references of mapred.child.ulimit etc. since they are not being used any more |  Major | mrv2 | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-4051](https://issues.apache.org/jira/browse/MAPREDUCE-4051) | Remove the empty hadoop-mapreduce-project/assembly/all.xml file |  Major | . | Ravi Prakash | Ravi Prakash |


