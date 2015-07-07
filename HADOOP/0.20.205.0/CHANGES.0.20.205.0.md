# Apache Hadoop Changelog

## Release 0.20.205.0 - 2011-10-06

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-2202](https://issues.apache.org/jira/browse/HDFS-2202) | Changes to balancer bandwidth should not require datanode restart. |  Major | balancer & mover, datanode | Eric Payne | Eric Payne |
| [HDFS-1554](https://issues.apache.org/jira/browse/HDFS-1554) | Append 0.20: New semantics for recoverLease |  Major | . | Hairong Kuang | Hairong Kuang |
| [HDFS-630](https://issues.apache.org/jira/browse/HDFS-630) | In DFSOutputStream.nextBlockOutputStream(), the client can exclude specific datanodes when locating the next block. |  Major | hdfs-client, namenode | Ruyue Ma | Cosmin Lehene |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-7119](https://issues.apache.org/jira/browse/HADOOP-7119) | add Kerberos HTTP SPNEGO authentication support to Hadoop JT/NN/DN/TT web-consoles |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-6889](https://issues.apache.org/jira/browse/HADOOP-6889) | Make RPC to have an option to timeout |  Major | ipc | Hairong Kuang | John George |
| [HDFS-2202](https://issues.apache.org/jira/browse/HDFS-2202) | Changes to balancer bandwidth should not require datanode restart. |  Major | balancer & mover, datanode | Eric Payne | Eric Payne |
| [HDFS-1520](https://issues.apache.org/jira/browse/HDFS-1520) | HDFS 20 append: Lightweight NameNode operation to trigger lease recovery |  Major | namenode | Hairong Kuang | Hairong Kuang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-7720](https://issues.apache.org/jira/browse/HADOOP-7720) | improve the hadoop-setup-conf.sh to read in the hbase user and setup the configs |  Major | conf | Arpit Gupta | Arpit Gupta |
| [HADOOP-7707](https://issues.apache.org/jira/browse/HADOOP-7707) | improve config generator to allow users to specify proxy user, turn append on or off, turn webhdfs on or off |  Major | conf | Arpit Gupta | Arpit Gupta |
| [HADOOP-7472](https://issues.apache.org/jira/browse/HADOOP-7472) | RPC client should deal with the IP address changes |  Minor | ipc | Kihwal Lee | Kihwal Lee |
| [HADOOP-7343](https://issues.apache.org/jira/browse/HADOOP-7343) | backport HADOOP-7008 and HADOOP-7042 to branch-0.20-security |  Minor | test | Thomas Graves | Thomas Graves |
| [HDFS-1211](https://issues.apache.org/jira/browse/HDFS-1211) | 0.20 append: Block receiver should not log "rewind" packets at INFO level |  Minor | datanode | Todd Lipcon | Todd Lipcon |
| [HDFS-1210](https://issues.apache.org/jira/browse/HDFS-1210) | DFSClient should log exception when block recovery fails |  Trivial | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-1054](https://issues.apache.org/jira/browse/HDFS-1054) | Remove unnecessary sleep after failure in nextBlockOutputStream |  Major | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-895](https://issues.apache.org/jira/browse/HDFS-895) | Allow hflush/sync to occur in parallel with new writes to the file |  Major | hdfs-client | dhruba borthakur | Todd Lipcon |
| [HDFS-826](https://issues.apache.org/jira/browse/HDFS-826) | Allow a mechanism for an application to detect that datanode(s)  have died in the write pipeline |  Major | hdfs-client | dhruba borthakur | dhruba borthakur |
| [HDFS-630](https://issues.apache.org/jira/browse/HDFS-630) | In DFSOutputStream.nextBlockOutputStream(), the client can exclude specific datanodes when locating the next block. |  Major | hdfs-client, namenode | Ruyue Ma | Cosmin Lehene |
| [MAPREDUCE-2981](https://issues.apache.org/jira/browse/MAPREDUCE-2981) | Backport trunk fairscheduler to 0.20-security branch |  Major | contrib/fair-share | Matei Zaharia | Matei Zaharia |
| [MAPREDUCE-2494](https://issues.apache.org/jira/browse/MAPREDUCE-2494) | Make the distributed cache delete entires using LRU priority |  Major | distributed-cache | Robert Joseph Evans | Robert Joseph Evans |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-7715](https://issues.apache.org/jira/browse/HADOOP-7715) | see log4j Error when running mr jobs and certain dfs calls |  Major | conf | Arpit Gupta | Eric Yang |
| [HADOOP-7711](https://issues.apache.org/jira/browse/HADOOP-7711) | hadoop-env.sh generated from templates has duplicate info |  Major | conf | Arpit Gupta | Arpit Gupta |
| [HADOOP-7708](https://issues.apache.org/jira/browse/HADOOP-7708) | config generator does not update the properties file if on exists already |  Critical | conf | Arpit Gupta | Eric Yang |
| [HADOOP-7684](https://issues.apache.org/jira/browse/HADOOP-7684) | jobhistory server and secondarynamenode should have init.d script |  Major | scripts | Eric Yang | Eric Yang |
| [HADOOP-7681](https://issues.apache.org/jira/browse/HADOOP-7681) | log4j.properties is missing properties for security audit and hdfs audit should be changed to info |  Minor | conf | Arpit Gupta | Arpit Gupta |
| [HADOOP-7679](https://issues.apache.org/jira/browse/HADOOP-7679) | log4j.properties templates does not define mapred.jobsummary.logger |  Major | conf | Ramya Sunil | Ramya Sunil |
| [HADOOP-7649](https://issues.apache.org/jira/browse/HADOOP-7649) | TestMapredGroupMappingServiceRefresh and TestRefreshUserMappings  fail after HADOOP-7625 |  Blocker | security, test | Kihwal Lee | Jitendra Nath Pandey |
| [HADOOP-7645](https://issues.apache.org/jira/browse/HADOOP-7645) | HTTP auth tests requiring Kerberos infrastructure are not disabled on branch-0.20-security |  Blocker | security | Aaron T. Myers | Jitendra Nath Pandey |
| [HADOOP-7644](https://issues.apache.org/jira/browse/HADOOP-7644) | Fix the delegation token tests to use the new style renewers |  Blocker | security | Owen O'Malley | Owen O'Malley |
| [HADOOP-7637](https://issues.apache.org/jira/browse/HADOOP-7637) | Fair scheduler configuration file is not bundled in RPM |  Major | build | Eric Yang | Eric Yang |
| [HADOOP-7633](https://issues.apache.org/jira/browse/HADOOP-7633) | log4j.properties should be added to the hadoop conf on deploy |  Major | conf | Arpit Gupta | Eric Yang |
| [HADOOP-7631](https://issues.apache.org/jira/browse/HADOOP-7631) | In mapred-site.xml, stream.tmpdir is mapped to ${mapred.temp.dir} which is undeclared. |  Major | conf | Ramya Sunil | Eric Yang |
| [HADOOP-7630](https://issues.apache.org/jira/browse/HADOOP-7630) | hadoop-metrics2.properties should have a property \*.period set to a default value foe metrics |  Major | conf | Arpit Gupta | Eric Yang |
| [HADOOP-7626](https://issues.apache.org/jira/browse/HADOOP-7626) | Allow overwrite of HADOOP\_CLASSPATH and HADOOP\_OPTS |  Major | scripts | Eric Yang | Eric Yang |
| [HADOOP-7615](https://issues.apache.org/jira/browse/HADOOP-7615) | Binary layout does not put share/hadoop/contrib/\*.jar into the class path |  Major | scripts | Eric Yang | Eric Yang |
| [HADOOP-7610](https://issues.apache.org/jira/browse/HADOOP-7610) | /etc/profile.d does not exist on Debian |  Major | scripts | Eric Yang | Eric Yang |
| [HADOOP-7599](https://issues.apache.org/jira/browse/HADOOP-7599) | Improve hadoop setup conf script to setup secure Hadoop cluster |  Major | scripts | Eric Yang | Eric Yang |
| [HADOOP-7596](https://issues.apache.org/jira/browse/HADOOP-7596) | Enable jsvc to work with Hadoop RPM package |  Major | build | Eric Yang | Eric Yang |
| [HADOOP-7400](https://issues.apache.org/jira/browse/HADOOP-7400) | HdfsProxyTests fails when the -Dtest.build.dir and -Dbuild.test is set |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-6722](https://issues.apache.org/jira/browse/HADOOP-6722) | NetUtils.connect should check that it hasn't connected a socket to itself |  Major | util | Todd Lipcon | Todd Lipcon |
| [HDFS-2411](https://issues.apache.org/jira/browse/HDFS-2411) | with webhdfs enabled in secure mode the auth to local mappings are not being respected. |  Major | webhdfs | Arpit Gupta | Jitendra Nath Pandey |
| [HDFS-2408](https://issues.apache.org/jira/browse/HDFS-2408) | DFSClient#getNumCurrentReplicas is package private in 205 but public in branch-0.20-append |  Blocker | hdfs-client | stack | stack |
| [HDFS-2405](https://issues.apache.org/jira/browse/HDFS-2405) | hadoop dfs command with webhdfs fails on secure hadoop |  Critical | webhdfs | Arpit Gupta | Jitendra Nath Pandey |
| [HDFS-2392](https://issues.apache.org/jira/browse/HDFS-2392) | Dist with hftp is failing again |  Critical | namenode | Rajit Saha | Daryn Sharp |
| [HDFS-2375](https://issues.apache.org/jira/browse/HDFS-2375) | TestFileAppend4 fails in 0.20.205 branch |  Blocker | hdfs-client | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2373](https://issues.apache.org/jira/browse/HDFS-2373) | Commands using webhdfs and hftp print unnecessary debug information on the console with security enabled |  Major | webhdfs | Arpit Gupta | Arpit Gupta |
| [HDFS-2361](https://issues.apache.org/jira/browse/HDFS-2361) | hftp is broken |  Critical | namenode | Rajit Saha | Jitendra Nath Pandey |
| [HDFS-2359](https://issues.apache.org/jira/browse/HDFS-2359) | NPE found in Datanode log while Disk failed during different HDFS operation |  Major | datanode | Rajit Saha | Jonathan Eagles |
| [HDFS-2358](https://issues.apache.org/jira/browse/HDFS-2358) | NPE when the default filesystem's uri has no authority |  Major | namenode | Rajit Saha | Daryn Sharp |
| [HDFS-2342](https://issues.apache.org/jira/browse/HDFS-2342) | TestSleepJob and TestHdfsProxy broken after HDFS-2284 |  Blocker | build | Kihwal Lee | Tsz Wo Nicholas Sze |
| [HDFS-2331](https://issues.apache.org/jira/browse/HDFS-2331) | Hdfs compilation fails |  Major | hdfs-client | Abhijit Suresh Shingate | Abhijit Suresh Shingate |
| [HDFS-2325](https://issues.apache.org/jira/browse/HDFS-2325) | Fuse-DFS fails to build on Hadoop 20.203.0 |  Blocker | fuse-dfs, libhdfs | Charles Earl | Kihwal Lee |
| [HDFS-2320](https://issues.apache.org/jira/browse/HDFS-2320) | Make merged protocol changes from 0.20-append to 0.20-security compatible with previous releases. |  Major | datanode, hdfs-client, namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2259](https://issues.apache.org/jira/browse/HDFS-2259) | DN web-UI doesn't work with paths that contain html |  Minor | datanode | Eli Collins | Eli Collins |
| [HDFS-2190](https://issues.apache.org/jira/browse/HDFS-2190) | NN fails to start if it encounters an empty or malformed fstime file |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2117](https://issues.apache.org/jira/browse/HDFS-2117) | DiskChecker#mkdirsWithExistsAndPermissionCheck may return true even when the dir is not created |  Minor | datanode | Eli Collins | Eli Collins |
| [HDFS-2053](https://issues.apache.org/jira/browse/HDFS-2053) | Bug in INodeDirectory#computeContentSummary warning |  Minor | namenode | Michael Noll | Michael Noll |
| [HDFS-1836](https://issues.apache.org/jira/browse/HDFS-1836) | Thousand of CLOSE\_WAIT socket |  Major | hdfs-client | Dennis Cheung | Bharath Mundlapudi |
| [HDFS-1779](https://issues.apache.org/jira/browse/HDFS-1779) | After NameNode restart , Clients can not read partial files even after client invokes Sync. |  Major | datanode, namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-1346](https://issues.apache.org/jira/browse/HDFS-1346) | DFSClient receives out of order packet ack |  Major | datanode, hdfs-client | Hairong Kuang | Hairong Kuang |
| [HDFS-1218](https://issues.apache.org/jira/browse/HDFS-1218) | 20 append: Blocks recovered on startup should be treated with lower priority during block synchronization |  Critical | datanode | Todd Lipcon | Todd Lipcon |
| [HDFS-1207](https://issues.apache.org/jira/browse/HDFS-1207) | 0.20-append: stallReplicationWork should be volatile |  Major | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-1202](https://issues.apache.org/jira/browse/HDFS-1202) | DataBlockScanner throws NPE when updated before initialized |  Major | datanode | Todd Lipcon | Todd Lipcon |
| [HDFS-1197](https://issues.apache.org/jira/browse/HDFS-1197) | Blocks are considered "complete" prematurely after commitBlockSynchronization or DN restart |  Major | datanode, hdfs-client, namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-1186](https://issues.apache.org/jira/browse/HDFS-1186) | 0.20: DNs should interrupt writers at start of recovery |  Blocker | datanode | Todd Lipcon | Todd Lipcon |
| [HDFS-1164](https://issues.apache.org/jira/browse/HDFS-1164) | TestHdfsProxy is failing |  Major | contrib/hdfsproxy | Eli Collins | Todd Lipcon |
| [HDFS-1141](https://issues.apache.org/jira/browse/HDFS-1141) | completeFile does not check lease ownership |  Blocker | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-988](https://issues.apache.org/jira/browse/HDFS-988) | saveNamespace race can corrupt the edits log |  Blocker | namenode | dhruba borthakur | Eli Collins |
| [HDFS-724](https://issues.apache.org/jira/browse/HDFS-724) | Pipeline close hangs if one of the datanode is not responsive. |  Blocker | datanode, hdfs-client | Tsz Wo Nicholas Sze | Hairong Kuang |
| [HDFS-606](https://issues.apache.org/jira/browse/HDFS-606) | ConcurrentModificationException in invalidateCorruptReplicas() |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [MAPREDUCE-3112](https://issues.apache.org/jira/browse/MAPREDUCE-3112) | Calling hadoop cli inside mapreduce job leads to errors |  Major | contrib/streaming | Eric Yang | Eric Yang |
| [MAPREDUCE-3076](https://issues.apache.org/jira/browse/MAPREDUCE-3076) | TestSleepJob fails |  Blocker | test | Arun C Murthy | Arun C Murthy |
| [MAPREDUCE-2915](https://issues.apache.org/jira/browse/MAPREDUCE-2915) | LinuxTaskController does not work when JniBasedUnixGroupsNetgroupMapping or JniBasedUnixGroupsMapping is enabled |  Major | task-controller | Kihwal Lee | Kihwal Lee |
| [MAPREDUCE-2852](https://issues.apache.org/jira/browse/MAPREDUCE-2852) | Jira for YDH bug 2854624 |  Major | tasktracker | Eli Collins | Kihwal Lee |
| [MAPREDUCE-2705](https://issues.apache.org/jira/browse/MAPREDUCE-2705) | tasks localized and launched serially by TaskLauncher - causing other tasks to be delayed |  Major | tasktracker | Thomas Graves | Thomas Graves |
| [MAPREDUCE-2610](https://issues.apache.org/jira/browse/MAPREDUCE-2610) | Inconsistent API JobClient.getQueueAclsForCurrentUser |  Major | client | Joep Rottinghuis | Joep Rottinghuis |
| [MAPREDUCE-2549](https://issues.apache.org/jira/browse/MAPREDUCE-2549) | Potential resource leaks in HadoopServer.java, RunOnHadoopWizard.java and Environment.java |  Major | contrib/eclipse-plugin, contrib/streaming | Devaraj K | Devaraj K |
| [MAPREDUCE-2489](https://issues.apache.org/jira/browse/MAPREDUCE-2489) | Jobsplits with random hostnames can make the queue unusable |  Major | jobtracker | Jeffrey Naisbitt | Jeffrey Naisbitt |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-1252](https://issues.apache.org/jira/browse/HDFS-1252) | TestDFSConcurrentFileOperations broken in 0.20-appendj |  Major | test | Todd Lipcon | Todd Lipcon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-2404](https://issues.apache.org/jira/browse/HDFS-2404) | webhdfs liststatus json response is not correct |  Major | webhdfs | Arpit Gupta | Suresh Srinivas |
| [HDFS-2395](https://issues.apache.org/jira/browse/HDFS-2395) | webhdfs api's should return a root element in the json response |  Critical | webhdfs | Arpit Gupta | Tsz Wo Nicholas Sze |
| [HDFS-2385](https://issues.apache.org/jira/browse/HDFS-2385) | Support delegation token renewal in webhdfs |  Major | webhdfs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-2366](https://issues.apache.org/jira/browse/HDFS-2366) | webhdfs throws a npe when ugi is null from getDelegationToken |  Major | webhdfs | Arpit Gupta | Tsz Wo Nicholas Sze |
| [HDFS-2356](https://issues.apache.org/jira/browse/HDFS-2356) | webhdfs: support case insensitive query parameter names |  Major | webhdfs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-2348](https://issues.apache.org/jira/browse/HDFS-2348) | Support getContentSummary and getFileChecksum in webhdfs |  Major | webhdfs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-2340](https://issues.apache.org/jira/browse/HDFS-2340) | Support getFileBlockLocations and getDelegationToken in webhdfs |  Major | webhdfs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-2338](https://issues.apache.org/jira/browse/HDFS-2338) | Configuration option to enable/disable webhdfs. |  Major | webhdfs | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HDFS-2318](https://issues.apache.org/jira/browse/HDFS-2318) | Provide authentication to webhdfs using SPNEGO |  Major | webhdfs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-1057](https://issues.apache.org/jira/browse/HDFS-1057) | Concurrent readers hit ChecksumExceptions if following a writer to very end of file |  Blocker | datanode | Todd Lipcon | sam rash |
| [HDFS-561](https://issues.apache.org/jira/browse/HDFS-561) | Fix write pipeline READ\_TIMEOUT |  Major | datanode, hdfs-client | Kan Zhang | Kan Zhang |
| [MAPREDUCE-2928](https://issues.apache.org/jira/browse/MAPREDUCE-2928) | MR-2413 improvements |  Major | tasktracker | Eli Collins | Eli Collins |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


