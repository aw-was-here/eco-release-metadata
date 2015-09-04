
<!---
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
-->
# Apache Hadoop Changelog

## Release 1-win - Unreleased (as of 2015-09-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4737](https://issues.apache.org/jira/browse/MAPREDUCE-4737) |  Hadoop does not close output file / does not call Mapper.cleanup if exception in map |  Major | . | Daniel Dai | Arun C Murthy |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8820](https://issues.apache.org/jira/browse/HADOOP-8820) | Backport HADOOP-8469 and HADOOP-8470: add "NodeGroup" layer in new NetworkTopology (also known as NetworkTopologyWithNodeGroup) |  Major | net | Junping Du | Junping Du |
| [HDFS-3942](https://issues.apache.org/jira/browse/HDFS-3942) | Backport HDFS-3495: Update balancer policy for Network Topology with additional 'NodeGroup' layer |  Major | balancer & mover | Junping Du | Junping Du |
| [HDFS-3941](https://issues.apache.org/jira/browse/HDFS-3941) | Backport HDFS-3498 and HDFS3601: update replica placement policy for new added "NodeGroup" layer topology |  Major | namenode | Junping Du | Junping Du |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9802](https://issues.apache.org/jira/browse/HADOOP-9802) | Support Snappy codec on Windows. |  Major | io | Chris Nauroth | Chris Nauroth |
| [HADOOP-9450](https://issues.apache.org/jira/browse/HADOOP-9450) | HADOOP\_USER\_CLASSPATH\_FIRST is not honored; CLASSPATH is PREpended instead of APpended |  Major | scripts | Mitch Wyle | Harsh J |
| [HADOOP-9111](https://issues.apache.org/jira/browse/HADOOP-9111) | Fix failed testcases with @ignore annotation In branch-1 |  Minor | test | Jing Zhao | Jing Zhao |
| [HADOOP-8908](https://issues.apache.org/jira/browse/HADOOP-8908) | Refactor 'winutils.exe' code |  Minor | . | Chuan Liu | Chuan Liu |
| [HADOOP-8847](https://issues.apache.org/jira/browse/HADOOP-8847) | Change untar to use Java API on Windows instead of spawning tar process |  Major | . | Bikas Saha | Bikas Saha |
| [HADOOP-8823](https://issues.apache.org/jira/browse/HADOOP-8823) | ant package target should not depend on cn-docs |  Major | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4963](https://issues.apache.org/jira/browse/HDFS-4963) | Improve multihoming support in namenode |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4782](https://issues.apache.org/jira/browse/HDFS-4782) | backport edit log corruption toleration to branch-1-win |  Major | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-3649](https://issues.apache.org/jira/browse/HDFS-3649) | Port HDFS-385 to branch-1-win |  Major | . | Sumadhur Reddy Bolli | Sumadhur Reddy Bolli |
| [HDFS-3566](https://issues.apache.org/jira/browse/HDFS-3566) | Custom Replication Policy for Azure |  Major | namenode | Sumadhur Reddy Bolli | Sumadhur Reddy Bolli |
| [HDFS-3564](https://issues.apache.org/jira/browse/HDFS-3564) | Design enhancements to the pluggable blockplacementpolicy |  Major | namenode | Sumadhur Reddy Bolli | Sumadhur Reddy Bolli |
| [HDFS-496](https://issues.apache.org/jira/browse/HDFS-496) | Use PureJavaCrc32 in HDFS |  Minor | datanode, hdfs-client, performance | Todd Lipcon | Todd Lipcon |
| [HDFS-385](https://issues.apache.org/jira/browse/HDFS-385) | Design a pluggable interface to place replicas of blocks in HDFS |  Major | . | dhruba borthakur | dhruba borthakur |
| [MAPREDUCE-5406](https://issues.apache.org/jira/browse/MAPREDUCE-5406) | Improve logging around Task Tracker exiting with JVM manager inconsistent state |  Major | tasktracker | Chelsey Chang | Chelsey Chang |
| [MAPREDUCE-5161](https://issues.apache.org/jira/browse/MAPREDUCE-5161) | Merge MAPREDUCE-1806 from branch-1 to branch-1-win. CombineFileInputFormat fix for paths not on default FS |  Major | mrv1 | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-4203](https://issues.apache.org/jira/browse/MAPREDUCE-4203) | Create equivalent of ProcfsBasedProcessTree for Windows |  Major | . | Bikas Saha | Bikas Saha |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10142](https://issues.apache.org/jira/browse/HADOOP-10142) | Avoid groups lookup for unprivileged users such as "dr.who" |  Major | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-10094](https://issues.apache.org/jira/browse/HADOOP-10094) | NPE in GenericOptionsParser#preProcessForWindows() |  Trivial | util | Enis Soztutar | Enis Soztutar |
| [HADOOP-10090](https://issues.apache.org/jira/browse/HADOOP-10090) | Jobtracker metrics not updated properly after execution of a mapreduce job |  Major | metrics | Ivan Mitic | Ivan Mitic |
| [HADOOP-9801](https://issues.apache.org/jira/browse/HADOOP-9801) | Configuration#writeXml uses platform defaulting encoding, which may mishandle multi-byte characters. |  Major | conf | Chris Nauroth | Chris Nauroth |
| [HADOOP-9791](https://issues.apache.org/jira/browse/HADOOP-9791) | Add a test case covering long paths for new FileUtil access check methods |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9790](https://issues.apache.org/jira/browse/HADOOP-9790) | Job token path is not unquoted properly |  Major | . | Xi Fang | Xi Fang |
| [HADOOP-9768](https://issues.apache.org/jira/browse/HADOOP-9768) | chown and chgrp reject users and groups with spaces on platforms where spaces are otherwise acceptable |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-9722](https://issues.apache.org/jira/browse/HADOOP-9722) | Branch-1-win TestNativeIO failed caused by Window incompatible test case |  Minor | test | Xi Fang | Xi Fang |
| [HADOOP-9719](https://issues.apache.org/jira/browse/HADOOP-9719) | Branch-1-win TestFsShellReturnCode#testChgrp() failed caused by incorrect exit codes |  Minor | test | Xi Fang | Xi Fang |
| [HADOOP-9718](https://issues.apache.org/jira/browse/HADOOP-9718) | Branch-1-win TestGroupFallback#testGroupWithFallback() failed caused by java.lang.UnsatisfiedLinkError |  Major | security | Xi Fang | Xi Fang |
| [HADOOP-9687](https://issues.apache.org/jira/browse/HADOOP-9687) | branch-1-win TestJobTrackerQuiescence and TestFileLengthOnClusterRestart failed caused by incorrect DFS path construction on Windows |  Minor | test | Xi Fang | Xi Fang |
| [HADOOP-9685](https://issues.apache.org/jira/browse/HADOOP-9685) | hadoop-config.cmd: builds a classpath that is too long on windows |  Major | bin | Raja Aluri | Raja Aluri |
| [HADOOP-9681](https://issues.apache.org/jira/browse/HADOOP-9681) | FileUtil.unTarUsingJava() should close the InputStream upon finishing |  Minor | . | Chuan Liu | Chuan Liu |
| [HADOOP-9678](https://issues.apache.org/jira/browse/HADOOP-9678) | TestRPC#testStopsAllThreads intermittently fails on Windows |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9677](https://issues.apache.org/jira/browse/HADOOP-9677) | TestSetupAndCleanupFailure#testWithDFS fails on Windows |  Major | . | Ivan Mitic | Xi Fang |
| [HADOOP-9665](https://issues.apache.org/jira/browse/HADOOP-9665) | BlockDecompressorStream#decompress will throw EOFException instead of return -1 when EOF |  Critical | . | Zhijie Shen | Zhijie Shen |
| [HADOOP-9660](https://issues.apache.org/jira/browse/HADOOP-9660) | [WINDOWS] Powershell / cmd parses -Dkey=value from command line as [-Dkey, value] which breaks GenericsOptionParser |  Major | scripts, util | Enis Soztutar | Enis Soztutar |
| [HADOOP-9609](https://issues.apache.org/jira/browse/HADOOP-9609) | Remove sh dependency of bin-package target |  Minor | build | Chuan Liu | Chuan Liu |
| [HADOOP-9579](https://issues.apache.org/jira/browse/HADOOP-9579) | Contrib ant test target not setting the java.library.path |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9552](https://issues.apache.org/jira/browse/HADOOP-9552) | Windows log4j template should suppress info messages from mortbay.log |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9551](https://issues.apache.org/jira/browse/HADOOP-9551) | Backport common utils introduced with HADOOP-9413 to branch-1-win |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9507](https://issues.apache.org/jira/browse/HADOOP-9507) | LocalFileSystem rename() is broken in some cases when destination exists |  Minor | fs | Mostafa Elhemali | Chris Nauroth |
| [HADOOP-9472](https://issues.apache.org/jira/browse/HADOOP-9472) | Cleanup hadoop-config.cmd |  Minor | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9463](https://issues.apache.org/jira/browse/HADOOP-9463) | branch-1-win fails to build with OpenJDK7 |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9250](https://issues.apache.org/jira/browse/HADOOP-9250) | Windows installer bugfixes |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9185](https://issues.apache.org/jira/browse/HADOOP-9185) | TestFileCreation.testFsClose should clean up on exit. |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-9177](https://issues.apache.org/jira/browse/HADOOP-9177) | Address issues that came out from running static code analysis on winutils |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9110](https://issues.apache.org/jira/browse/HADOOP-9110) | winutils ls off-by-one error indexing MONTHS array can cause access violation |  Major | util | Chris Nauroth | Chris Nauroth |
| [HADOOP-9102](https://issues.apache.org/jira/browse/HADOOP-9102) | winutils task isAlive does not return a non-zero exit code if the requested task is not alive |  Major | util | Chris Nauroth | Chris Nauroth |
| [HADOOP-9099](https://issues.apache.org/jira/browse/HADOOP-9099) | NetUtils.normalizeHostName fails on domains where UnknownHost resolves to an IP address |  Minor | test | Ivan Mitic | Ivan Mitic |
| [HADOOP-9095](https://issues.apache.org/jira/browse/HADOOP-9095) | TestNNThroughputBenchmark fails in branch-1 |  Minor | net | Tsz Wo Nicholas Sze | Jing Zhao |
| [HADOOP-9062](https://issues.apache.org/jira/browse/HADOOP-9062) | hadoop-env.cmd overwrites the value of \*\_OPTS set before install |  Major | . | Ganeshan Iyer |  |
| [HADOOP-9061](https://issues.apache.org/jira/browse/HADOOP-9061) | Java6+Windows does not work well with symlinks |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9043](https://issues.apache.org/jira/browse/HADOOP-9043) | disallow in winutils creating symlinks with forwards slashes |  Major | util | Chris Nauroth | Chris Nauroth |
| [HADOOP-9036](https://issues.apache.org/jira/browse/HADOOP-9036) | TestSinkQueue.testConcurrentConsumers fails intermittently (Backports HADOOP-7292) |  Major | . | Ivan Mitic | Suresh Srinivas |
| [HADOOP-9027](https://issues.apache.org/jira/browse/HADOOP-9027) | Build fails on Windows without sh/sed/echo in the path |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9026](https://issues.apache.org/jira/browse/HADOOP-9026) | Hadoop.cmd fails to initialize if user's %path% variable has parenthesis |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9007](https://issues.apache.org/jira/browse/HADOOP-9007) | TestJobStatusPersistency.testJobStoreDisablingWithInvalidPath failure |  Minor | . | Chuan Liu | Chuan Liu |
| [HADOOP-9006](https://issues.apache.org/jira/browse/HADOOP-9006) | Winutils should keep Administrators privileges intact |  Minor | . | Chuan Liu | Chuan Liu |
| [HADOOP-8983](https://issues.apache.org/jira/browse/HADOOP-8983) | Minor fixes to windows batch scripts to accept alternate config directory location |  Major | . | Ramya Bharathi Nimmagadda | Ramya Bharathi Nimmagadda |
| [HADOOP-8973](https://issues.apache.org/jira/browse/HADOOP-8973) | DiskChecker cannot reliably detect an inaccessible disk on Windows with NTFS ACLs |  Major | util | Chris Nauroth | Chris Nauroth |
| [HADOOP-8972](https://issues.apache.org/jira/browse/HADOOP-8972) | Move winutils tests from bat to Java |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-8936](https://issues.apache.org/jira/browse/HADOOP-8936) | Local users should be able to query a domain user's groups on Windows |  Minor | . | Chuan Liu | Chuan Liu |
| [HADOOP-8935](https://issues.apache.org/jira/browse/HADOOP-8935) | Make 'winutils ls' show the SID if the owner does not exist on the system |  Minor | . | Chuan Liu | Chuan Liu |
| [HADOOP-8912](https://issues.apache.org/jira/browse/HADOOP-8912) | adding .gitattributes file to prevent CRLF and LF mismatches for source and text files |  Major | build | Raja Aluri | Raja Aluri |
| [HADOOP-8911](https://issues.apache.org/jira/browse/HADOOP-8911) | CRLF characters in source and text files |  Major | build | Raja Aluri | Raja Aluri |
| [HADOOP-8907](https://issues.apache.org/jira/browse/HADOOP-8907) | Provide means to look for zlib1.dll next to hadoop.dll on Windows |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-8903](https://issues.apache.org/jira/browse/HADOOP-8903) | support HADOOP\_USER\_CLASSPATH\_FIRST in windows hadoop cmd |  Major | scripts | Thejas M Nair | Thejas M Nair |
| [HADOOP-8902](https://issues.apache.org/jira/browse/HADOOP-8902) | Enable Gridmix v1 & v2 benchmarks on Windows platform |  Major | benchmarks | Mike Liddell | Mike Liddell |
| [HADOOP-8899](https://issues.apache.org/jira/browse/HADOOP-8899) | Classpath exceeds maximum OS limit |  Major | . | Ahmed El Baz | Ahmed El Baz |
| [HADOOP-8880](https://issues.apache.org/jira/browse/HADOOP-8880) | Missing jersey jars as dependency in the pom causes hive tests to fail |  Major | . | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-8879](https://issues.apache.org/jira/browse/HADOOP-8879) | TestUserGroupInformation fails on Windows when runas Administrator |  Minor | test | Bikas Saha | Bikas Saha |
| [HADOOP-8872](https://issues.apache.org/jira/browse/HADOOP-8872) | FileSystem#length returns zero for symlinks on windows+java6 |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-8871](https://issues.apache.org/jira/browse/HADOOP-8871) | FileUtil.symLink: if shell command fails, logging message does not correctly print command attempted |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-8869](https://issues.apache.org/jira/browse/HADOOP-8869) | Links at the bottom of the jobdetails page do not render correctly in IE9 |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-8868](https://issues.apache.org/jira/browse/HADOOP-8868) | FileUtil#chmod should normalize the path before calling into shell APIs |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-8763](https://issues.apache.org/jira/browse/HADOOP-8763) | Set group owner on Windows failed |  Minor | . | Chuan Liu | Chuan Liu |
| [HADOOP-8739](https://issues.apache.org/jira/browse/HADOOP-8739) | Cmd scripts for Windows have issues in argument parsing |  Major | . | Bikas Saha | Bikas Saha |
| [HADOOP-8734](https://issues.apache.org/jira/browse/HADOOP-8734) | LocalJobRunner does not support private distributed cache |  Major | filecache | Ivan Mitic | Ivan Mitic |
| [HADOOP-8733](https://issues.apache.org/jira/browse/HADOOP-8733) | TestStreamingTaskLog, TestJvmManager, TestLinuxTaskControllerLaunchArgs fail on Windows |  Major | test | Ivan Mitic | Ivan Mitic |
| [HADOOP-8732](https://issues.apache.org/jira/browse/HADOOP-8732) | Address intermittent test failures on Windows |  Major | util | Ivan Mitic | Ivan Mitic |
| [HADOOP-8731](https://issues.apache.org/jira/browse/HADOOP-8731) | TestTrackerDistributedCacheManager fails on Windows |  Major | filecache | Ivan Mitic | Ivan Mitic |
| [HADOOP-8694](https://issues.apache.org/jira/browse/HADOOP-8694) | Create true symbolic links on Windows |  Major | . | Chuan Liu | Chuan Liu |
| [HADOOP-8664](https://issues.apache.org/jira/browse/HADOOP-8664) | hadoop streaming job need the full path to commands even when they are in the path |  Major | . | Bikas Saha | Bikas Saha |
| [HADOOP-8657](https://issues.apache.org/jira/browse/HADOOP-8657) | TestCLI fails on Windows because it uses hardcoded file length of test files committed to the source code |  Major | . | Bikas Saha | Bikas Saha |
| [HADOOP-8564](https://issues.apache.org/jira/browse/HADOOP-8564) | Port and extend Hadoop native libraries for Windows to address datanode concurrent reading and writing issue |  Major | io | Chuan Liu | Chuan Liu |
| [HADOOP-8544](https://issues.apache.org/jira/browse/HADOOP-8544) | Move an assertion location in 'winutils chmod' |  Trivial | . | Chuan Liu | Chuan Liu |
| [HADOOP-8486](https://issues.apache.org/jira/browse/HADOOP-8486) | Resource leak - Close the open resource handles (File handles) before throwing the exception from the SequenceFile constructor |  Major | fs, io | Kanna Karanam | Kanna Karanam |
| [HADOOP-8456](https://issues.apache.org/jira/browse/HADOOP-8456) | Support spaces in user names and group names in results returned via winutils |  Minor | native | Chuan Liu | Ivan Mitic |
| [HADOOP-8440](https://issues.apache.org/jira/browse/HADOOP-8440) | HarFileSystem.decodeHarURI fails for URIs whose host contains numbers |  Minor | fs | Ivan Mitic | Ivan Mitic |
| [HADOOP-8424](https://issues.apache.org/jira/browse/HADOOP-8424) | Web UI broken on Windows because classpath not setup correctly |  Major | . | Bikas Saha | Bikas Saha |
| [HADOOP-8420](https://issues.apache.org/jira/browse/HADOOP-8420) | Hadoop Common creating package-info.java must not depend on sh |  Major | . | Bikas Saha | Bikas Saha |
| [HADOOP-8414](https://issues.apache.org/jira/browse/HADOOP-8414) | Address problems related to localhost resolving to 127.0.0.1 on Windows |  Major | fs, test | Ivan Mitic | Ivan Mitic |
| [HADOOP-8409](https://issues.apache.org/jira/browse/HADOOP-8409) | Fix TestCommandLineJobSubmission and TestGenericOptionsParser to work for windows |  Major | fs, test, util | Ivan Mitic | Ivan Mitic |
| [HADOOP-8329](https://issues.apache.org/jira/browse/HADOOP-8329) | Build fails with Java 7 |  Major | build | Kumar Ravi | Eli Collins |
| [HADOOP-6527](https://issues.apache.org/jira/browse/HADOOP-6527) | UserGroupInformation::createUserForTesting clobbers already defined group mappings |  Major | security | Jakob Homan | Ivan Mitic |
| [HADOOP-6496](https://issues.apache.org/jira/browse/HADOOP-6496) | HttpServer sends wrong content-type for CSS files (and others) |  Minor | . | Lars Francke | Ivan Mitic |
| [HDFS-5516](https://issues.apache.org/jira/browse/HDFS-5516) | WebHDFS does not require user name when anonymous http requests are disallowed. |  Major | webhdfs | Chris Nauroth | Miodrag Radulovic |
| [HDFS-5211](https://issues.apache.org/jira/browse/HDFS-5211) | Race condition between DistributedFileSystem#close and FileSystem#close can cause return of a closed DistributedFileSystem instance from the FileSystem cache. |  Major | hdfs-client | Chris Nauroth | Chris Nauroth |
| [HDFS-5003](https://issues.apache.org/jira/browse/HDFS-5003) | TestNNThroughputBenchmark failed caused by existing directories |  Minor | test | Xi Fang | Xi Fang |
| [HDFS-5001](https://issues.apache.org/jira/browse/HDFS-5001) | Branch-1-Win TestAzureBlockPlacementPolicy and TestReplicationPolicyWithNodeGroup failed caused by 1) old APIs and 2) incorrect value of depthOfAllLeaves |  Major | namenode | Xi Fang | Xi Fang |
| [HDFS-4975](https://issues.apache.org/jira/browse/HDFS-4975) | Branch-1-win TestReplicationPolicy failed caused by stale data node handling |  Major | . | Xi Fang | Xi Fang |
| [HDFS-4677](https://issues.apache.org/jira/browse/HDFS-4677) | Editlog should support synchronous writes |  Major | . | Ivan Mitic | Ivan Mitic |
| [HDFS-4341](https://issues.apache.org/jira/browse/HDFS-4341) | TestBalancerWithNodeGroup fails on Windows |  Minor | test | Ivan Mitic | Ivan Mitic |
| [HDFS-4337](https://issues.apache.org/jira/browse/HDFS-4337) | Backport HDFS-4240 to branch-1: Make sure nodes are avoided to place replica if some replica are already under the same nodegroup. |  Major | namenode | Junping Du | meng gong |
| [HDFS-4093](https://issues.apache.org/jira/browse/HDFS-4093) | In branch-1-win, AzureBlockPlacementPolicy#chooseTarget only returns one DN when replication factor is greater than 3. |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-4065](https://issues.apache.org/jira/browse/HDFS-4065) | TestDFSShell.testGet sporadically fails attempting to corrupt block files due to race condition |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-3833](https://issues.apache.org/jira/browse/HDFS-3833) | TestDFSShell fails on Windows due to file concurrent read write |  Major | test | Brandon Li | Brandon Li |
| [HDFS-3766](https://issues.apache.org/jira/browse/HDFS-3766) | Fix TestStorageRestore on Windows |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-3763](https://issues.apache.org/jira/browse/HDFS-3763) | TestNameNodeMXBean fails on Windows |  Major | namenode | Brandon Li | Brandon Li |
| [MAPREDUCE-5808](https://issues.apache.org/jira/browse/MAPREDUCE-5808) | Port output replication factor configurable for terasort to Hadoop 1.x |  Minor | examples | Chuan Liu | Chuan Liu |
| [MAPREDUCE-5512](https://issues.apache.org/jira/browse/MAPREDUCE-5512) | TaskTracker hung after failed reconnect to the JobTracker |  Major | tasktracker | Ivan Mitic | Ivan Mitic |
| [MAPREDUCE-5508](https://issues.apache.org/jira/browse/MAPREDUCE-5508) | JobTracker memory leak caused by unreleased FileSystem objects in JobInProgress#cleanupJob |  Critical | jobtracker | Xi Fang | Xi Fang |
| [MAPREDUCE-5405](https://issues.apache.org/jira/browse/MAPREDUCE-5405) | Job recovery can fail if task log directory symlink from prior run still exists |  Major | mrv1 | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-5391](https://issues.apache.org/jira/browse/MAPREDUCE-5391) | TestNonLocalJobJarSubmission fails on Windows due to missing classpath entries |  Major | test | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-5371](https://issues.apache.org/jira/browse/MAPREDUCE-5371) | TestProxyUserFromEnv#testProxyUserFromEnvironment failed caused by domains of windows users |  Minor | test | Xi Fang | Xi Fang |
| [MAPREDUCE-5351](https://issues.apache.org/jira/browse/MAPREDUCE-5351) | JobTracker memory leak caused by CleanupQueue reopening FileSystem |  Critical | jobtracker | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5330](https://issues.apache.org/jira/browse/MAPREDUCE-5330) | JVM manager should not forcefully kill the process on Signal.TERM on Windows |  Major | . | Xi Fang | Xi Fang |
| [MAPREDUCE-5278](https://issues.apache.org/jira/browse/MAPREDUCE-5278) | Distributed cache is broken when JT staging dir is not on the default FS |  Major | distributed-cache | Xi Fang | Xi Fang |
| [MAPREDUCE-5224](https://issues.apache.org/jira/browse/MAPREDUCE-5224) | JobTracker should allow the system directory to be in non-default FS |  Minor | jobtracker | Xi Fang | Xi Fang |
| [MAPREDUCE-5066](https://issues.apache.org/jira/browse/MAPREDUCE-5066) | JobTracker should set a timeout when calling into job.end.notification.url |  Major | . | Ivan Mitic | Ivan Mitic |
| [MAPREDUCE-4657](https://issues.apache.org/jira/browse/MAPREDUCE-4657) | WindowsResourceCalculatorPlugin has NPE |  Minor | . | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4598](https://issues.apache.org/jira/browse/MAPREDUCE-4598) | Support for node health scripts on Windows |  Major | . | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4597](https://issues.apache.org/jira/browse/MAPREDUCE-4597) | TestKillSubProcesses intermittently fails |  Major | . | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4564](https://issues.apache.org/jira/browse/MAPREDUCE-4564) | Shell timeout mechanism does not work for processes spawned using winutils |  Major | . | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4510](https://issues.apache.org/jira/browse/MAPREDUCE-4510) | Avoid logging "Cannot run program getconf" on Windows |  Major | . | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4374](https://issues.apache.org/jira/browse/MAPREDUCE-4374) | Fix child task environment variable config and add support for Windows |  Minor | mrv2 | Chuan Liu | Chuan Liu |
| [MAPREDUCE-4369](https://issues.apache.org/jira/browse/MAPREDUCE-4369) | Fix streaming job failures with WindowsResourceCalculatorPlugin |  Major | . | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4368](https://issues.apache.org/jira/browse/MAPREDUCE-4368) | TaskRunner fails to start jars when the java.library.path contains a quoted path with embedded spaces |  Major | tasktracker | John Gordon | John Gordon |
| [MAPREDUCE-4322](https://issues.apache.org/jira/browse/MAPREDUCE-4322) | Fix command-line length abort issues on Windows |  Major | tasktracker | John Gordon | Ivan Mitic |
| [MAPREDUCE-4321](https://issues.apache.org/jira/browse/MAPREDUCE-4321) | DefaultTaskController fails to launch tasks on Windows |  Major | . | Ivan Mitic | Ivan Mitic |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9624](https://issues.apache.org/jira/browse/HADOOP-9624) | TestFSMainOperationsLocalFileSystem failed when the Hadoop test root path has "X" in its name |  Minor | test | Xi Fang | Xi Fang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9050](https://issues.apache.org/jira/browse/HADOOP-9050) | Remove java5 dependencies from build |  Major | build | Raja Aluri | Raja Aluri |
| [HADOOP-8874](https://issues.apache.org/jira/browse/HADOOP-8874) | HADOOP\_HOME and -Dhadoop.home (from hadoop wrapper script) are not uniformly handled |  Major | scripts, security | John Gordon |  |
| [HADOOP-8618](https://issues.apache.org/jira/browse/HADOOP-8618) | Windows build failing after 1.0.3 got merged into branch-1-win |  Major | . | Bikas Saha | Bikas Saha |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8949](https://issues.apache.org/jira/browse/HADOOP-8949) | FileUtil.CygPathCommand is dead code on branch-1-win and branch-trunk-win |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-8453](https://issues.apache.org/jira/browse/HADOOP-8453) | Add unit tests for winutils |  Minor | test | Chuan Liu | Chuan Liu |


