
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

## Release 2.8.0 - Unreleased (as of 2015-09-23)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12416](https://issues.apache.org/jira/browse/HADOOP-12416) | Trash messages should be handled by Logger instead of being delivered on System.out |  Major | trash | Ashutosh Chauhan | Mingliang Liu |
| [HADOOP-11772](https://issues.apache.org/jira/browse/HADOOP-11772) | RPC Invoker relies on static ClientCache which has synchronized(this) blocks |  Major | ipc, performance | Gopal V | Haohui Mai |
| [HADOOP-11746](https://issues.apache.org/jira/browse/HADOOP-11746) | rewrite test-patch.sh |  Major | build, test | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11731](https://issues.apache.org/jira/browse/HADOOP-11731) | Rework the changelog and releasenotes |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [HDFS-8900](https://issues.apache.org/jira/browse/HDFS-8900) | Compact XAttrs to optimize memory footprint. |  Major | namenode | Yi Liu | Yi Liu |
| [HDFS-7933](https://issues.apache.org/jira/browse/HDFS-7933) | fsck should also report decommissioning replicas. |  Major | namenode | Jitendra Nath Pandey | Xiaoyu Yao |
| [HDFS-7645](https://issues.apache.org/jira/browse/HDFS-7645) | Rolling upgrade is restoring blocks from trash multiple times |  Major | datanode | Nathan Roberts | Keisuke Ogiwara |
| [HDFS-6564](https://issues.apache.org/jira/browse/HDFS-6564) | Use slf4j instead of common-logging in hdfs-client |  Major | build | Haohui Mai | Rakesh R |
| [MAPREDUCE-6427](https://issues.apache.org/jira/browse/MAPREDUCE-6427) | Fix typo in JobHistoryEventHandler |  Minor | . | Brahma Reddy Battula | Ray Chiang |
| [YARN-3241](https://issues.apache.org/jira/browse/YARN-3241) | FairScheduler handles "invalid" queue names inconsistently |  Major | fairscheduler | zhihai xu | zhihai xu |
| [YARN-2336](https://issues.apache.org/jira/browse/YARN-2336) | Fair scheduler REST api returns a missing '[' bracket JSON for deep queue tree |  Major | fairscheduler | Kenji Kikushima | Akira AJISAKA |
| [YARN-41](https://issues.apache.org/jira/browse/YARN-41) | The RM should handle the graceful shutdown of the NM. |  Major | nodemanager, resourcemanager | Ravi Teja Ch N V | Devaraj K |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12360](https://issues.apache.org/jira/browse/HADOOP-12360) | Create StatsD metrics2 sink |  Minor | metrics | Dave Marion | Dave Marion |
| [HADOOP-11843](https://issues.apache.org/jira/browse/HADOOP-11843) | Make setting up the build environment easier |  Major | build | Niels Basjes | Niels Basjes |
| [HADOOP-10971](https://issues.apache.org/jira/browse/HADOOP-10971) | Add -C flag to make `hadoop fs -ls` print filenames only |  Major | fs | Ryan Williams | Kengo Seki |
| [HADOOP-9477](https://issues.apache.org/jira/browse/HADOOP-9477) | Add posixGroups support for LDAP groups mapping service |  Major | . | Kai Zheng | Dapeng Sun |
| [HADOOP-8934](https://issues.apache.org/jira/browse/HADOOP-8934) | Shell command ls should include sort options |  Minor | fs | Jonathan Allen | Jonathan Allen |
| [HADOOP-5732](https://issues.apache.org/jira/browse/HADOOP-5732) | Add SFTP FileSystem |  Minor | fs | Íñigo Goiri | ramtin |
| [HDFS-8622](https://issues.apache.org/jira/browse/HDFS-8622) | Implement GETCONTENTSUMMARY operation for WebImageViewer |  Major | . | Jagadesh Kiran N | Jagadesh Kiran N |
| [HDFS-8608](https://issues.apache.org/jira/browse/HDFS-8608) | Merge HDFS-7912 to trunk and branch-2 (track BlockInfo instead of Block in UnderReplicatedBlocks and PendingReplicationBlocks) |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8487](https://issues.apache.org/jira/browse/HDFS-8487) | Generalize BlockInfo in preparation of merging HDFS-7285 into trunk and branch-2 |  Major | namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-8155](https://issues.apache.org/jira/browse/HDFS-8155) | Support OAuth2 in WebHDFS |  Major | webhdfs | Jakob Homan | Jakob Homan |
| [HDFS-8009](https://issues.apache.org/jira/browse/HDFS-8009) | Signal congestion on the DataNode |  Major | datanode | Haohui Mai | Haohui Mai |
| [HDFS-8008](https://issues.apache.org/jira/browse/HDFS-8008) | Support client-side back off when the datanodes are congested |  Major | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-7891](https://issues.apache.org/jira/browse/HDFS-7891) | A block placement policy with best rack failure tolerance |  Minor | namenode | Walter Su | Walter Su |
| [MAPREDUCE-6415](https://issues.apache.org/jira/browse/MAPREDUCE-6415) | Create a tool to combine aggregated logs into HAR files |  Major | . | Robert Kanter | Robert Kanter |
| [MAPREDUCE-6364](https://issues.apache.org/jira/browse/MAPREDUCE-6364) | Add a "Kill" link to Task Attempts page |  Minor | applicationmaster | Ryu Kobayashi | Ryu Kobayashi |
| [MAPREDUCE-6304](https://issues.apache.org/jira/browse/MAPREDUCE-6304) | Specifying node labels when submitting MR jobs |  Major | . | Jian Fang | Naganarasimha G R |
| [MAPREDUCE-6284](https://issues.apache.org/jira/browse/MAPREDUCE-6284) | Add Task Attempt State API to MapReduce Application Master REST API |  Minor | . | Ryu Kobayashi | Ryu Kobayashi |
| [YARN-2901](https://issues.apache.org/jira/browse/YARN-2901) | Add errors and warning metrics page to RM, NM web UI |  Major | nodemanager, resourcemanager | Varun Vasudev | Varun Vasudev |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12428](https://issues.apache.org/jira/browse/HADOOP-12428) | Fix inconsistency between log-level guards and statements |  Minor | . | Jackie Chang | Jagadesh Kiran N |
| [HADOOP-12413](https://issues.apache.org/jira/browse/HADOOP-12413) | AccessControlList should avoid calling getGroupNames in isUserInList with empty groups. |  Major | security | zhihai xu | zhihai xu |
| [HADOOP-12404](https://issues.apache.org/jira/browse/HADOOP-12404) | Disable caching for JarURLConnection to avoid sharing JarFile with other users when loading resource from URL in Configuration class. |  Minor | conf | zhihai xu | zhihai xu |
| [HADOOP-12384](https://issues.apache.org/jira/browse/HADOOP-12384) | Add "-direct" flag option for fs copy so that user can choose not to create ".\_COPYING\_" file |  Major | fs | Chen He | J.Andreina |
| [HADOOP-12369](https://issues.apache.org/jira/browse/HADOOP-12369) | Point hadoop-project/pom.xml java.security.krb5.conf within target folder |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-12368](https://issues.apache.org/jira/browse/HADOOP-12368) | Mark ViewFileSystemBaseTest and ViewFsBaseTest as abstract |  Trivial | . | Andrew Wang | Andrew Wang |
| [HADOOP-12367](https://issues.apache.org/jira/browse/HADOOP-12367) | Move TestFileUtil's test resources to resources folder |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-12358](https://issues.apache.org/jira/browse/HADOOP-12358) | Add -safely flag to rm to prompt when deleting many files |  Major | fs | Xiaoyu Yao | Xiaoyu Yao |
| [HADOOP-12325](https://issues.apache.org/jira/browse/HADOOP-12325) | RPC Metrics : Add the ability track and log slow RPCs |  Major | ipc, metrics | Anu Engineer | Anu Engineer |
| [HADOOP-12324](https://issues.apache.org/jira/browse/HADOOP-12324) | Better exception reporting in SaslPlainServer |  Minor | security | Mike Yoder | Mike Yoder |
| [HADOOP-12318](https://issues.apache.org/jira/browse/HADOOP-12318) | Expose underlying LDAP exceptions in SaslPlainServer |  Minor | security | Mike Yoder | Mike Yoder |
| [HADOOP-12295](https://issues.apache.org/jira/browse/HADOOP-12295) | Improve NetworkTopology#InnerNode#remove logic |  Major | . | Yi Liu | Yi Liu |
| [HADOOP-12280](https://issues.apache.org/jira/browse/HADOOP-12280) | Skip unit tests based on maven profile rather than NativeCodeLoader.isNativeCodeLoaded |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-12271](https://issues.apache.org/jira/browse/HADOOP-12271) | Hadoop Jar Error Should Be More Explanatory |  Minor | . | Jesse Anderson | Josh Elser |
| [HADOOP-12259](https://issues.apache.org/jira/browse/HADOOP-12259) | Utility to Dynamic port allocation |  Major | test, util | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-12214](https://issues.apache.org/jira/browse/HADOOP-12214) | Parse 'HadoopArchive' commandline using cli Options. |  Minor | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-12211](https://issues.apache.org/jira/browse/HADOOP-12211) | Collect disks usages on the node |  Major | . | Robert Grandl | Robert Grandl |
| [HADOOP-12210](https://issues.apache.org/jira/browse/HADOOP-12210) | Collect network usage on the node |  Major | . | Robert Grandl | Robert Grandl |
| [HADOOP-12195](https://issues.apache.org/jira/browse/HADOOP-12195) | Add annotation to package-info.java file to workaround MCOMPILER-205 |  Trivial | . | Andrew Wang | Andrew Wang |
| [HADOOP-12194](https://issues.apache.org/jira/browse/HADOOP-12194) | Support for incremental generation in the protoc plugin |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-12193](https://issues.apache.org/jira/browse/HADOOP-12193) | Rename Touchz.java to Touch.java |  Trivial | . | Andrew Wang | Andrew Wang |
| [HADOOP-12189](https://issues.apache.org/jira/browse/HADOOP-12189) | Improve CallQueueManager#swapQueue to make queue elements drop nearly impossible. |  Major | ipc, test | zhihai xu | zhihai xu |
| [HADOOP-12185](https://issues.apache.org/jira/browse/HADOOP-12185) | NetworkTopology is not efficient adding/getting/removing nodes |  Major | . | Inigo Goiri | Inigo Goiri |
| [HADOOP-12183](https://issues.apache.org/jira/browse/HADOOP-12183) | Annotate the HTrace span created by FsShell with the command-line arguments passed by the user |  Minor | tracing | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-12180](https://issues.apache.org/jira/browse/HADOOP-12180) | Move ResourceCalculatorPlugin from YARN to Common |  Major | util | Chris Douglas | Chris Douglas |
| [HADOOP-12172](https://issues.apache.org/jira/browse/HADOOP-12172) | FsShell mkdir -p makes an unnecessary check for the existence of the parent. |  Minor | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-12161](https://issues.apache.org/jira/browse/HADOOP-12161) | Add getStoragePolicy API to the FileSystem interface |  Major | . | Arpit Agarwal | Brahma Reddy Battula |
| [HADOOP-12158](https://issues.apache.org/jira/browse/HADOOP-12158) | Improve error message in TestCryptoStreamsWithOpensslAesCtrCryptoCodec when OpenSSL is not installed |  Trivial | test | Andrew Wang | Andrew Wang |
| [HADOOP-12135](https://issues.apache.org/jira/browse/HADOOP-12135) | cleanup releasedocmaker |  Major | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12081](https://issues.apache.org/jira/browse/HADOOP-12081) | Fix UserGroupInformation.java to support 64-bit zLinux |  Major | security | Adam Roberts | Akira AJISAKA |
| [HADOOP-12059](https://issues.apache.org/jira/browse/HADOOP-12059) | S3Credentials should support use of CredentialProvider |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-12055](https://issues.apache.org/jira/browse/HADOOP-12055) | Deprecate usage of NativeIO#link |  Major | native | Andrew Wang | Andrew Wang |
| [HADOOP-12050](https://issues.apache.org/jira/browse/HADOOP-12050) | Enable MaxInactiveInterval for hadoop http auth token |  Major | security | Benoy Antony | hzlu |
| [HADOOP-12049](https://issues.apache.org/jira/browse/HADOOP-12049) | Control http authentication cookie persistence via configuration |  Major | security | Benoy Antony | hzlu |
| [HADOOP-12045](https://issues.apache.org/jira/browse/HADOOP-12045) | Enable LocalFileSystem#setTimes to change atime |  Minor | fs | Kazuho Fujii | Kazuho Fujii |
| [HADOOP-12043](https://issues.apache.org/jira/browse/HADOOP-12043) | Display warning if defaultFs is not set when running fs commands. |  Minor | fs | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-11995](https://issues.apache.org/jira/browse/HADOOP-11995) | Make jetty version configurable from the maven command line |  Trivial | build, ld | sriharsha devineni | sriharsha devineni |
| [HADOOP-11971](https://issues.apache.org/jira/browse/HADOOP-11971) | Move test utilities for tracing from hadoop-hdfs to hadoop-common |  Minor | tracing | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11970](https://issues.apache.org/jira/browse/HADOOP-11970) | Replace uses of ThreadLocal\<Random\> with JDK7 ThreadLocalRandom |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-11960](https://issues.apache.org/jira/browse/HADOOP-11960) | Enable Azure-Storage Client Side logging. |  Major | tools | Dushyanth | Dushyanth |
| [HADOOP-11950](https://issues.apache.org/jira/browse/HADOOP-11950) | Add cli option to test-patch to set the project-under-test |  Minor | . | Sean Busbey | Sean Busbey |
| [HADOOP-11948](https://issues.apache.org/jira/browse/HADOOP-11948) | test-patch's issue matching regex should be configurable. |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-11939](https://issues.apache.org/jira/browse/HADOOP-11939) | Deprecate DistCpV1 and Logalyzer |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11925](https://issues.apache.org/jira/browse/HADOOP-11925) | backport trunk's smart-apply-patch.sh to branch-2 |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11911](https://issues.apache.org/jira/browse/HADOOP-11911) | test-patch should allow configuration of default branch |  Minor | . | Sean Busbey | Sean Busbey |
| [HADOOP-11894](https://issues.apache.org/jira/browse/HADOOP-11894) | Bump the version of Apache HTrace to 3.2.0-incubating |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11893](https://issues.apache.org/jira/browse/HADOOP-11893) | Mark org.apache.hadoop.security.token.Token as @InterfaceAudience.Public |  Major | security | Steve Loughran | Brahma Reddy Battula |
| [HADOOP-11827](https://issues.apache.org/jira/browse/HADOOP-11827) | Speed-up distcp buildListing() using threadpool |  Major | tools/distcp | Zoran Dimitrijevic | Zoran Dimitrijevic |
| [HADOOP-11813](https://issues.apache.org/jira/browse/HADOOP-11813) | releasedocmaker.py should use today's date instead of unreleased |  Minor | build | Allen Wittenauer | Darrell Taylor |
| [HADOOP-11812](https://issues.apache.org/jira/browse/HADOOP-11812) | Implement listLocatedStatus for ViewFileSystem to speed up split calculation |  Blocker | fs | Gera Shegalov | Gera Shegalov |
| [HADOOP-11807](https://issues.apache.org/jira/browse/HADOOP-11807) | add a lint mode to releasedocmaker |  Minor | build, documentation, yetus | Allen Wittenauer | ramtin |
| [HADOOP-11785](https://issues.apache.org/jira/browse/HADOOP-11785) | Reduce number of listStatus operation in distcp buildListing() |  Minor | tools/distcp | Zoran Dimitrijevic | Zoran Dimitrijevic |
| [HADOOP-11741](https://issues.apache.org/jira/browse/HADOOP-11741) | Add LOG.isDebugEnabled() guard for some LOG.debug() |  Major | . | Walter Su | Walter Su |
| [HADOOP-11737](https://issues.apache.org/jira/browse/HADOOP-11737) | mockito's version in hadoop-nfs’ pom.xml shouldn't be specified |  Minor | nfs | Kengo Seki | Kengo Seki |
| [HADOOP-11719](https://issues.apache.org/jira/browse/HADOOP-11719) | [Fsshell] Remove bin/hadoop reference from GenericOptionsParser default help text |  Minor | scripts | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11717](https://issues.apache.org/jira/browse/HADOOP-11717) | Add Redirecting WebSSO behavior with JWT Token in Hadoop Auth |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-11713](https://issues.apache.org/jira/browse/HADOOP-11713) | ViewFileSystem should support snapshot methods. |  Major | fs | Chris Nauroth | Rakesh R |
| [HADOOP-11711](https://issues.apache.org/jira/browse/HADOOP-11711) | Provide a default value for AES/CTR/NoPadding CryptoCodec classes |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-11709](https://issues.apache.org/jira/browse/HADOOP-11709) | Time.NANOSECONDS\_PER\_MILLISECOND - use class-level final constant instead of method variable |  Trivial | . | Ajith S | Ajith S |
| [HADOOP-11692](https://issues.apache.org/jira/browse/HADOOP-11692) | Improve authentication failure WARN message to avoid user confusion |  Major | ipc | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-11660](https://issues.apache.org/jira/browse/HADOOP-11660) | Add support for hardware crc of HDFS checksums on ARM aarch64 architecture |  Minor | native | Edward Nevill | Edward Nevill |
| [HADOOP-11659](https://issues.apache.org/jira/browse/HADOOP-11659) | o.a.h.fs.FileSystem.Cache#remove should use a single hash map lookup |  Minor | fs | Gera Shegalov | Brahma Reddy Battula |
| [HADOOP-11594](https://issues.apache.org/jira/browse/HADOOP-11594) | Improve the readability of site index of documentation |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11447](https://issues.apache.org/jira/browse/HADOOP-11447) | Add a more meaningful toString method to SampleStat and MutableStat |  Minor | metrics | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-11357](https://issues.apache.org/jira/browse/HADOOP-11357) | Print information of the build enviornment in test-patch.sh |  Minor | scripts | Haohui Mai | Allen Wittenauer |
| [HADOOP-11242](https://issues.apache.org/jira/browse/HADOOP-11242) | Record the time of calling in tracing span of IPC server |  Minor | ipc | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11226](https://issues.apache.org/jira/browse/HADOOP-11226) | Add a configuration to set ipc.Client's traffic class with IPTOS\_LOWDELAY\|IPTOS\_RELIABILITY |  Major | ipc | Gopal V | Gopal V |
| [HADOOP-11103](https://issues.apache.org/jira/browse/HADOOP-11103) | Clean up RemoteException |  Trivial | ipc | Sean Busbey | Sean Busbey |
| [HADOOP-10366](https://issues.apache.org/jira/browse/HADOOP-10366) | Add whitespaces between the classes for values in core-default.xml to fit better in browser |  Minor | documentation | Chengwei Yang | Kanaka Kumar Avvaru |
| [HADOOP-9805](https://issues.apache.org/jira/browse/HADOOP-9805) | Refactor RawLocalFileSystem#rename for improved testability. |  Minor | fs, test | Chris Nauroth | Jean-Pierre Matsumoto |
| [HADOOP-9737](https://issues.apache.org/jira/browse/HADOOP-9737) | JarFinder#getJar should delete the jar file upon destruction of the JVM |  Major | util | Esteban Gutierrez | Jean-Baptiste Onofré |
| [HADOOP-9723](https://issues.apache.org/jira/browse/HADOOP-9723) | Improve error message when hadoop archive output path already exists |  Trivial | . | Stephen Chu | Yongjun Zhang |
| [HADOOP-7713](https://issues.apache.org/jira/browse/HADOOP-7713) | dfs -count -q should label output column |  Trivial | . | Nigel Daley | Jonathan Allen |
| [HADOOP-6842](https://issues.apache.org/jira/browse/HADOOP-6842) | "hadoop fs -text" does not give a useful text representation of MapWritable objects |  Major | io | Steven Wong | Akira AJISAKA |
| [HADOOP-5323](https://issues.apache.org/jira/browse/HADOOP-5323) | Trash documentation should describe its directory structure and configurations |  Minor | documentation | Suman Sehgal | Weiwei Yang |
| [HADOOP-1540](https://issues.apache.org/jira/browse/HADOOP-1540) | Support file exclusion list in distcp |  Minor | util | Senthil Subramanian | Rich Haase |
| [HDFS-9082](https://issues.apache.org/jira/browse/HDFS-9082) | Change the log level in WebHdfsFileSystem.initialize() from INFO to DEBUG |  Minor | webhdfs | Santhosh G Nayak | Santhosh G Nayak |
| [HDFS-9065](https://issues.apache.org/jira/browse/HDFS-9065) | Include commas on # of files, blocks, total filesystem objects in NN Web UI |  Minor | HDFS | Daniel Templeton | Daniel Templeton |
| [HDFS-9021](https://issues.apache.org/jira/browse/HDFS-9021) | Use a yellow elephant rather than a blue one in diagram |  Minor | . | Andrew Wang | Andrew Wang |
| [HDFS-9019](https://issues.apache.org/jira/browse/HDFS-9019) | Adding informative message to sticky bit permission denied exception |  Minor | security | Thejas M Nair | Xiaoyu Yao |
| [HDFS-8983](https://issues.apache.org/jira/browse/HDFS-8983) | NameNode support for protected directories |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8974](https://issues.apache.org/jira/browse/HDFS-8974) | Convert docs in xdoc format to markdown |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-8965](https://issues.apache.org/jira/browse/HDFS-8965) | Harden edit log reading code against out of memory errors |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8953](https://issues.apache.org/jira/browse/HDFS-8953) | DataNode Metrics logging |  Major | . | Kanaka Kumar Avvaru | Kanaka Kumar Avvaru |
| [HDFS-8946](https://issues.apache.org/jira/browse/HDFS-8946) | Improve choosing datanode storage for block placement |  Major | namenode | Yi Liu | Yi Liu |
| [HDFS-8929](https://issues.apache.org/jira/browse/HDFS-8929) | Add a metric to expose the timestamp of the last journal |  Major | journal-node | Akira AJISAKA | Surendra Singh Lilhore |
| [HDFS-8928](https://issues.apache.org/jira/browse/HDFS-8928) | Improvements for BlockUnderConstructionFeature: ReplicaUnderConstruction as a separate class and replicas as an array |  Minor | namenode | Zhe Zhang | Jing Zhao |
| [HDFS-8924](https://issues.apache.org/jira/browse/HDFS-8924) | Add pluggable interface for reading replicas in DFSClient |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8917](https://issues.apache.org/jira/browse/HDFS-8917) | Cleanup BlockInfoUnderConstruction from comments and tests |  Minor | namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-8911](https://issues.apache.org/jira/browse/HDFS-8911) | NameNode Metric : Add Editlog counters as a JMX metric |  Major | HDFS | Anu Engineer | Anu Engineer |
| [HDFS-8887](https://issues.apache.org/jira/browse/HDFS-8887) | Expose storage type and storage ID in BlockLocation |  Major | . | Andrew Wang | Andrew Wang |
| [HDFS-8884](https://issues.apache.org/jira/browse/HDFS-8884) | Fail-fast check in BlockPlacementPolicyDefault#chooseTarget |  Major | . | Yi Liu | Yi Liu |
| [HDFS-8883](https://issues.apache.org/jira/browse/HDFS-8883) | NameNode Metrics : Add FSNameSystem lock Queue Length |  Major | HDFS | Anu Engineer | Anu Engineer |
| [HDFS-8880](https://issues.apache.org/jira/browse/HDFS-8880) | NameNode metrics logging |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8865](https://issues.apache.org/jira/browse/HDFS-8865) | Improve quota initialization performance |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-8860](https://issues.apache.org/jira/browse/HDFS-8860) | Remove unused Replica copyOnWrite code |  Major | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-8829](https://issues.apache.org/jira/browse/HDFS-8829) | Make SO\_RCVBUF and SO\_SNDBUF size configurable for DataTransferProtocol sockets and allow configuring auto-tuning |  Major | datanode | He Tianyi | He Tianyi |
| [HDFS-8828](https://issues.apache.org/jira/browse/HDFS-8828) | Utilize Snapshot diff report to build diff copy list in distcp |  Major | distcp, snapshots | Yufei Gu | Yufei Gu |
| [HDFS-8822](https://issues.apache.org/jira/browse/HDFS-8822) | Add SSD storagepolicy tests in TestBlockStoragePolicy#testDefaultPolicies |  Major | . | Vinayakumar B | Vinayakumar B |
| [HDFS-8821](https://issues.apache.org/jira/browse/HDFS-8821) | Explain message "Operation category X is not supported in state standby" |  Minor | . | Gautam Gopalakrishnan | Gautam Gopalakrishnan |
| [HDFS-8816](https://issues.apache.org/jira/browse/HDFS-8816) | Improve visualization for the Datanode tab in the NN UI |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8815](https://issues.apache.org/jira/browse/HDFS-8815) | DFS getStoragePolicy implementation using single RPC call |  Major | hdfs-client | Arpit Agarwal | Surendra Singh Lilhore |
| [HDFS-8811](https://issues.apache.org/jira/browse/HDFS-8811) | Move BlockStoragePolicy name's constants from HdfsServerConstants.java to HdfsConstants.java |  Major | . | Vinayakumar B | Vinayakumar B |
| [HDFS-8735](https://issues.apache.org/jira/browse/HDFS-8735) | Inotify : All events classes should implement toString() API. |  Major | hdfs-client | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8713](https://issues.apache.org/jira/browse/HDFS-8713) | Convert DatanodeDescriptor to use SLF4J logging |  Trivial | . | Andrew Wang | Andrew Wang |
| [HDFS-8712](https://issues.apache.org/jira/browse/HDFS-8712) | Remove "public" and "abstract" modifiers in FsVolumeSpi and FsDatasetSpi |  Trivial | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-8711](https://issues.apache.org/jira/browse/HDFS-8711) | setSpaceQuota command should print the available storage type when input storage type is wrong |  Major | hdfs-client | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8709](https://issues.apache.org/jira/browse/HDFS-8709) | Clarify automatic sync in FSEditLog#logEdit |  Minor | . | Andrew Wang | Andrew Wang |
| [HDFS-8703](https://issues.apache.org/jira/browse/HDFS-8703) | Merge refactor of DFSInputStream from ErasureCoding branch |  Major | . | Vinayakumar B | Vinayakumar B |
| [HDFS-8653](https://issues.apache.org/jira/browse/HDFS-8653) | Code cleanup for DatanodeManager, DatanodeDescriptor and DatanodeStorageInfo |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8640](https://issues.apache.org/jira/browse/HDFS-8640) | Make reserved RBW space visible through JMX |  Major | . | Kanaka Kumar Avvaru | Kanaka Kumar Avvaru |
| [HDFS-8639](https://issues.apache.org/jira/browse/HDFS-8639) | Option for HTTP port of NameNode by MiniDFSClusterManager |  Minor | test | Kai Sasaki | Kai Sasaki |
| [HDFS-8606](https://issues.apache.org/jira/browse/HDFS-8606) | Cleanup DFSOutputStream by removing unwanted changes |  Minor | hdfs-client | Rakesh R | Rakesh R |
| [HDFS-8605](https://issues.apache.org/jira/browse/HDFS-8605) | Merge Refactor of DFSOutputStream from HDFS-7285 branch |  Major | . | Vinayakumar B | Vinayakumar B |
| [HDFS-8589](https://issues.apache.org/jira/browse/HDFS-8589) | Fix unused imports in BPServiceActor and BlockReportLeaseManager |  Trivial | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8582](https://issues.apache.org/jira/browse/HDFS-8582) | Support getting a list of reconfigurable config properties and do not generate spurious reconfig warnings |  Minor | HDFS | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-8573](https://issues.apache.org/jira/browse/HDFS-8573) | Move creation of restartMeta file logic from BlockReceiver to ReplicaInPipeline |  Major | HDFS | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-8553](https://issues.apache.org/jira/browse/HDFS-8553) | Document hdfs class path options |  Major | documentation | Xiaoyu Yao | Brahma Reddy Battula |
| [HDFS-8549](https://issues.apache.org/jira/browse/HDFS-8549) | Abort the balancer if an upgrade is in progress |  Major | balancer & mover | Andrew Wang | Andrew Wang |
| [HDFS-8546](https://issues.apache.org/jira/browse/HDFS-8546) | Use try with resources in DataStorage and Storage |  Minor | datanode | Andrew Wang | Andrew Wang |
| [HDFS-8535](https://issues.apache.org/jira/browse/HDFS-8535) | Clarify that dfs usage in dfsadmin -report output includes all block replicas. |  Minor | HDFS | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-8532](https://issues.apache.org/jira/browse/HDFS-8532) | Make the visibility of DFSOutputStream#streamer member variable to private |  Trivial | . | Rakesh R | Rakesh R |
| [HDFS-8490](https://issues.apache.org/jira/browse/HDFS-8490) | Typo in trace enabled log in ExceptionHandler of WebHDFS |  Trivial | webhdfs | Jakob Homan | Archana T |
| [HDFS-8462](https://issues.apache.org/jira/browse/HDFS-8462) | Implement GETXATTRS and LISTXATTRS operations for WebImageViewer |  Major | . | Akira AJISAKA | Jagadesh Kiran N |
| [HDFS-8443](https://issues.apache.org/jira/browse/HDFS-8443) | Document dfs.namenode.service.handler.count in hdfs-site.xml |  Major | documentation | Akira AJISAKA | J.Andreina |
| [HDFS-8435](https://issues.apache.org/jira/browse/HDFS-8435) | Support CreateFlag in WebHdfs |  Major | webhdfs | Vinoth Sathappan | Jakob Homan |
| [HDFS-8432](https://issues.apache.org/jira/browse/HDFS-8432) | Introduce a minimum compatible layout version to allow downgrade in more rolling upgrade use cases. |  Major | namenode, rolling upgrades | Chris Nauroth | Chris Nauroth |
| [HDFS-8397](https://issues.apache.org/jira/browse/HDFS-8397) | Refactor the error handling code in DataStreamer |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8394](https://issues.apache.org/jira/browse/HDFS-8394) | Move getAdditionalBlock() and related functionalities into a separate class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8384](https://issues.apache.org/jira/browse/HDFS-8384) | Allow NN to startup if there are files having a lease but are not under construction |  Minor | namenode | Tsz Wo Nicholas Sze | Jing Zhao |
| [HDFS-8357](https://issues.apache.org/jira/browse/HDFS-8357) | Consolidate parameters of INode.CleanSubtree() into a parameter objects. |  Major | . | Haohui Mai | Li Lu |
| [HDFS-8350](https://issues.apache.org/jira/browse/HDFS-8350) | Remove old webhdfs.xml and other outdated documentation stuff |  Major | documentation | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-8327](https://issues.apache.org/jira/browse/HDFS-8327) | Simplify quota calculations for snapshots and truncate |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8284](https://issues.apache.org/jira/browse/HDFS-8284) | Update documentation about how to use HTrace with HDFS |  Major | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-8283](https://issues.apache.org/jira/browse/HDFS-8283) | DataStreamer cleanup and some minor improvement |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8280](https://issues.apache.org/jira/browse/HDFS-8280) | Code Cleanup in DFSInputStream |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-8255](https://issues.apache.org/jira/browse/HDFS-8255) | Rename getBlockReplication to getPreferredBlockReplication |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8215](https://issues.apache.org/jira/browse/HDFS-8215) | Refactor NamenodeFsck#check method |  Minor | namenode | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-8209](https://issues.apache.org/jira/browse/HDFS-8209) | Support different number of datanode directories in MiniDFSCluster. |  Minor | test | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8207](https://issues.apache.org/jira/browse/HDFS-8207) | Improper log message when blockreport interval compared with initial delay |  Minor | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8200](https://issues.apache.org/jira/browse/HDFS-8200) | Refactor FSDirStatAndListingOp |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8180](https://issues.apache.org/jira/browse/HDFS-8180) | AbstractFileSystem Implementation for WebHdfs |  Major | webhdfs | Santhosh G Nayak | Santhosh G Nayak |
| [HDFS-8176](https://issues.apache.org/jira/browse/HDFS-8176) | Record from/to snapshots in audit log for snapshot diff report |  Minor | snapshots | J.Andreina | J.Andreina |
| [HDFS-8152](https://issues.apache.org/jira/browse/HDFS-8152) | Refactoring of lazy persist storage cases |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8144](https://issues.apache.org/jira/browse/HDFS-8144) | Split TestLazyPersistFiles into multiple tests |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8133](https://issues.apache.org/jira/browse/HDFS-8133) | Improve readability of deleted block check |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-8131](https://issues.apache.org/jira/browse/HDFS-8131) | Implement a space balanced block placement policy |  Minor | namenode | Liu Shaohui | Liu Shaohui |
| [HDFS-8117](https://issues.apache.org/jira/browse/HDFS-8117) | More accurate verification in SimulatedFSDataset: replace DEFAULT\_DATABYTE with patterned data |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8116](https://issues.apache.org/jira/browse/HDFS-8116) | Cleanup uncessary if LOG.isDebugEnabled() from RollingWindowManager |  Trivial | namenode | Xiaoyu Yao | Brahma Reddy Battula |
| [HDFS-8108](https://issues.apache.org/jira/browse/HDFS-8108) | Fsck should provide the info on mandatory option to be used along with "-blocks , -locations and -racks" |  Trivial | . | J.Andreina | J.Andreina |
| [HDFS-8101](https://issues.apache.org/jira/browse/HDFS-8101) | DFSClient use of non-constant DFSConfigKeys pulls in WebHDFS classes at runtime |  Minor | hdfs-client | Sean Busbey | Sean Busbey |
| [HDFS-8076](https://issues.apache.org/jira/browse/HDFS-8076) | Code cleanup for DFSInputStream: use offset instead of LocatedBlock when possible |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8073](https://issues.apache.org/jira/browse/HDFS-8073) | Split BlockPlacementPolicyDefault.chooseTarget(..) so it can be easily overrided. |  Trivial | namenode | Walter Su | Walter Su |
| [HDFS-8035](https://issues.apache.org/jira/browse/HDFS-8035) | Move checkBlocksProperlyReplicated() in FSNamesystem to BlockManager |  Minor | namenode | Haohui Mai | Haohui Mai |
| [HDFS-8004](https://issues.apache.org/jira/browse/HDFS-8004) | Use KeyProviderCryptoExtension#warmUpEncryptedKeys when creating an encryption zone |  Trivial | encryption | Andrew Wang | Andrew Wang |
| [HDFS-7979](https://issues.apache.org/jira/browse/HDFS-7979) | Initialize block report IDs with a random number |  Minor | datanode | Andrew Wang | Andrew Wang |
| [HDFS-7978](https://issues.apache.org/jira/browse/HDFS-7978) | Add LOG.isDebugEnabled() guard for some LOG.debug(..) |  Major | . | Walter Su | Walter Su |
| [HDFS-7944](https://issues.apache.org/jira/browse/HDFS-7944) | Minor cleanup of BlockPoolManager#getAllNamenodeThreads |  Minor | . | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7928](https://issues.apache.org/jira/browse/HDFS-7928) | Scanning blocks from disk during rolling upgrade startup takes a lot of time if disks are busy |  Major | datanode | Rushabh S Shah | Rushabh S Shah |
| [HDFS-7890](https://issues.apache.org/jira/browse/HDFS-7890) | Improve information on Top users for metrics in RollingWindowsManager and lower log level |  Major | . | J.Andreina | J.Andreina |
| [HDFS-7888](https://issues.apache.org/jira/browse/HDFS-7888) | Change DataStreamer/DFSOutputStream/DFSPacket for convenience of subclassing |  Minor | hdfs-client | Li Bo | Li Bo |
| [HDFS-7875](https://issues.apache.org/jira/browse/HDFS-7875) | Improve log message when wrong value configured for dfs.datanode.failed.volumes.tolerated |  Trivial | datanode | nijel | nijel |
| [HDFS-7863](https://issues.apache.org/jira/browse/HDFS-7863) | Missing description of some methods and parameters in javadoc of FSDirDeleteOp |  Minor | . | Yongjun Zhang | Brahma Reddy Battula |
| [HDFS-7858](https://issues.apache.org/jira/browse/HDFS-7858) | Improve HA Namenode Failover detection on the client |  Major | hdfs-client | Arun Suresh | Arun Suresh |
| [HDFS-7835](https://issues.apache.org/jira/browse/HDFS-7835) | make initial sleeptime in locateFollowingBlock configurable for DFSClient. |  Major | hdfs-client | zhihai xu | zhihai xu |
| [HDFS-7829](https://issues.apache.org/jira/browse/HDFS-7829) | Code clean up for LocatedBlock |  Minor | . | Jing Zhao | Takanobu Asanuma |
| [HDFS-7793](https://issues.apache.org/jira/browse/HDFS-7793) | Refactor DFSOutputStream separating DataStreamer out |  Major | hdfs-client | Kai Zheng | Li Bo |
| [HDFS-7770](https://issues.apache.org/jira/browse/HDFS-7770) | Need document for storage type label of data node storage locations under dfs.datanode.data.dir |  Major | documentation | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7758](https://issues.apache.org/jira/browse/HDFS-7758) | Retire FsDatasetSpi#getVolumes() and use FsDatasetSpi#getVolumeRefs() instead |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7671](https://issues.apache.org/jira/browse/HDFS-7671) | hdfs user guide should point to the common rack awareness doc |  Major | documentation | Allen Wittenauer | Kai Sasaki |
| [HDFS-7649](https://issues.apache.org/jira/browse/HDFS-7649) | Multihoming docs should emphasize using hostnames in configurations |  Major | documentation | Arpit Agarwal | Brahma Reddy Battula |
| [HDFS-7433](https://issues.apache.org/jira/browse/HDFS-7433) | Optimize performance of DatanodeManager's node map |  Critical | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-7397](https://issues.apache.org/jira/browse/HDFS-7397) | Add more detail to the documentation for the conf key "dfs.client.read.shortcircuit.streams.cache.size" |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Brahma Reddy Battula |
| [HDFS-7314](https://issues.apache.org/jira/browse/HDFS-7314) | When the DFSClient lease cannot be renewed, abort open-for-write files rather than the entire DFSClient |  Major | . | Ming Ma | Ming Ma |
| [HDFS-7116](https://issues.apache.org/jira/browse/HDFS-7116) | Add a command to get the balancer bandwidth |  Major | balancer & mover | Akira AJISAKA | Rakesh R |
| [HDFS-6888](https://issues.apache.org/jira/browse/HDFS-6888) | Allow selectively audit logging ops |  Major | . | Kihwal Lee | Chen He |
| [HDFS-6757](https://issues.apache.org/jira/browse/HDFS-6757) | Simplify lease manager with INodeID |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-6407](https://issues.apache.org/jira/browse/HDFS-6407) | Add sorting and pagination in the datanode tab of the NN Web UI |  Critical | namenode | Nathan Roberts | Haohui Mai |
| [HDFS-6184](https://issues.apache.org/jira/browse/HDFS-6184) | Capture NN's thread dump when it fails over |  Major | namenode | Ming Ma | Ming Ma |
| [HDFS-5640](https://issues.apache.org/jira/browse/HDFS-5640) | Add snapshot methods to FileContext. |  Major | hdfs-client, snapshots | Chris Nauroth | Rakesh R |
| [HDFS-5574](https://issues.apache.org/jira/browse/HDFS-5574) | Remove buffer copy in BlockReader.skip |  Trivial | . | Binglin Chang | Binglin Chang |
| [HDFS-4396](https://issues.apache.org/jira/browse/HDFS-4396) | Add START\_MSG/SHUTDOWN\_MSG for ZKFC |  Major | auto-failover, ha, tools | Liang Xie | Liang Xie |
| [HDFS-4383](https://issues.apache.org/jira/browse/HDFS-4383) | Document the lease limits |  Minor | . | Eli Collins | Arshad Mohammad |
| [HDFS-4185](https://issues.apache.org/jira/browse/HDFS-4185) | Add a metric for number of active leases |  Major | namenode | Kihwal Lee | Rakesh R |
| [HDFS-3918](https://issues.apache.org/jira/browse/HDFS-3918) | EditLogTailer shouldn't log WARN when other node is in standby mode |  Major | ha | Todd Lipcon | Todd Lipcon |
| [HDFS-2390](https://issues.apache.org/jira/browse/HDFS-2390) | dfsadmin -setBalancerBandwidth doesnot validate -ve value |  Minor | balancer & mover | Rajit Saha | Gautam Gopalakrishnan |
| [HDFS-2360](https://issues.apache.org/jira/browse/HDFS-2360) | Ugly stacktrace when quota exceeds |  Minor | hdfs-client | Rajit Saha | Harsh J |
| [HDFS-328](https://issues.apache.org/jira/browse/HDFS-328) | Improve fs -setrep error message for invalid replication factors |  Major | namenode | Tsz Wo Nicholas Sze | Daniel Templeton |
| [MAPREDUCE-6478](https://issues.apache.org/jira/browse/MAPREDUCE-6478) | Add an option to skip cleanupJob stage or ignore cleanup failure during commitJob(). |  Major | . | Junping Du | Junping Du |
| [MAPREDUCE-6443](https://issues.apache.org/jira/browse/MAPREDUCE-6443) | Add JvmPauseMonitor to Job History Server |  Major | jobhistoryserver | Robert Kanter | Robert Kanter |
| [MAPREDUCE-6408](https://issues.apache.org/jira/browse/MAPREDUCE-6408) | Queue name and user name should be printed on the job page |  Major | applicationmaster | Siqi Li | Siqi Li |
| [MAPREDUCE-6395](https://issues.apache.org/jira/browse/MAPREDUCE-6395) | Improve the commit failure messages in MRAppMaster recovery |  Major | applicationmaster | Gera Shegalov | Brahma Reddy Battula |
| [MAPREDUCE-6392](https://issues.apache.org/jira/browse/MAPREDUCE-6392) | Document mapred class path options |  Major | documentation | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6384](https://issues.apache.org/jira/browse/MAPREDUCE-6384) | Add the last reporting reducer info for too many fetch failure diagnostics |  Major | . | Chang Li | Chang Li |
| [MAPREDUCE-6383](https://issues.apache.org/jira/browse/MAPREDUCE-6383) | Pi job (QuasiMonteCarlo) should not try to read the results file if its job fails |  Major | examples | Harsh J | Harsh J |
| [MAPREDUCE-6354](https://issues.apache.org/jira/browse/MAPREDUCE-6354) | ShuffleHandler should be able to log shuffle connections |  Major | . | Chang Li | Chang Li |
| [MAPREDUCE-6316](https://issues.apache.org/jira/browse/MAPREDUCE-6316) | Task Attempt List entries should link to the task overview |  Major | . | Siqi Li | Siqi Li |
| [MAPREDUCE-6307](https://issues.apache.org/jira/browse/MAPREDUCE-6307) | Remove property mapreduce.tasktracker.taskmemorymanager.monitoringinterval |  Minor | . | Akira AJISAKA | J.Andreina |
| [MAPREDUCE-6305](https://issues.apache.org/jira/browse/MAPREDUCE-6305) | AM/Task log page should be able to link back to the job |  Major | . | Siqi Li | Siqi Li |
| [MAPREDUCE-6297](https://issues.apache.org/jira/browse/MAPREDUCE-6297) | Task Id of the failed task in diagnostics should link to the task page |  Minor | jobhistoryserver | Siqi Li | Siqi Li |
| [MAPREDUCE-6291](https://issues.apache.org/jira/browse/MAPREDUCE-6291) | Correct mapred queue usage command |  Minor | client | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6287](https://issues.apache.org/jira/browse/MAPREDUCE-6287) | Deprecated methods in org.apache.hadoop.examples.Sort |  Minor | examples | Chao Zhang | Chao Zhang |
| [MAPREDUCE-6282](https://issues.apache.org/jira/browse/MAPREDUCE-6282) | Reuse historyFileAbsolute.getFileSystem in CompletedJob#loadFullHistoryData for code optimization. |  Trivial | jobhistoryserver | zhihai xu | zhihai xu |
| [MAPREDUCE-6279](https://issues.apache.org/jira/browse/MAPREDUCE-6279) | AM should explicity exit JVM after all services have stopped |  Major | . | Jason Lowe | Eric Payne |
| [MAPREDUCE-6239](https://issues.apache.org/jira/browse/MAPREDUCE-6239) | Consolidate TestJobConf classes in hadoop-mapreduce-client-jobclient and hadoop-mapreduce-client-core |  Minor | client | Varun Saxena | Varun Saxena |
| [MAPREDUCE-6192](https://issues.apache.org/jira/browse/MAPREDUCE-6192) | Create unit test to automatically compare MR related classes and mapred-default.xml |  Minor | . | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6174](https://issues.apache.org/jira/browse/MAPREDUCE-6174) | Combine common stream code into parent class for InMemoryMapOutput and OnDiskMapOutput. |  Major | mrv2 | Eric Payne | Eric Payne |
| [MAPREDUCE-6105](https://issues.apache.org/jira/browse/MAPREDUCE-6105) | Inconsistent configuration in property mapreduce.reduce.shuffle.merge.percent |  Trivial | . | Dongwook Kwon | Ray Chiang |
| [MAPREDUCE-6100](https://issues.apache.org/jira/browse/MAPREDUCE-6100) | replace "mapreduce.job.credentials.binary" with MRJobConfig.MAPREDUCE\_JOB\_CREDENTIALS\_BINARY for better readability. |  Trivial | mrv2 | zhihai xu | zhihai xu |
| [MAPREDUCE-6079](https://issues.apache.org/jira/browse/MAPREDUCE-6079) | Rename JobImpl#username to reporterUserName |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [MAPREDUCE-5981](https://issues.apache.org/jira/browse/MAPREDUCE-5981) | Log levels of certain MR logs can be changed to DEBUG |  Major | . | Varun Saxena | Varun Saxena |
| [MAPREDUCE-5762](https://issues.apache.org/jira/browse/MAPREDUCE-5762) | Port MAPREDUCE-3223 and MAPREDUCE-4695 (Remove MRv1 config from mapred-default.xml) to branch-2 |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5755](https://issues.apache.org/jira/browse/MAPREDUCE-5755) | MapTask.MapOutputBuffer#compare/swap should have @Override annotation |  Trivial | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [MAPREDUCE-5465](https://issues.apache.org/jira/browse/MAPREDUCE-5465) | Tasks are often killed before they exit on their own |  Major | mr-am, mrv2 | Radim Kolar | Ming Ma |
| [MAPREDUCE-5248](https://issues.apache.org/jira/browse/MAPREDUCE-5248) | Let NNBenchWithoutMR specify the replication factor for its test |  Minor | client, test | Erik Paulson | Erik Paulson |
| [MAPREDUCE-5232](https://issues.apache.org/jira/browse/MAPREDUCE-5232) | log classpath and other key properties on child JVM start |  Major | mrv1, mrv2 | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-5190](https://issues.apache.org/jira/browse/MAPREDUCE-5190) | Unnecessary condition test in RandomSampler |  Minor | mrv2 | Jingguo Yao | Jingguo Yao |
| [MAPREDUCE-4653](https://issues.apache.org/jira/browse/MAPREDUCE-4653) | TestRandomAlgorithm has an unused "import" statement |  Trivial | contrib/gridmix | Amir Sanjar | Amir Sanjar |
| [MAPREDUCE-4414](https://issues.apache.org/jira/browse/MAPREDUCE-4414) | Add main methods to JobConf and YarnConfiguration, for debug purposes |  Major | client | Harsh J | Plamen Jeliazkov |
| [MAPREDUCE-579](https://issues.apache.org/jira/browse/MAPREDUCE-579) | Streaming "slowmatch" documentation |  Trivial | contrib/streaming | Bo Adler | Harsh J |
| [YARN-4149](https://issues.apache.org/jira/browse/YARN-4149) | yarn logs -am should provide an option to fetch all the log files |  Major | client, nodemanager | Varun Vasudev | Varun Vasudev |
| [YARN-4145](https://issues.apache.org/jira/browse/YARN-4145) | Make RMHATestBase abstract so its not run when running all tests under that namespace |  Minor | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-4135](https://issues.apache.org/jira/browse/YARN-4135) | Improve the assertion message in MockRM while failing after waiting for the state. |  Trivial | . | nijel | nijel |
| [YARN-4086](https://issues.apache.org/jira/browse/YARN-4086) | Allow Aggregated Log readers to handle HAR files |  Major | . | Robert Kanter | Robert Kanter |
| [YARN-4057](https://issues.apache.org/jira/browse/YARN-4057) | If ContainersMonitor is not enabled, only print related log info one time |  Minor | nodemanager | Jun Gong | Jun Gong |
| [YARN-4055](https://issues.apache.org/jira/browse/YARN-4055) | Report node resource utilization in heartbeat |  Major | nodemanager | Inigo Goiri | Inigo Goiri |
| [YARN-4024](https://issues.apache.org/jira/browse/YARN-4024) | YARN RM should avoid unnecessary resolving IP when NMs doing heartbeat |  Major | resourcemanager | Wangda Tan | Hong Zhiguo |
| [YARN-4019](https://issues.apache.org/jira/browse/YARN-4019) | Add JvmPauseMonitor to ResourceManager and NodeManager |  Major | nodemanager, resourcemanager | Robert Kanter | Robert Kanter |
| [YARN-3978](https://issues.apache.org/jira/browse/YARN-3978) | Configurably turn off the saving of container info in Generic AHS |  Major | timelineserver, yarn | Eric Payne | Eric Payne |
| [YARN-3965](https://issues.apache.org/jira/browse/YARN-3965) | Add startup timestamp to nodemanager UI |  Minor | nodemanager | Hong Zhiguo | Hong Zhiguo |
| [YARN-3961](https://issues.apache.org/jira/browse/YARN-3961) | Expose pending, running and reserved containers of a queue in REST api and yarn top |  Major | capacityscheduler, fairscheduler, webapp | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3950](https://issues.apache.org/jira/browse/YARN-3950) | Add unique YARN\_SHELL\_ID environment variable to DistributedShell |  Major | applications/distributed-shell | Robert Kanter | Robert Kanter |
| [YARN-3834](https://issues.apache.org/jira/browse/YARN-3834) | Scrub debug logging of tokens during resource localization. |  Major | nodemanager | Chris Nauroth | Chris Nauroth |
| [YARN-3789](https://issues.apache.org/jira/browse/YARN-3789) | Improve logs for LeafQueue#activateApplications() |  Minor | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3786](https://issues.apache.org/jira/browse/YARN-3786) | Document yarn class path options |  Major | documentation | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-3722](https://issues.apache.org/jira/browse/YARN-3722) | Merge multiple TestWebAppUtils into o.a.h.yarn.webapp.util.TestWebAppUtils |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-3713](https://issues.apache.org/jira/browse/YARN-3713) | Remove duplicate function call storeContainerDiagnostics in ContainerDiagnosticsUpdateTransition |  Minor | nodemanager | zhihai xu | zhihai xu |
| [YARN-3613](https://issues.apache.org/jira/browse/YARN-3613) | TestContainerManagerSecurity should init and start Yarn cluster in setup instead of individual methods |  Minor | test | Karthik Kambatla | nijel |
| [YARN-3547](https://issues.apache.org/jira/browse/YARN-3547) | FairScheduler: Apps that have no resource demand should not participate scheduling |  Major | fairscheduler | Xianyin Xin | Xianyin Xin |
| [YARN-3513](https://issues.apache.org/jira/browse/YARN-3513) | Remove unused variables in ContainersMonitorImpl and add debug log for overall resource usage by all containers |  Trivial | nodemanager | Naganarasimha G R | Naganarasimha G R |
| [YARN-3511](https://issues.apache.org/jira/browse/YARN-3511) | Add errors and warnings page to ATS |  Major | timelineserver | Varun Vasudev | Varun Vasudev |
| [YARN-3503](https://issues.apache.org/jira/browse/YARN-3503) | Expose disk utilization percentage and bad local and log dir counts on NM via JMX |  Major | nodemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3494](https://issues.apache.org/jira/browse/YARN-3494) | Expose AM resource limit and usage in QueueMetrics |  Major | . | Jian He | Rohith Sharma K S |
| [YARN-3491](https://issues.apache.org/jira/browse/YARN-3491) | PublicLocalizer#addResource is too slow. |  Critical | nodemanager | zhihai xu | zhihai xu |
| [YARN-3467](https://issues.apache.org/jira/browse/YARN-3467) | Expose allocatedMB, allocatedVCores, and runningContainers metrics on running Applications in RM Web UI |  Minor | webapp, yarn | Anthony Rojas | Anubhav Dhoot |
| [YARN-3451](https://issues.apache.org/jira/browse/YARN-3451) | Add start time and Elapsed in ApplicationAttemptReport and display the same in RMAttemptBlock WebUI |  Major | api, webapp | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-3428](https://issues.apache.org/jira/browse/YARN-3428) | Debug log resources to be localized for a container |  Trivial | nodemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-3424](https://issues.apache.org/jira/browse/YARN-3424) | Change logs for ContainerMonitorImpl's resourse monitoring from info to debug |  Major | nodemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3412](https://issues.apache.org/jira/browse/YARN-3412) | RM tests should use MockRM where possible |  Major | resourcemanager, test | Karthik Kambatla | Karthik Kambatla |
| [YARN-3410](https://issues.apache.org/jira/browse/YARN-3410) | YARN admin should be able to remove individual application records from RMStateStore |  Critical | resourcemanager, yarn | Wangda Tan | Rohith Sharma K S |
| [YARN-3406](https://issues.apache.org/jira/browse/YARN-3406) | Display count of running containers in the RM's Web UI |  Minor | . | Ryu Kobayashi | Ryu Kobayashi |
| [YARN-3404](https://issues.apache.org/jira/browse/YARN-3404) | View the queue name to YARN Application page |  Minor | . | Ryu Kobayashi | Ryu Kobayashi |
| [YARN-3381](https://issues.apache.org/jira/browse/YARN-3381) | Fix typo InvalidStateTransitonException |  Minor | api | Xiaoshuang LU | Brahma Reddy Battula |
| [YARN-3363](https://issues.apache.org/jira/browse/YARN-3363) | add localization and container launch time to ContainerMetrics at NM to show these timing information for each active container. |  Major | nodemanager | zhihai xu | zhihai xu |
| [YARN-3360](https://issues.apache.org/jira/browse/YARN-3360) | Add JMX metrics to TimelineDataManager |  Major | timelineserver | Jason Lowe | Jason Lowe |
| [YARN-3350](https://issues.apache.org/jira/browse/YARN-3350) | YARN RackResolver spams logs with messages at info level |  Major | . | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-3348](https://issues.apache.org/jira/browse/YARN-3348) | Add a 'yarn top' tool to help understand cluster usage |  Major | resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3294](https://issues.apache.org/jira/browse/YARN-3294) | Allow dumping of Capacity Scheduler debug logs via web UI for a fixed time period |  Major | capacityscheduler | Varun Vasudev | Varun Vasudev |
| [YARN-3293](https://issues.apache.org/jira/browse/YARN-3293) | Track and display capacity scheduler health metrics in web UI |  Major | capacityscheduler | Varun Vasudev | Varun Vasudev |
| [YARN-3271](https://issues.apache.org/jira/browse/YARN-3271) | FairScheduler: Move tests related to max-runnable-apps from TestFairScheduler to TestAppRunnability |  Major | . | Karthik Kambatla | nijel |
| [YARN-3259](https://issues.apache.org/jira/browse/YARN-3259) | FairScheduler: Trigger fairShare updates on node events |  Major | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3258](https://issues.apache.org/jira/browse/YARN-3258) | FairScheduler: Need to add more logging to investigate allocations |  Minor | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3248](https://issues.apache.org/jira/browse/YARN-3248) | Display count of nodes blacklisted by apps in the web UI |  Major | capacityscheduler, resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3174](https://issues.apache.org/jira/browse/YARN-3174) | Consolidate the NodeManager and NodeManagerRestart documentation into one |  Major | documentation | Allen Wittenauer | Masatake Iwasaki |
| [YARN-3169](https://issues.apache.org/jira/browse/YARN-3169) | Drop YARN's overview document |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [YARN-3148](https://issues.apache.org/jira/browse/YARN-3148) | Allow CORS related headers to passthrough in WebAppProxyServlet |  Major | . | Prakash Ramachandran | Varun Saxena |
| [YARN-3069](https://issues.apache.org/jira/browse/YARN-3069) | Document missing properties in yarn-default.xml |  Major | documentation | Ray Chiang | Ray Chiang |
| [YARN-2980](https://issues.apache.org/jira/browse/YARN-2980) | Move health check script related functionality to hadoop-common |  Blocker | . | Ming Ma | Varun Saxena |
| [YARN-2921](https://issues.apache.org/jira/browse/YARN-2921) | Fix MockRM/MockAM#waitForState sleep too long |  Major | test | Karthik Kambatla | Tsuyoshi Ozawa |
| [YARN-2868](https://issues.apache.org/jira/browse/YARN-2868) | FairScheduler: Metric for latency to allocate first container for an application |  Major | . | Ray Chiang | Ray Chiang |
| [YARN-2784](https://issues.apache.org/jira/browse/YARN-2784) | Make POM project names consistent |  Minor | build | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-2768](https://issues.apache.org/jira/browse/YARN-2768) | Avoid cloning Resource in FSAppAttempt#updateDemand |  Minor | fairscheduler | Hong Zhiguo | Hong Zhiguo |
| [YARN-2716](https://issues.apache.org/jira/browse/YARN-2716) | Refactor ZKRMStateStore retry code with Apache Curator |  Major | . | Jian He | Karthik Kambatla |
| [YARN-2206](https://issues.apache.org/jira/browse/YARN-2206) | Update document for applications REST API response examples |  Minor | documentation | Kenji Kikushima | Brahma Reddy Battula |
| [YARN-2005](https://issues.apache.org/jira/browse/YARN-2005) | Blacklisting support for scheduling AMs |  Major | resourcemanager | Jason Lowe | Anubhav Dhoot |
| [YARN-1287](https://issues.apache.org/jira/browse/YARN-1287) | Consolidate MockClocks |  Major | . | Sandy Ryza | Sebastian Wong |
| [YARN-1050](https://issues.apache.org/jira/browse/YARN-1050) | Document the Fair Scheduler REST API |  Major | documentation, fairscheduler | Sandy Ryza | Kenji Kikushima |
| [YARN-160](https://issues.apache.org/jira/browse/YARN-160) | nodemanagers should obtain cpu/memory values from underlying OS |  Major | nodemanager | Alejandro Abdelnur | Varun Vasudev |
| [YARN-20](https://issues.apache.org/jira/browse/YARN-20) | More information for "yarn.resourcemanager.webapp.address" in yarn-default.xml |  Trivial | documentation, resourcemanager | Nemon Lou | Bartosz Ługowski |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12417](https://issues.apache.org/jira/browse/HADOOP-12417) | TestWebDelegationToken failing with port in use |  Major | test | Steve Loughran | Mingliang Liu |
| [HADOOP-12407](https://issues.apache.org/jira/browse/HADOOP-12407) | Test failing: hadoop.ipc.TestSaslRPC |  Critical | security, test | Steve Loughran | Steve Loughran |
| [HADOOP-12388](https://issues.apache.org/jira/browse/HADOOP-12388) | Fix components' version information in the web page 'About the Cluster' |  Minor | util | Jun Gong | Jun Gong |
| [HADOOP-12386](https://issues.apache.org/jira/browse/HADOOP-12386) | RetryPolicies.RETRY\_FOREVER should be able to specify a retry interval |  Major | . | Wangda Tan | Sunil G |
| [HADOOP-12362](https://issues.apache.org/jira/browse/HADOOP-12362) | Set hadoop.tmp.dir and hadoop.log.dir in pom |  Major | . | Charlie Helin | Charlie Helin |
| [HADOOP-12352](https://issues.apache.org/jira/browse/HADOOP-12352) | Delay in checkpointing Trash can leave trash for 2 intervals before deleting |  Trivial | trash | Casey Brotherton | Casey Brotherton |
| [HADOOP-12348](https://issues.apache.org/jira/browse/HADOOP-12348) | MetricsSystemImpl creates MetricsSourceAdapter with wrong time unit parameter. |  Major | metrics | zhihai xu | zhihai xu |
| [HADOOP-12347](https://issues.apache.org/jira/browse/HADOOP-12347) | Fix mismatch parameter name in javadocs of AuthToken#setMaxInactives |  Trivial | . | Xiaoyu Yao | Xiaoyu Yao |
| [HADOOP-12346](https://issues.apache.org/jira/browse/HADOOP-12346) | Increase some default timeouts / retries for S3a connector |  Major | fs/s3 | Sean Mackrory | Sean Mackrory |
| [HADOOP-12322](https://issues.apache.org/jira/browse/HADOOP-12322) | typos in rpcmetrics.java |  Trivial | ipc | Anu Engineer | Anu Engineer |
| [HADOOP-12317](https://issues.apache.org/jira/browse/HADOOP-12317) | Applications fail on NM restart on some linux distro because NM container recovery declares AM container as LOST |  Critical | . | Anubhav Dhoot | Anubhav Dhoot |
| [HADOOP-12302](https://issues.apache.org/jira/browse/HADOOP-12302) | Fix native compilation on Windows after HADOOP-7824 |  Blocker | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-12274](https://issues.apache.org/jira/browse/HADOOP-12274) | Remove direct download link from BUILDING.txt |  Minor | documentation | Caleb Severn | Caleb Severn |
| [HADOOP-12268](https://issues.apache.org/jira/browse/HADOOP-12268) | AbstractContractAppendTest#testRenameFileBeingAppended misses rename operation. |  Major | test | zhihai xu | zhihai xu |
| [HADOOP-12258](https://issues.apache.org/jira/browse/HADOOP-12258) | Need translate java.nio.file.NoSuchFileException to FileNotFoundException to avoid regression |  Critical | fs | zhihai xu | zhihai xu |
| [HADOOP-12245](https://issues.apache.org/jira/browse/HADOOP-12245) | References to misspelled REMAINING\_QUATA in FileSystemShell.md |  Minor | documentation | Gera Shegalov | Gabor Liptak |
| [HADOOP-12240](https://issues.apache.org/jira/browse/HADOOP-12240) | Fix tests requiring native library to be skipped in non-native profile |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-12239](https://issues.apache.org/jira/browse/HADOOP-12239) | StorageException complaining " no lease ID" when updating FolderLastModifiedTime in WASB |  Major | azure, tools | Duo Xu | Duo Xu |
| [HADOOP-12237](https://issues.apache.org/jira/browse/HADOOP-12237) | releasedocmaker.py doesn't work behind a proxy |  Major | yetus | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HADOOP-12235](https://issues.apache.org/jira/browse/HADOOP-12235) | hadoop-openstack junit & mockito dependencies should be "provided" |  Minor | build, fs/swift | Steve Loughran | Ted Yu |
| [HADOOP-12209](https://issues.apache.org/jira/browse/HADOOP-12209) | Comparable type should be in FileStatus |  Minor | fs | Yong Zhang | Yong Zhang |
| [HADOOP-12202](https://issues.apache.org/jira/browse/HADOOP-12202) | releasedocmaker drops missing component and assignee entries |  Blocker | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12201](https://issues.apache.org/jira/browse/HADOOP-12201) | Add tracing to FileSystem#createFileSystem and Globber#glob |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-12200](https://issues.apache.org/jira/browse/HADOOP-12200) | TestCryptoStreamsWithOpensslAesCtrCryptoCodec should be skipped in non-native profile |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-12175](https://issues.apache.org/jira/browse/HADOOP-12175) | FsShell must load SpanReceiverHost to support tracing |  Major | tracing | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-12173](https://issues.apache.org/jira/browse/HADOOP-12173) | NetworkTopology#add calls NetworkTopology#toString always |  Major | . | Inigo Goiri | Inigo Goiri |
| [HADOOP-12171](https://issues.apache.org/jira/browse/HADOOP-12171) | Shorten overly-long htrace span names for server |  Major | tracing | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-12164](https://issues.apache.org/jira/browse/HADOOP-12164) | Fix TestMove and TestFsShellReturnCode failed to get command name using reflection. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-12159](https://issues.apache.org/jira/browse/HADOOP-12159) | Move DistCpUtils#compareFs() to org.apache.hadoop.fs.FileUtil and fix for HA namespaces |  Major | . | Ray Chiang | Ray Chiang |
| [HADOOP-12154](https://issues.apache.org/jira/browse/HADOOP-12154) | FileSystem#getUsed() returns the file length only from root '/' |  Major | . | tongshiquan | J.Andreina |
| [HADOOP-12153](https://issues.apache.org/jira/browse/HADOOP-12153) | ByteBufferReadable doesn't declare @InterfaceAudience and @InterfaceStability |  Minor | fs | Steve Loughran | Brahma Reddy Battula |
| [HADOOP-12124](https://issues.apache.org/jira/browse/HADOOP-12124) | Add HTrace support for FsShell |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-12119](https://issues.apache.org/jira/browse/HADOOP-12119) | hadoop fs -expunge does not work for federated namespace |  Major | . | Vrushali C | J.Andreina |
| [HADOOP-12117](https://issues.apache.org/jira/browse/HADOOP-12117) | Potential NPE from Configuration#loadProperty with allowNullValueProperties set. |  Minor | conf | zhihai xu | zhihai xu |
| [HADOOP-12116](https://issues.apache.org/jira/browse/HADOOP-12116) | Fix unrecommended syntax usages in hadoop/hdfs/yarn script for cygwin in branch-2 |  Major | scripts | Li Lu | Li Lu |
| [HADOOP-12107](https://issues.apache.org/jira/browse/HADOOP-12107) | long running apps may have a huge number of StatisticsData instances under FileSystem |  Critical | fs | Sangjin Lee | Sangjin Lee |
| [HADOOP-12095](https://issues.apache.org/jira/browse/HADOOP-12095) | org.apache.hadoop.fs.shell.TestCount fails |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-12089](https://issues.apache.org/jira/browse/HADOOP-12089) | StorageException complaining " no lease ID" when updating FolderLastModifiedTime in WASB |  Major | tools | Duo Xu | Duo Xu |
| [HADOOP-12088](https://issues.apache.org/jira/browse/HADOOP-12088) | KMSClientProvider uses equalsIgnoreCase("application/json") |  Major | kms | Steve Loughran | Brahma Reddy Battula |
| [HADOOP-12087](https://issues.apache.org/jira/browse/HADOOP-12087) | [JDK8] Fix javadoc errors caused by incorrect or illegal tags |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-12076](https://issues.apache.org/jira/browse/HADOOP-12076) | Incomplete Cache Mechanism in CredentialProvider API |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-12074](https://issues.apache.org/jira/browse/HADOOP-12074) | in Shell.java#runCommand() rethrow InterruptedException as InterruptedIOException |  Trivial | . | Lavkesh Lahngir | Lavkesh Lahngir |
| [HADOOP-12073](https://issues.apache.org/jira/browse/HADOOP-12073) | Azure FileSystem PageBlobInputStream does not return -1 on EOF |  Major | tools | Ivan Mitic | Ivan Mitic |
| [HADOOP-12058](https://issues.apache.org/jira/browse/HADOOP-12058) | Fix dead links to DistCp and Hadoop Archives pages. |  Minor | documentation, site | Kazuho Fujii | Kazuho Fujii |
| [HADOOP-12056](https://issues.apache.org/jira/browse/HADOOP-12056) | Use DirectoryStream in DiskChecker#checkDirs to detect errors when listing a directory |  Major | util | zhihai xu | zhihai xu |
| [HADOOP-12054](https://issues.apache.org/jira/browse/HADOOP-12054) | RPC client should not retry for InvalidToken exceptions |  Critical | ipc | Daryn Sharp | Varun Saxena |
| [HADOOP-12052](https://issues.apache.org/jira/browse/HADOOP-12052) | IPC client downgrades all exception types to IOE, breaks callers trying to use them |  Critical | . | Steve Loughran | Brahma Reddy Battula |
| [HADOOP-12051](https://issues.apache.org/jira/browse/HADOOP-12051) | ProtobufRpcEngine.invoke() should use Exception.toString() over getMessage in logging/span events |  Minor | ipc | Steve Loughran | Varun Saxena |
| [HADOOP-12042](https://issues.apache.org/jira/browse/HADOOP-12042) | Users may see TrashPolicy if hdfs dfs -rm is run |  Major | . | Allen Wittenauer | J.Andreina |
| [HADOOP-12037](https://issues.apache.org/jira/browse/HADOOP-12037) | Fix wrong classname in example configuration of hadoop-auth documentation |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-12019](https://issues.apache.org/jira/browse/HADOOP-12019) | update BUILDING.txt to include python for 'mvn site' in windows |  Major | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-12018](https://issues.apache.org/jira/browse/HADOOP-12018) | smart-apply-patch.sh fails if the patch edits CR+LF files and is created by 'git diff --no-prefix' |  Minor | build | Akira AJISAKA | Kengo Seki |
| [HADOOP-12017](https://issues.apache.org/jira/browse/HADOOP-12017) | Hadoop archives command should use configurable replication factor when closing |  Major | . | Zhe Zhang | Bibin A Chundatt |
| [HADOOP-12014](https://issues.apache.org/jira/browse/HADOOP-12014) | hadoop-config.cmd displays a wrong error message |  Minor | scripts | Kengo Seki | Kengo Seki |
| [HADOOP-12004](https://issues.apache.org/jira/browse/HADOOP-12004) | test-patch breaks with reexec in certain situations |  Critical | . | Allen Wittenauer | Sean Busbey |
| [HADOOP-12001](https://issues.apache.org/jira/browse/HADOOP-12001) | Limiting LDAP search conflicts with posixGroup addition |  Blocker | security | Patrick White | Patrick White |
| [HADOOP-11994](https://issues.apache.org/jira/browse/HADOOP-11994) | smart-apply-patch wrongly assumes that git is infallible |  Major | test | Allen Wittenauer | Kengo Seki |
| [HADOOP-11991](https://issues.apache.org/jira/browse/HADOOP-11991) | test-patch.sh isn't re-executed even if smart-apply-patch.sh is modified |  Major | test | Kengo Seki | Kengo Seki |
| [HADOOP-11988](https://issues.apache.org/jira/browse/HADOOP-11988) | Fix typo in the document for hadoop fs -find |  Trivial | documentation | Akira AJISAKA | Kengo Seki |
| [HADOOP-11969](https://issues.apache.org/jira/browse/HADOOP-11969) | ThreadLocal initialization in several classes is not thread safe |  Critical | io | Sean Busbey | Sean Busbey |
| [HADOOP-11963](https://issues.apache.org/jira/browse/HADOOP-11963) | Metrics documentation for FSNamesystem misspells PendingDataNodeMessageCount. |  Trivial | documentation | Chris Nauroth | Anu Engineer |
| [HADOOP-11962](https://issues.apache.org/jira/browse/HADOOP-11962) | Sasl message with MD5 challenge text shouldn't be LOG out even in debug level. |  Critical | ipc, security | Junping Du | Junping Du |
| [HADOOP-11959](https://issues.apache.org/jira/browse/HADOOP-11959) | WASB should configure client side socket timeout in storage client blob request options |  Major | tools | Ivan Mitic | Ivan Mitic |
| [HADOOP-11958](https://issues.apache.org/jira/browse/HADOOP-11958) | MetricsSystemImpl fails to show backtrace when an error occurs |  Major | . | Jason Lowe | Jason Lowe |
| [HADOOP-11955](https://issues.apache.org/jira/browse/HADOOP-11955) | Fix a typo in the cluster setup doc |  Trivial | . | Kihwal Lee | Yanjun Wang |
| [HADOOP-11951](https://issues.apache.org/jira/browse/HADOOP-11951) | test-patch should give better info about failures to handle dev-support updates without resetrepo option |  Minor | . | Sean Busbey | Sean Busbey |
| [HADOOP-11947](https://issues.apache.org/jira/browse/HADOOP-11947) | test-patch should return early from determine-issue  when run in jenkins mode. |  Minor | . | Sean Busbey | Sean Busbey |
| [HADOOP-11942](https://issues.apache.org/jira/browse/HADOOP-11942) | Add links to SLGUserGuide to site index |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11936](https://issues.apache.org/jira/browse/HADOOP-11936) | Dockerfile references a removed image |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11928](https://issues.apache.org/jira/browse/HADOOP-11928) | Test-patch check for @author tags incorrectly flags removal of @author tags |  Major | . | Sean Busbey | Kengo Seki |
| [HADOOP-11927](https://issues.apache.org/jira/browse/HADOOP-11927) | Fix "undefined reference to dlopen" error when compiling libhadooppipes |  Major | build, native, tools | Xianyin Xin | Xianyin Xin |
| [HADOOP-11926](https://issues.apache.org/jira/browse/HADOOP-11926) | test-patch.sh mv does wrong math |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11924](https://issues.apache.org/jira/browse/HADOOP-11924) | Tolerate JDK-8047340-related exceptions in Shell#isSetSidAvailable preventing class init |  Major | . | Gera Shegalov | Tsuyoshi Ozawa |
| [HADOOP-11922](https://issues.apache.org/jira/browse/HADOOP-11922) | Misspelling of threshold in log4j.properties for tests in hadoop-tools |  Minor | . | Brahma Reddy Battula | Gabor Liptak |
| [HADOOP-11917](https://issues.apache.org/jira/browse/HADOOP-11917) | test-patch.sh should work with ${BASEDIR}/patchprocess setups |  Blocker | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11916](https://issues.apache.org/jira/browse/HADOOP-11916) | TestStringUtils#testLowerAndUpperStrings failed on MAC due to a JVM bug |  Minor | . | Ming Ma | Ming Ma |
| [HADOOP-11912](https://issues.apache.org/jira/browse/HADOOP-11912) | Extra configuration key used in TraceUtils should respect prefix |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11900](https://issues.apache.org/jira/browse/HADOOP-11900) | Add failIfNoTests=false to hadoop-build-tools pom |  Major | test | Gera Shegalov | Gera Shegalov |
| [HADOOP-11898](https://issues.apache.org/jira/browse/HADOOP-11898) | add nfs3 and portmap starting command in hadoop-daemon.sh in branch-2 |  Minor | bin, nfs | Brandon Li | Brandon Li |
| [HADOOP-11889](https://issues.apache.org/jira/browse/HADOOP-11889) | Make checkstyle runnable from root project |  Major | build, test | Gera Shegalov | Gera Shegalov |
| [HADOOP-11885](https://issues.apache.org/jira/browse/HADOOP-11885) | hadoop-dist dist-layout-stitching.sh does not work with dash |  Major | build | Andrew Wang | Andrew Wang |
| [HADOOP-11878](https://issues.apache.org/jira/browse/HADOOP-11878) | FileContext.java # fixRelativePart should check for not null for a more informative exception |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11877](https://issues.apache.org/jira/browse/HADOOP-11877) | SnappyDecompressor's Logger class name is wrong |  Major | conf | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HADOOP-11876](https://issues.apache.org/jira/browse/HADOOP-11876) | Refactor code to make it more readable, minor maybePrintStats bug |  Trivial | tools/distcp | Zoran Dimitrijevic | Zoran Dimitrijevic |
| [HADOOP-11870](https://issues.apache.org/jira/browse/HADOOP-11870) | [JDK8] AuthenticationFilter, CertificateUtil, SignerSecretProviders, KeyAuthorizationKeyProvider Javadoc issues |  Major | build | Robert Kanter | Robert Kanter |
| [HADOOP-11866](https://issues.apache.org/jira/browse/HADOOP-11866) | increase readability and reliability of checkstyle, shellcheck, and whitespace reports |  Minor | . | Naganarasimha G R | Allen Wittenauer |
| [HADOOP-11864](https://issues.apache.org/jira/browse/HADOOP-11864) | JWTRedirectAuthenticationHandler breaks java8 javadocs |  Major | build | Steve Loughran | Larry McCay |
| [HADOOP-11861](https://issues.apache.org/jira/browse/HADOOP-11861) | test-patch.sh rewrite addendum patch |  Major | build | Anu Engineer | Allen Wittenauer |
| [HADOOP-11859](https://issues.apache.org/jira/browse/HADOOP-11859) | PseudoAuthenticationHandler fails with httpcomponents v4.4 |  Major | . | Eugene Koifman | Eugene Koifman |
| [HADOOP-11848](https://issues.apache.org/jira/browse/HADOOP-11848) | Incorrect arguments to sizeof in DomainSocket.c |  Major | native | Malcolm Kavalsky | Malcolm Kavalsky |
| [HADOOP-11846](https://issues.apache.org/jira/browse/HADOOP-11846) | TestCertificateUtil.testCorruptPEM failing on Jenkins JDK8 |  Major | build, security | Steve Loughran | Larry McCay |
| [HADOOP-11821](https://issues.apache.org/jira/browse/HADOOP-11821) | Fix findbugs warnings in hadoop-sls |  Major | tools | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11819](https://issues.apache.org/jira/browse/HADOOP-11819) | HttpServerFunctionalTest#prepareTestWebapp should create web app directory if it does not exist. |  Minor | . | Rohith Sharma K S | Rohith Sharma K S |
| [HADOOP-11811](https://issues.apache.org/jira/browse/HADOOP-11811) | Fix typos in hadoop-project/pom.xml and TestAccessControlList |  Minor | . | Chen He | Brahma Reddy Battula |
| [HADOOP-11800](https://issues.apache.org/jira/browse/HADOOP-11800) | Clean up some test methods in TestCodec.java |  Major | test | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11797](https://issues.apache.org/jira/browse/HADOOP-11797) | releasedocmaker.py needs to put ASF headers on output |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11760](https://issues.apache.org/jira/browse/HADOOP-11760) | Fix typo of javadoc in DistCp |  Trivial | . | Chen He | Brahma Reddy Battula |
| [HADOOP-11743](https://issues.apache.org/jira/browse/HADOOP-11743) | maven doesn't clean all the site files |  Minor | documentation | Allen Wittenauer | ramtin |
| [HADOOP-11724](https://issues.apache.org/jira/browse/HADOOP-11724) | DistCp throws NPE when the target directory is root. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-11704](https://issues.apache.org/jira/browse/HADOOP-11704) | DelegationTokenAuthenticationFilter must pass ipaddress instead of hostname to ProxyUsers#authorize() |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [HADOOP-11581](https://issues.apache.org/jira/browse/HADOOP-11581) | Fix Multithreaded correctness Warnings #org.apache.hadoop.fs.shell.Ls |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11568](https://issues.apache.org/jira/browse/HADOOP-11568) | Description on usage of classpath in hadoop command is incomplete. |  Trivial | tools | Archana T | Archana T |
| [HADOOP-11491](https://issues.apache.org/jira/browse/HADOOP-11491) | HarFs incorrectly declared as requiring an authority |  Critical | fs | Gera Shegalov | Brahma Reddy Battula |
| [HADOOP-11361](https://issues.apache.org/jira/browse/HADOOP-11361) | Fix a race condition in MetricsSourceAdapter.updateJmxCache |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11328](https://issues.apache.org/jira/browse/HADOOP-11328) | ZKFailoverController does not log Exception when doRun raises errors |  Major | ha | Tianyin Xu | Tianyin Xu |
| [HADOOP-11120](https://issues.apache.org/jira/browse/HADOOP-11120) | hadoop fs -rmr gives wrong advice |  Major | . | Allen Wittenauer | Juliet Hougland |
| [HADOOP-10945](https://issues.apache.org/jira/browse/HADOOP-10945) | 4-digit octal umask permissions throws a parse error |  Major | fs | Jason Lowe | Chang Li |
| [HADOOP-10798](https://issues.apache.org/jira/browse/HADOOP-10798) | globStatus() should always return a sorted list of files |  Minor | . | Felix Borchers | Colin Patrick McCabe |
| [HADOOP-10615](https://issues.apache.org/jira/browse/HADOOP-10615) | FileInputStream in JenkinsHash#main() is never closed |  Minor | . | Ted Yu | Chen He |
| [HADOOP-10582](https://issues.apache.org/jira/browse/HADOOP-10582) | Fix the test case for copying to non-existent dir in TestFsShellCopy |  Minor | fs | Kousuke Saruta | Kousuke Saruta |
| [HADOOP-10387](https://issues.apache.org/jira/browse/HADOOP-10387) | Misspelling of threshold in log4j.properties for tests in hadoop-common-project |  Minor | conf, test | Kenji Kikushima | Brahma Reddy Battula |
| [HADOOP-10365](https://issues.apache.org/jira/browse/HADOOP-10365) | BufferedOutputStream in FileUtil#unpackEntries() should be closed in finally block |  Minor | util | Ted Yu | Kiran Kumar M R |
| [HADOOP-10356](https://issues.apache.org/jira/browse/HADOOP-10356) | Corrections in winutils/chmod.c |  Trivial | bin | René Nyffenegger | René Nyffenegger |
| [HADOOP-10318](https://issues.apache.org/jira/browse/HADOOP-10318) | Incorrect reference to nodeFile in RumenToSLSConverter error message |  Minor | . | Ted Yu | Wei Yan |
| [HADOOP-10027](https://issues.apache.org/jira/browse/HADOOP-10027) | \*Compressor\_deflateBytesDirect passes instance instead of jclass to GetStaticObjectField |  Minor | native | Eric Abbott | Hui Zheng |
| [HADOOP-9891](https://issues.apache.org/jira/browse/HADOOP-9891) | CLIMiniCluster instructions fail with MiniYarnCluster ClassNotFoundException |  Minor | documentation | Steve Loughran | Darrell Taylor |
| [HADOOP-9729](https://issues.apache.org/jira/browse/HADOOP-9729) | The example code of org.apache.hadoop.util.Tool is incorrect |  Major | util | hellojinjie | hellojinjie |
| [HADOOP-8751](https://issues.apache.org/jira/browse/HADOOP-8751) | NPE in Token.toString() when Token is constructed using null identifier |  Minor | security | Vlad Rozov | Kanaka Kumar Avvaru |
| [HADOOP-8174](https://issues.apache.org/jira/browse/HADOOP-8174) | Remove confusing comment in Path#isAbsolute() |  Trivial | fs | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8151](https://issues.apache.org/jira/browse/HADOOP-8151) | Error handling in snappy decompressor throws invalid exceptions |  Major | io, native | Todd Lipcon | Matt Foley |
| [HADOOP-7817](https://issues.apache.org/jira/browse/HADOOP-7817) | RawLocalFileSystem.append() should give FSDataOutputStream with accurate .getPos() |  Minor | fs | Kristofer Tomasette | Kanaka Kumar Avvaru |
| [HADOOP-7165](https://issues.apache.org/jira/browse/HADOOP-7165) | listLocatedStatus(path, filter) is not redefined in FilterFs |  Major | fs | Hairong Kuang | Hairong Kuang |
| [HDFS-9073](https://issues.apache.org/jira/browse/HDFS-9073) | Fix failures in TestLazyPersistLockedMemory#testReleaseOnEviction |  Critical | test | J.Andreina | J.Andreina |
| [HDFS-9072](https://issues.apache.org/jira/browse/HDFS-9072) | Fix random failures in TestJMXGet |  Critical | test | J.Andreina | J.Andreina |
| [HDFS-9069](https://issues.apache.org/jira/browse/HDFS-9069) | TestNameNodeMetricsLogger failing -port in use |  Critical | test | Steve Loughran | Steve Loughran |
| [HDFS-9067](https://issues.apache.org/jira/browse/HDFS-9067) | o.a.h.hdfs.server.datanode.fsdataset.impl.TestLazyWriter is failing in trunk |  Critical | . | Haohui Mai | Surendra Singh Lilhore |
| [HDFS-9063](https://issues.apache.org/jira/browse/HDFS-9063) | Correctly handle snapshot path for getContentSummary |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-9036](https://issues.apache.org/jira/browse/HDFS-9036) | In BlockPlacementPolicyWithNodeGroup#chooseLocalStorage , random node is selected eventhough fallbackToLocalRack is true. |  Major | . | J.Andreina | J.Andreina |
| [HDFS-9009](https://issues.apache.org/jira/browse/HDFS-9009) | Send metrics logs to NullAppender by default |  Major | logging | Arpit Agarwal | Arpit Agarwal |
| [HDFS-9003](https://issues.apache.org/jira/browse/HDFS-9003) | ForkJoin thread pool leaks |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-8996](https://issues.apache.org/jira/browse/HDFS-8996) | Consolidate validateLog and scanLog in FJM#EditLogFile |  Major | journal-node, namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-8969](https://issues.apache.org/jira/browse/HDFS-8969) | Clean up findbugs warnings for HDFS-8823 and HDFS-8932 |  Major | HDFS | Anu Engineer | Anu Engineer |
| [HDFS-8964](https://issues.apache.org/jira/browse/HDFS-8964) | When validating the edit log, do not read at or beyond the file offset that is being written |  Major | journal-node, namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-8963](https://issues.apache.org/jira/browse/HDFS-8963) | Fix incorrect sign extension of xattr length in HDFS-8900 |  Critical | . | Haohui Mai | Colin Patrick McCabe |
| [HDFS-8961](https://issues.apache.org/jira/browse/HDFS-8961) | Surpress findbug warnings of o.a.h.hdfs.shortcircuit.DfsClientShmManager.EndpointShmManager in hdfs-client |  Major | . | Haohui Mai | Mingliang Liu |
| [HDFS-8950](https://issues.apache.org/jira/browse/HDFS-8950) | NameNode refresh doesn't remove DataNodes that are no longer in the allowed list |  Major | datanode, namenode | Daniel Templeton | Daniel Templeton |
| [HDFS-8942](https://issues.apache.org/jira/browse/HDFS-8942) | Update hyperlink to rack awareness page in HDFS Architecture documentation |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-8939](https://issues.apache.org/jira/browse/HDFS-8939) | Test(S)WebHdfsFileContextMainOperations failing on branch-2 |  Major | webhdfs | Jakob Homan | Chris Nauroth |
| [HDFS-8932](https://issues.apache.org/jira/browse/HDFS-8932) | NPE thrown in NameNode when try to get "TotalSyncCount" metric before editLogStream initialization |  Major | . | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8930](https://issues.apache.org/jira/browse/HDFS-8930) | Block report lease may leak if the 2nd full block report comes when NN is still in safemode |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-8922](https://issues.apache.org/jira/browse/HDFS-8922) | Link the native\_mini\_dfs test library with libdl, since IBM Java requires it |  Major | build | Ayappan | Ayappan |
| [HDFS-8908](https://issues.apache.org/jira/browse/HDFS-8908) | TestAppendSnapshotTruncate may fail with IOException: Failed to replace a bad datanode |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8896](https://issues.apache.org/jira/browse/HDFS-8896) | DataNode object isn't GCed when shutdown, because it has GC root in ShutdownHookManager |  Minor | test | Walter Su | Walter Su |
| [HDFS-8885](https://issues.apache.org/jira/browse/HDFS-8885) | ByteRangeInputStream used in webhdfs does not override available() |  Minor | webhdfs | Shradha Revankar | Shradha Revankar |
| [HDFS-8866](https://issues.apache.org/jira/browse/HDFS-8866) | Typo in docs: Rumtime -\> Runtime |  Trivial | documentation, webhdfs | Jakob Homan | Gabor Liptak |
| [HDFS-8856](https://issues.apache.org/jira/browse/HDFS-8856) | Make LeaseManager#countPath O(1) |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8850](https://issues.apache.org/jira/browse/HDFS-8850) | VolumeScanner thread exits with exception if there is no block pool to be scanned but there are suspicious blocks |  Major | datanode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8847](https://issues.apache.org/jira/browse/HDFS-8847) | change TestHDFSContractAppend to not override testRenameFileBeingAppended method. |  Major | test | zhihai xu | zhihai xu |
| [HDFS-8846](https://issues.apache.org/jira/browse/HDFS-8846) | Add a unit test for INotify functionality across a layout version upgrade |  Major | namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-8845](https://issues.apache.org/jira/browse/HDFS-8845) | DiskChecker should not traverse the entire tree |  Major | . | Chang Li | Chang Li |
| [HDFS-8844](https://issues.apache.org/jira/browse/HDFS-8844) | TestHDFSCLI does not cleanup the test directory |  Minor | test | Akira AJISAKA | Masatake Iwasaki |
| [HDFS-8810](https://issues.apache.org/jira/browse/HDFS-8810) | Correct assertions in TestDFSInotifyEventInputStream class. |  Minor | test | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8809](https://issues.apache.org/jira/browse/HDFS-8809) | HDFS fsck reports under construction blocks as "CORRUPT" |  Major | tools | Sudhir Prakash | Jing Zhao |
| [HDFS-8797](https://issues.apache.org/jira/browse/HDFS-8797) | WebHdfsFileSystem creates too many connections for pread |  Major | webhdfs | Jing Zhao | Jing Zhao |
| [HDFS-8785](https://issues.apache.org/jira/browse/HDFS-8785) | TestDistributedFileSystem is failing in trunk |  Major | test | Arpit Agarwal | Xiaoyu Yao |
| [HDFS-8780](https://issues.apache.org/jira/browse/HDFS-8780) | Fetching live/dead datanode list with arg true for removeDecommissionNode,returns list with decom node. |  Major | . | J.Andreina | J.Andreina |
| [HDFS-8778](https://issues.apache.org/jira/browse/HDFS-8778) | TestBlockReportRateLimiting#testLeaseExpiration can deadlock |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8773](https://issues.apache.org/jira/browse/HDFS-8773) | Few FSNamesystem metrics are not documented in the Metrics page |  Major | documentation | Rakesh R | Rakesh R |
| [HDFS-8772](https://issues.apache.org/jira/browse/HDFS-8772) | Fix TestStandbyIsHot#testDatanodeRestarts which occasionally fails |  Major | . | Walter Su | Walter Su |
| [HDFS-8751](https://issues.apache.org/jira/browse/HDFS-8751) | Remove setBlocks API from INodeFile and misc code cleanup |  Major | namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-8749](https://issues.apache.org/jira/browse/HDFS-8749) | Fix findbugs warning in BlockManager.java |  Minor | . | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-8729](https://issues.apache.org/jira/browse/HDFS-8729) | Fix testTruncateWithDataNodesRestartImmediately occasionally failed |  Minor | . | Walter Su | Walter Su |
| [HDFS-8716](https://issues.apache.org/jira/browse/HDFS-8716) | introduce a new config specifically for safe mode block count |  Major | . | Chang Li | Chang Li |
| [HDFS-8706](https://issues.apache.org/jira/browse/HDFS-8706) | Fix typo in datanode startup options in HDFSCommands.html |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8687](https://issues.apache.org/jira/browse/HDFS-8687) | Remove the duplicate usage message from Dfsck.java |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8686](https://issues.apache.org/jira/browse/HDFS-8686) | WebHdfsFileSystem#getXAttr(Path p, final String name) doesn't work if namespace is in capitals |  Major | webhdfs | Jagadesh Kiran N | Kanaka Kumar Avvaru |
| [HDFS-8682](https://issues.apache.org/jira/browse/HDFS-8682) | Should not remove decommissioned node,while calculating the number of live/dead decommissioned node. |  Major | . | J.Andreina | J.Andreina |
| [HDFS-8670](https://issues.apache.org/jira/browse/HDFS-8670) | Better to exclude decommissioned nodes for namenode NodeUsage JMX |  Major | . | Ming Ma | J.Andreina |
| [HDFS-8666](https://issues.apache.org/jira/browse/HDFS-8666) | speedup TestMover |  Major | test | Walter Su | Walter Su |
| [HDFS-8665](https://issues.apache.org/jira/browse/HDFS-8665) | Fix replication check in DFSTestUtils#waitForReplication |  Trivial | test | Andrew Wang | Andrew Wang |
| [HDFS-8656](https://issues.apache.org/jira/browse/HDFS-8656) | Preserve compatibility of ClientProtocol#rollingUpgrade after finalization |  Critical | rolling upgrades | Andrew Wang | Andrew Wang |
| [HDFS-8646](https://issues.apache.org/jira/browse/HDFS-8646) | Prune cached replicas from DatanodeDescriptor state on replica invalidation |  Major | caching | Andrew Wang | Andrew Wang |
| [HDFS-8642](https://issues.apache.org/jira/browse/HDFS-8642) | Make TestFileTruncate more reliable |  Minor | . | Rakesh R | Rakesh R |
| [HDFS-8628](https://issues.apache.org/jira/browse/HDFS-8628) | Update missing command option for fetchdt |  Major | documentation | J.Andreina | J.Andreina |
| [HDFS-8615](https://issues.apache.org/jira/browse/HDFS-8615) | Correct HTTP method in WebHDFS document |  Major | documentation | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-8607](https://issues.apache.org/jira/browse/HDFS-8607) | TestFileCorruption doesn't work as expected |  Major | test | Walter Su | Walter Su |
| [HDFS-8593](https://issues.apache.org/jira/browse/HDFS-8593) | Calculation of effective layout version mishandles comparison to current layout version in storage. |  Major | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-8592](https://issues.apache.org/jira/browse/HDFS-8592) | SafeModeException never get unwrapped |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8586](https://issues.apache.org/jira/browse/HDFS-8586) | Dead Datanode is allocated for write when client is  from deadnode |  Critical | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8581](https://issues.apache.org/jira/browse/HDFS-8581) | ContentSummary on / skips further counts on yielding lock |  Minor | HDFS | tongshiquan | J.Andreina |
| [HDFS-8579](https://issues.apache.org/jira/browse/HDFS-8579) | Update HDFS usage with missing options |  Minor | . | J.Andreina | J.Andreina |
| [HDFS-8577](https://issues.apache.org/jira/browse/HDFS-8577) | Avoid retrying to recover lease on a file which does not exist |  Major | . | J.Andreina | J.Andreina |
| [HDFS-8568](https://issues.apache.org/jira/browse/HDFS-8568) | TestClusterId#testFormatWithEmptyClusterIdOption is failing |  Major | . | Rakesh R | Rakesh R |
| [HDFS-8565](https://issues.apache.org/jira/browse/HDFS-8565) | Typo in dfshealth.html - "Decomissioning" |  Trivial | . | nijel | nijel |
| [HDFS-8554](https://issues.apache.org/jira/browse/HDFS-8554) | TestDatanodeLayoutUpgrade fails on Windows. |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-8552](https://issues.apache.org/jira/browse/HDFS-8552) | Fix hdfs CLI usage message for namenode and zkfc |  Major | . | Xiaoyu Yao | Brahma Reddy Battula |
| [HDFS-8551](https://issues.apache.org/jira/browse/HDFS-8551) | Fix hdfs datanode CLI usage message |  Major | . | Xiaoyu Yao | Brahma Reddy Battula |
| [HDFS-8548](https://issues.apache.org/jira/browse/HDFS-8548) | Minicluster throws NPE on shutdown |  Major | . | Mike Drob | Surendra Singh Lilhore |
| [HDFS-8542](https://issues.apache.org/jira/browse/HDFS-8542) | WebHDFS getHomeDirectory behavior does not match specification |  Major | webhdfs | Jakob Homan | Kanaka Kumar Avvaru |
| [HDFS-8539](https://issues.apache.org/jira/browse/HDFS-8539) | Hdfs doesnt have class 'debug' in windows |  Major | scripts | Sumana Sathish | Anu Engineer |
| [HDFS-8513](https://issues.apache.org/jira/browse/HDFS-8513) | Rename BlockPlacementPolicyRackFaultTolarent to BlockPlacementPolicyRackFaultTolerant |  Minor | namenode | Andrew Wang | Andrew Wang |
| [HDFS-8470](https://issues.apache.org/jira/browse/HDFS-8470) | fsimage loading progress should update inode, delegation token and cache pool count. |  Minor | HDFS | tongshiquan | Surendra Singh Lilhore |
| [HDFS-8463](https://issues.apache.org/jira/browse/HDFS-8463) | Calling DFSInputStream.seekToNewSource just after stream creation causes  NullPointerException |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-8446](https://issues.apache.org/jira/browse/HDFS-8446) | Separate safemode related operations in GetBlockLocations() |  Minor | . | Haohui Mai | Haohui Mai |
| [HDFS-8431](https://issues.apache.org/jira/browse/HDFS-8431) | hdfs crypto class not found in Windows |  Critical | HDFS | Sumana Sathish | Anu Engineer |
| [HDFS-8429](https://issues.apache.org/jira/browse/HDFS-8429) | Avoid stuck threads if there is an error in DomainSocketWatcher that stops the thread |  Major | . | zhouyingchao | zhouyingchao |
| [HDFS-8421](https://issues.apache.org/jira/browse/HDFS-8421) | Move startFile() and related operations into FSDirWriteFileOp |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8407](https://issues.apache.org/jira/browse/HDFS-8407) | hdfsListDirectory must set errno to 0 on success |  Major | HDFS | Juan Yu | Masatake Iwasaki |
| [HDFS-8388](https://issues.apache.org/jira/browse/HDFS-8388) | Time and Date format need to be in sync in NameNode UI page |  Minor | . | Archana T | Surendra Singh Lilhore |
| [HDFS-8386](https://issues.apache.org/jira/browse/HDFS-8386) | Improve synchronization of 'streamer' reference in DFSOutputStream |  Major | hdfs-client | Rakesh R | Rakesh R |
| [HDFS-8380](https://issues.apache.org/jira/browse/HDFS-8380) | Always call addStoredBlock on blocks which have been shifted from one storage to another |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8371](https://issues.apache.org/jira/browse/HDFS-8371) | Fix test failure in TestHdfsConfigFields for spanreceiver properties |  Major | . | Ray Chiang | Ray Chiang |
| [HDFS-8362](https://issues.apache.org/jira/browse/HDFS-8362) | Java Compilation Error in TestHdfsConfigFields.java |  Major | . | Arshad Mohammad | Arshad Mohammad |
| [HDFS-8358](https://issues.apache.org/jira/browse/HDFS-8358) | TestTraceAdmin fails |  Major | . | Kihwal Lee | Masatake Iwasaki |
| [HDFS-8351](https://issues.apache.org/jira/browse/HDFS-8351) | Remove namenode -finalize option from document |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-8346](https://issues.apache.org/jira/browse/HDFS-8346) | libwebhdfs build fails during link due to unresolved external symbols. |  Major | native | Chris Nauroth | Chris Nauroth |
| [HDFS-8345](https://issues.apache.org/jira/browse/HDFS-8345) | Storage policy APIs must be exposed via the FileSystem interface |  Major | hdfs-client | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8340](https://issues.apache.org/jira/browse/HDFS-8340) | Fix NFS documentation of nfs.wtmax |  Minor | documentation, nfs | Ajith S | Ajith S |
| [HDFS-8337](https://issues.apache.org/jira/browse/HDFS-8337) | Accessing httpfs via webhdfs doesn't work from a jar with kerberos |  Major | HDFS, hdfs-client, security, webhdfs | Yongjun Zhang | Yongjun Zhang |
| [HDFS-8326](https://issues.apache.org/jira/browse/HDFS-8326) | Documentation about when checkpoints are run is out of date |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HDFS-8325](https://issues.apache.org/jira/browse/HDFS-8325) | Misspelling of threshold in log4j.properties for tests |  Minor | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8321](https://issues.apache.org/jira/browse/HDFS-8321) | CacheDirectives and CachePool operations should throw RetriableException in safemode |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8311](https://issues.apache.org/jira/browse/HDFS-8311) | DataStreamer.transfer() should timeout the socket InputStream. |  Major | hdfs-client | Esteban Gutierrez | Esteban Gutierrez |
| [HDFS-8300](https://issues.apache.org/jira/browse/HDFS-8300) | Fix unit test failures and findbugs warning caused by HDFS-8283 |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-8292](https://issues.apache.org/jira/browse/HDFS-8292) | Move conditional in fmt\_time from dfs-dust.js to status.html |  Minor | HDFS | Charles Lamb | Charles Lamb |
| [HDFS-8290](https://issues.apache.org/jira/browse/HDFS-8290) | WebHDFS calls before namesystem initialization can cause NullPointerException. |  Minor | webhdfs | Chris Nauroth | Chris Nauroth |
| [HDFS-8276](https://issues.apache.org/jira/browse/HDFS-8276) | LazyPersistFileScrubber should be disabled if scrubber interval configured zero |  Major | namenode | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8274](https://issues.apache.org/jira/browse/HDFS-8274) | NFS configuration nfs.dump.dir not working |  Major | nfs | Ajith S | Ajith S |
| [HDFS-8268](https://issues.apache.org/jira/browse/HDFS-8268) | Port conflict log for data node server is not sufficient |  Minor | datanode | Mohammad Shahid Khan | Mohammad Shahid Khan |
| [HDFS-8257](https://issues.apache.org/jira/browse/HDFS-8257) | Namenode rollingUpgrade option is incorrect in document |  Major | documentation | J.Andreina | J.Andreina |
| [HDFS-8256](https://issues.apache.org/jira/browse/HDFS-8256) | "-storagepolicies , -blockId ,-replicaDetails " options are missed out in usage and from documentation |  Major | HDFS | J.Andreina | J.Andreina |
| [HDFS-8232](https://issues.apache.org/jira/browse/HDFS-8232) | Missing datanode counters when using Metrics2 sink interface |  Major | datanode | Anu Engineer | Anu Engineer |
| [HDFS-8231](https://issues.apache.org/jira/browse/HDFS-8231) | StackTrace displayed at client while QuotaByStorageType exceeds |  Major | hdfs-client | J.Andreina | J.Andreina |
| [HDFS-8229](https://issues.apache.org/jira/browse/HDFS-8229) | LAZY\_PERSIST file gets deleted after NameNode restart. |  Major | HDFS | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8222](https://issues.apache.org/jira/browse/HDFS-8222) | Remove usage of "dfsadmin -upgradeProgress " from document which  is no longer supported |  Major | documentation | J.Andreina | J.Andreina |
| [HDFS-8219](https://issues.apache.org/jira/browse/HDFS-8219) | setStoragePolicy with folder behavior is different after cluster restart |  Major | . | Peter Shi | Surendra Singh Lilhore |
| [HDFS-8217](https://issues.apache.org/jira/browse/HDFS-8217) | During block recovery for truncate Log new Block Id in case of copy-on-truncate is true. |  Major | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-8214](https://issues.apache.org/jira/browse/HDFS-8214) | Secondary NN Web UI shows wrong date for Last Checkpoint |  Major | HDFS, namenode | Charles Lamb | Charles Lamb |
| [HDFS-8211](https://issues.apache.org/jira/browse/HDFS-8211) | DataNode UUID is always null in the JMX counter |  Minor | HDFS | Anu Engineer | Anu Engineer |
| [HDFS-8206](https://issues.apache.org/jira/browse/HDFS-8206) | Fix the typos in hadoop-hdfs-httpfs |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8205](https://issues.apache.org/jira/browse/HDFS-8205) | CommandFormat#parse() should not parse option as value of option |  Blocker | . | Peter Shi | Peter Shi |
| [HDFS-8191](https://issues.apache.org/jira/browse/HDFS-8191) | Fix byte to integer casting in SimulatedFSDataset#simulatedByte |  Minor | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8187](https://issues.apache.org/jira/browse/HDFS-8187) | Remove usage of "-setStoragePolicy" and "-getStoragePolicy" using dfsadmin cmd (as it is not been supported) |  Major | documentation | J.Andreina | J.Andreina |
| [HDFS-8175](https://issues.apache.org/jira/browse/HDFS-8175) | Provide information on snapshotDiff for supporting the comparison between snapshot and current status |  Major | documentation | J.Andreina | J.Andreina |
| [HDFS-8174](https://issues.apache.org/jira/browse/HDFS-8174) | Update replication count to live rep count in fsck report |  Minor | . | J.Andreina | J.Andreina |
| [HDFS-8173](https://issues.apache.org/jira/browse/HDFS-8173) | NPE thrown at DataNode shutdown when HTTP server was not able to create |  Minor | datanode | Archana T | Surendra Singh Lilhore |
| [HDFS-8150](https://issues.apache.org/jira/browse/HDFS-8150) | Make getFileChecksum fail for blocks under construction |  Critical | . | Kihwal Lee | J.Andreina |
| [HDFS-8149](https://issues.apache.org/jira/browse/HDFS-8149) | The footer of the Web UI "Hadoop, 2014" is old |  Major | . | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-8148](https://issues.apache.org/jira/browse/HDFS-8148) |  NPE thrown at Namenode startup,. |  Minor | namenode | Archana T | Surendra Singh Lilhore |
| [HDFS-8142](https://issues.apache.org/jira/browse/HDFS-8142) | DistributedFileSystem encryption zone commands should resolve relative paths |  Major | . | Rakesh R | Rakesh R |
| [HDFS-8113](https://issues.apache.org/jira/browse/HDFS-8113) | Add check for null BlockCollection pointers in BlockInfoContiguous structures |  Major | namenode | Chengbing Liu | Chengbing Liu |
| [HDFS-8111](https://issues.apache.org/jira/browse/HDFS-8111) | NPE thrown when invalid FSImage filename given for "hdfs oiv\_legacy" cmd |  Minor | tools | Archana T | Surendra Singh Lilhore |
| [HDFS-8097](https://issues.apache.org/jira/browse/HDFS-8097) | TestFileTruncate is failing intermittently |  Major | test | Rakesh R | Rakesh R |
| [HDFS-8096](https://issues.apache.org/jira/browse/HDFS-8096) | DatanodeMetrics#blocksReplicated will get incremented early and even for failed transfers |  Major | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-8067](https://issues.apache.org/jira/browse/HDFS-8067) | haadmin prints out stale help messages |  Minor | hdfs-client | Ajith S | Ajith S |
| [HDFS-8055](https://issues.apache.org/jira/browse/HDFS-8055) | NullPointerException when topology script is missing. |  Major | namenode | Anu Engineer | Anu Engineer |
| [HDFS-8046](https://issues.apache.org/jira/browse/HDFS-8046) | Allow better control of getContentSummary |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-8043](https://issues.apache.org/jira/browse/HDFS-8043) | NPE in MiniDFSCluster teardown |  Major | test | Steve Loughran | Brahma Reddy Battula |
| [HDFS-8037](https://issues.apache.org/jira/browse/HDFS-8037) | CheckAccess in WebHDFS silently accepts malformed FsActions parameters |  Minor | webhdfs | Jake Low | Walter Su |
| [HDFS-8026](https://issues.apache.org/jira/browse/HDFS-8026) | Trace FSOutputSummer#writeChecksumChunks rather than DFSOutputStream#writeChunk |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8002](https://issues.apache.org/jira/browse/HDFS-8002) | Website refers to /trash directory |  Major | documentation | Mike Drob | Brahma Reddy Battula |
| [HDFS-7998](https://issues.apache.org/jira/browse/HDFS-7998) | HDFS Federation : Command mentioned to add a NN to existing federated cluster is wrong |  Minor | documentation | Ajith S | Ajith S |
| [HDFS-7997](https://issues.apache.org/jira/browse/HDFS-7997) | The first non-existing xattr should also throw IOException |  Minor | . | zhouyingchao | zhouyingchao |
| [HDFS-7993](https://issues.apache.org/jira/browse/HDFS-7993) | Provide each Replica details in fsck |  Major | . | Ming Ma | J.Andreina |
| [HDFS-7990](https://issues.apache.org/jira/browse/HDFS-7990) | IBR delete ack should not be delayed |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-7939](https://issues.apache.org/jira/browse/HDFS-7939) | Two fsimage\_rollback\_\* files are created which are not deleted after rollback. |  Critical | . | J.Andreina | J.Andreina |
| [HDFS-7922](https://issues.apache.org/jira/browse/HDFS-7922) | ShortCircuitCache#close is not releasing ScheduledThreadPoolExecutors |  Major | . | Rakesh R | Rakesh R |
| [HDFS-7867](https://issues.apache.org/jira/browse/HDFS-7867) | Update action param from "start" to "prepare" in rolling upgrade javadoc |  Trivial | . | J.Andreina | J.Andreina |
| [HDFS-7847](https://issues.apache.org/jira/browse/HDFS-7847) | Modify NNThroughputBenchmark to be able to operate on a remote NameNode |  Major | . | Colin Patrick McCabe | Charles Lamb |
| [HDFS-7833](https://issues.apache.org/jira/browse/HDFS-7833) | DataNode reconfiguration does not recalculate valid volumes required, based on configured failed volumes tolerated. |  Major | datanode | Chris Nauroth | Lei (Eddy) Xu |
| [HDFS-7728](https://issues.apache.org/jira/browse/HDFS-7728) | Avoid updating quota usage while loading edits |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-7725](https://issues.apache.org/jira/browse/HDFS-7725) | Incorrect "nodes in service" metrics caused all writes to fail |  Major | . | Ming Ma | Ming Ma |
| [HDFS-7609](https://issues.apache.org/jira/browse/HDFS-7609) | Avoid retry cache collision when Standby NameNode loading edits |  Critical | namenode | Carrey Zhan | Ming Ma |
| [HDFS-7608](https://issues.apache.org/jira/browse/HDFS-7608) | hdfs dfsclient  newConnectedPeer has no write timeout |  Major | fuse-dfs, hdfs-client | zhangshilong | Xiaoyu Yao |
| [HDFS-7582](https://issues.apache.org/jira/browse/HDFS-7582) | Enforce maximum number of ACL entries separately per access and default. |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-7501](https://issues.apache.org/jira/browse/HDFS-7501) | TransactionsSinceLastCheckpoint can be negative on SBNs |  Major | namenode | Harsh J | Gautam Gopalakrishnan |
| [HDFS-7401](https://issues.apache.org/jira/browse/HDFS-7401) | Add block info to DFSInputStream' WARN message when it adds node to deadNodes |  Minor | . | Ming Ma | Arshad Mohammad |
| [HDFS-7261](https://issues.apache.org/jira/browse/HDFS-7261) | storageMap is accessed without synchronization in DatanodeDescriptor#updateHeartbeatState() |  Major | . | Ted Yu | Brahma Reddy Battula |
| [HDFS-6955](https://issues.apache.org/jira/browse/HDFS-6955) | DN should reserve disk space for a full block when creating tmp files |  Major | datanode | Arpit Agarwal | Kanaka Kumar Avvaru |
| [HDFS-6945](https://issues.apache.org/jira/browse/HDFS-6945) | BlockManager should remove a block from excessReplicateMap and decrement ExcessBlocks metric when the block is removed |  Critical | namenode | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6860](https://issues.apache.org/jira/browse/HDFS-6860) | BlockStateChange logs are too noisy |  Major | namenode | Arpit Agarwal | Chang Li |
| [HDFS-6763](https://issues.apache.org/jira/browse/HDFS-6763) | Initialize file system-wide quota once on transitioning to active |  Major | ha, namenode | Daryn Sharp | Kihwal Lee |
| [HDFS-6666](https://issues.apache.org/jira/browse/HDFS-6666) | Abort NameNode and DataNode startup if security is enabled but block access token is not enabled. |  Minor | datanode, namenode, security | Chris Nauroth | Vijay Bhat |
| [HDFS-6576](https://issues.apache.org/jira/browse/HDFS-6576) | Datanode log is generating at root directory in security mode |  Minor | datanode, scripts | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-6348](https://issues.apache.org/jira/browse/HDFS-6348) | SecondaryNameNode not terminating properly on runtime exceptions |  Major | namenode | Rakesh R | Rakesh R |
| [HDFS-6291](https://issues.apache.org/jira/browse/HDFS-6291) | FSImage may be left unclosed in BootstrapStandby#doRun() |  Minor | ha | Ted Yu | Sanghyun Yun |
| [HDFS-5802](https://issues.apache.org/jira/browse/HDFS-5802) | NameNode does not check for inode type before traversing down a path |  Trivial | namenode | Harsh J | Xiao Chen |
| [HDFS-5356](https://issues.apache.org/jira/browse/HDFS-5356) | MiniDFSCluster shoud close all open FileSystems when shutdown() |  Critical | test | haosdent | Rakesh R |
| [HDFS-4448](https://issues.apache.org/jira/browse/HDFS-4448) | Allow HA NN to start in secure mode with wildcard address configured |  Major | ha, namenode, security | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4366](https://issues.apache.org/jira/browse/HDFS-4366) | Block Replication Policy Implementation May Skip Higher-Priority Blocks for Lower-Priority Blocks |  Major | . | Derek Dagit | Derek Dagit |
| [HDFS-3716](https://issues.apache.org/jira/browse/HDFS-3716) | Purger should remove stale fsimage ckpt files |  Minor | namenode | suja s | J.Andreina |
| [HDFS-3384](https://issues.apache.org/jira/browse/HDFS-3384) | DataStreamer thread should be closed immediatly when failed to setup a PipelineForAppendOrRecovery |  Major | hdfs-client | Brahma Reddy Battula | Uma Maheswara Rao G |
| [HDFS-3325](https://issues.apache.org/jira/browse/HDFS-3325) | When configuring "dfs.namenode.safemode.threshold-pct" to a value greater or equal to 1 there is mismatch in the UI report |  Minor | . | J.Andreina | J.Andreina |
| [HDFS-2956](https://issues.apache.org/jira/browse/HDFS-2956) | calling fetchdt without a --renewer argument throws NPE |  Major | security | Todd Lipcon | Vinayakumar B |
| [HDFS-2484](https://issues.apache.org/jira/browse/HDFS-2484) | checkLease should throw FileNotFoundException when file does not exist |  Major | namenode | Konstantin Shvachko | Rakesh R |
| [MAPREDUCE-6460](https://issues.apache.org/jira/browse/MAPREDUCE-6460) | TestRMContainerAllocator.testAttemptNotFoundCausesRMCommunicatorException fails |  Major | test | zhihai xu | zhihai xu |
| [MAPREDUCE-6452](https://issues.apache.org/jira/browse/MAPREDUCE-6452) | NPE when intermediate encrypt enabled for LocalRunner |  Major | . | Bibin A Chundatt | zhihai xu |
| [MAPREDUCE-6433](https://issues.apache.org/jira/browse/MAPREDUCE-6433) | launchTime may be negative |  Major | jobhistoryserver, mrv2 | Allen Wittenauer | zhihai xu |
| [MAPREDUCE-6421](https://issues.apache.org/jira/browse/MAPREDUCE-6421) | Fix findbugs warning in RMContainerAllocator.reduceNodeLabelExpression |  Major | . | Ray Chiang | Brahma Reddy Battula |
| [MAPREDUCE-6420](https://issues.apache.org/jira/browse/MAPREDUCE-6420) | Interrupted Exception in LocalContainerLauncher should be logged in warn/info level |  Major | . | Chang Li | Chang Li |
| [MAPREDUCE-6418](https://issues.apache.org/jira/browse/MAPREDUCE-6418) | MRApp should not shutdown LogManager during shutdown |  Major | test | Chang Li | Chang Li |
| [MAPREDUCE-6413](https://issues.apache.org/jira/browse/MAPREDUCE-6413) | TestLocalJobSubmission is failing with unknown host |  Major | test | Jason Lowe | zhihai xu |
| [MAPREDUCE-6405](https://issues.apache.org/jira/browse/MAPREDUCE-6405) | NullPointerException in App Attempts page |  Major | . | Siqi Li | Siqi Li |
| [MAPREDUCE-6403](https://issues.apache.org/jira/browse/MAPREDUCE-6403) | Fix typo in the usage of NNBench |  Trivial | documentation | Akira AJISAKA | Jagadesh Kiran N |
| [MAPREDUCE-6400](https://issues.apache.org/jira/browse/MAPREDUCE-6400) | Multiple shuffle transfer fails because input is closed too early |  Blocker | task | Akira AJISAKA | Brahma Reddy Battula |
| [MAPREDUCE-6389](https://issues.apache.org/jira/browse/MAPREDUCE-6389) | Fix BaileyBorweinPlouffe CLI usage message |  Trivial | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6382](https://issues.apache.org/jira/browse/MAPREDUCE-6382) | Don't escape HTML links in Diagnostics in JHS job overview |  Major | . | Siqi Li | Siqi Li |
| [MAPREDUCE-6377](https://issues.apache.org/jira/browse/MAPREDUCE-6377) | JHS sorting on state column not working in webUi |  Minor | jobhistoryserver | Bibin A Chundatt | zhihai xu |
| [MAPREDUCE-6374](https://issues.apache.org/jira/browse/MAPREDUCE-6374) | Distributed Cache File visibility should check permission of full path |  Major | . | Chang Li | Chang Li |
| [MAPREDUCE-6373](https://issues.apache.org/jira/browse/MAPREDUCE-6373) | The logger reports total input paths but it is referring to input files |  Trivial | . | Andi Chirita Amdocs | Bibin A Chundatt |
| [MAPREDUCE-6366](https://issues.apache.org/jira/browse/MAPREDUCE-6366) | mapreduce.terasort.final.sync configuration in TeraSort  doesn't work |  Trivial | examples | Takuya Fukudome | Takuya Fukudome |
| [MAPREDUCE-6360](https://issues.apache.org/jira/browse/MAPREDUCE-6360) | TestMapreduceConfigFields is placed in wrong dir, introducing compile error |  Major | . | Vinayakumar B | Arshad Mohammad |
| [MAPREDUCE-6359](https://issues.apache.org/jira/browse/MAPREDUCE-6359) | RM HA setup, "Cluster" tab links populated with AM hostname instead of RM |  Minor | . | Aroop Maliakkal | zhaoyunjiong |
| [MAPREDUCE-6357](https://issues.apache.org/jira/browse/MAPREDUCE-6357) | MultipleOutputs.write() API should document that output committing is not utilized when input path is absolute |  Major | documentation | Ivan Mitic | Dustin Cote |
| [MAPREDUCE-6356](https://issues.apache.org/jira/browse/MAPREDUCE-6356) | Misspelling of threshold in log4j.properties for tests |  Minor | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6353](https://issues.apache.org/jira/browse/MAPREDUCE-6353) | Divide by zero error in MR AM when calculating available containers |  Major | mr-am | Anubhav Dhoot | Anubhav Dhoot |
| [MAPREDUCE-6350](https://issues.apache.org/jira/browse/MAPREDUCE-6350) | JobHistory doesn't support fully-functional search |  Critical | jobhistoryserver | Siqi Li | Siqi Li |
| [MAPREDUCE-6349](https://issues.apache.org/jira/browse/MAPREDUCE-6349) | Fix typo in property org.apache.hadoop.mapreduce.lib.chain.Chain.REDUCER\_INPUT\_VALUE\_CLASS |  Minor | . | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6345](https://issues.apache.org/jira/browse/MAPREDUCE-6345) | Documentation fix for when CRLA is enabled for MRAppMaster logs |  Trivial | documentation | Rohit Agarwal | Rohit Agarwal |
| [MAPREDUCE-6342](https://issues.apache.org/jira/browse/MAPREDUCE-6342) | Make POM project names consistent |  Minor | build | Rohith Sharma K S | Rohith Sharma K S |
| [MAPREDUCE-6333](https://issues.apache.org/jira/browse/MAPREDUCE-6333) | TestEvents,TestAMWebServicesTasks,TestAppController are broken due to MAPREDUCE-6297 |  Major | . | Siqi Li | Siqi Li |
| [MAPREDUCE-6330](https://issues.apache.org/jira/browse/MAPREDUCE-6330) | Fix typo in Task Attempt API's URL in documentations |  Minor | documentation | Ryu Kobayashi | Ryu Kobayashi |
| [MAPREDUCE-6314](https://issues.apache.org/jira/browse/MAPREDUCE-6314) | TestPipeApplication fails on trunk |  Major | test | Varun Vasudev | Varun Vasudev |
| [MAPREDUCE-6300](https://issues.apache.org/jira/browse/MAPREDUCE-6300) | Task list sort by task id broken |  Minor | . | Siqi Li | Siqi Li |
| [MAPREDUCE-6294](https://issues.apache.org/jira/browse/MAPREDUCE-6294) | Remove an extra parameter described in Javadoc of TockenCache |  Trivial | . | Chen He | Brahma Reddy Battula |
| [MAPREDUCE-6293](https://issues.apache.org/jira/browse/MAPREDUCE-6293) | Set job classloader on uber-job's LocalContainerLauncher event thread |  Major | mr-am | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6286](https://issues.apache.org/jira/browse/MAPREDUCE-6286) | A typo in HistoryViewer makes some code useless, which causes counter limits are not reset correctly. |  Major | client | zhihai xu | zhihai xu |
| [MAPREDUCE-6281](https://issues.apache.org/jira/browse/MAPREDUCE-6281) | Fix javadoc in Terasort |  Trivial | . | Albert Chu | Albert Chu |
| [MAPREDUCE-6273](https://issues.apache.org/jira/browse/MAPREDUCE-6273) | HistoryFileManager should check whether summaryFile exists to avoid FileNotFoundException causing HistoryFileInfo into MOVE\_FAILED state |  Minor | jobhistoryserver | zhihai xu | zhihai xu |
| [MAPREDUCE-6266](https://issues.apache.org/jira/browse/MAPREDUCE-6266) | Job#getTrackingURL should consistently return a proper URL |  Minor | . | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6252](https://issues.apache.org/jira/browse/MAPREDUCE-6252) | JobHistoryServer should not fail when encountering a missing directory |  Major | jobhistoryserver | Craig Welch | Craig Welch |
| [MAPREDUCE-6242](https://issues.apache.org/jira/browse/MAPREDUCE-6242) | Progress report log is incredibly excessive in application master |  Major | applicationmaster | Jian Fang | Varun Saxena |
| [MAPREDUCE-6213](https://issues.apache.org/jira/browse/MAPREDUCE-6213) | NullPointerException caused by job history server addr not resolvable |  Minor | applicationmaster | Peng Zhang | Peng Zhang |
| [MAPREDUCE-6199](https://issues.apache.org/jira/browse/MAPREDUCE-6199) | AbstractCounters are not reset completely on deserialization |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [MAPREDUCE-6165](https://issues.apache.org/jira/browse/MAPREDUCE-6165) | [JDK8] TestCombineFileInputFormat failed on JDK8 |  Minor | . | Wei Yan | Akira AJISAKA |
| [MAPREDUCE-6121](https://issues.apache.org/jira/browse/MAPREDUCE-6121) | JobResourceUpdater#compareFs() doesn't handle HA namespaces |  Major | mrv2 | Thomas Graves | Ray Chiang |
| [MAPREDUCE-6038](https://issues.apache.org/jira/browse/MAPREDUCE-6038) | A boolean may be set error in the Word Count v2.0 in MapReduce Tutorial |  Minor | . | Pei Ma | Tsuyoshi Ozawa |
| [MAPREDUCE-5965](https://issues.apache.org/jira/browse/MAPREDUCE-5965) | Hadoop streaming throws error if list of input files is high. Error is: "error=7, Argument list too long at if number of input file is high" |  Major | . | Arup Malakar | Wilfred Spiegelenburg |
| [MAPREDUCE-5905](https://issues.apache.org/jira/browse/MAPREDUCE-5905) | CountersStrings.toEscapedCompactStrings outputs unnecessary "null" strings |  Minor | . | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5875](https://issues.apache.org/jira/browse/MAPREDUCE-5875) | Make Counter limits consistent across JobClient, MRAppMaster, and YarnChild |  Major | applicationmaster, client, task | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5817](https://issues.apache.org/jira/browse/MAPREDUCE-5817) | Mappers get rescheduled on node transition even after all reducers are completed |  Major | applicationmaster | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-5807](https://issues.apache.org/jira/browse/MAPREDUCE-5807) | Print usage for TeraSort job. |  Trivial | examples | Rohith Sharma K S | Rohith Sharma K S |
| [MAPREDUCE-5708](https://issues.apache.org/jira/browse/MAPREDUCE-5708) | Duplicate String.format in YarnOutputFiles.getSpillFileForWrite |  Minor | . | Konstantin Weitz | Konstantin Weitz |
| [MAPREDUCE-5649](https://issues.apache.org/jira/browse/MAPREDUCE-5649) | Reduce cannot use more than 2G memory  for the final merge |  Major | mrv2 | stanley shi | Gera Shegalov |
| [MAPREDUCE-5448](https://issues.apache.org/jira/browse/MAPREDUCE-5448) | MapFileOutputFormat#getReaders bug with invisible files/folders |  Minor | mrv2 | Maysam Yabandeh | Maysam Yabandeh |
| [MAPREDUCE-5002](https://issues.apache.org/jira/browse/MAPREDUCE-5002) | AM could potentially allocate a reduce container to a map attempt |  Major | mr-am | Jason Lowe | Chang Li |
| [MAPREDUCE-4844](https://issues.apache.org/jira/browse/MAPREDUCE-4844) | Counters / AbstractCounters have constant references not declared final |  Major | . | Gera Shegalov | Brahma Reddy Battula |
| [MAPREDUCE-3383](https://issues.apache.org/jira/browse/MAPREDUCE-3383) | Duplicate job.getOutputValueGroupingComparator() in ReduceTask |  Major | . | Binglin Chang | Binglin Chang |
| [MAPREDUCE-2094](https://issues.apache.org/jira/browse/MAPREDUCE-2094) | LineRecordReader should not seek into non-splittable, compressed streams. |  Major | task | Niels Basjes | Niels Basjes |
| [YARN-4188](https://issues.apache.org/jira/browse/YARN-4188) | MoveApplicationAcrossQueuesResponse should be an abstract class |  Minor | resourcemanager | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [YARN-4167](https://issues.apache.org/jira/browse/YARN-4167) | NPE on RMActiveServices#serviceStop when store is null |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4151](https://issues.apache.org/jira/browse/YARN-4151) | Fix findbugs errors in hadoop-yarn-server-common module |  Major | . | MENG DING | MENG DING |
| [YARN-4126](https://issues.apache.org/jira/browse/YARN-4126) | RM should not issue delegation tokens in unsecure mode |  Major | . | Jian He | Bibin A Chundatt |
| [YARN-4121](https://issues.apache.org/jira/browse/YARN-4121) | Typos in capacity scheduler documentation. |  Trivial | documentation | Kai Sasaki | Kai Sasaki |
| [YARN-4115](https://issues.apache.org/jira/browse/YARN-4115) | Reduce loglevel of ContainerManagementProtocolProxy to Debug |  Minor | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-4106](https://issues.apache.org/jira/browse/YARN-4106) | NodeLabels for NM in distributed mode is not updated even after clusterNodelabel addition in RM |  Major | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4078](https://issues.apache.org/jira/browse/YARN-4078) | getPendingResourceRequestForAttempt is present in AbstractYarnScheduler should be present in YarnScheduler interface instead |  Minor | resourcemanager | Naganarasimha G R | Naganarasimha G R |
| [YARN-4073](https://issues.apache.org/jira/browse/YARN-4073) | Unused ApplicationACLsManager in ContainerManagerImpl |  Trivial | . | Naganarasimha G R | Naganarasimha G R |
| [YARN-4028](https://issues.apache.org/jira/browse/YARN-4028) | AppBlock page key update and diagnostics value null on recovery |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4026](https://issues.apache.org/jira/browse/YARN-4026) | FiCaSchedulerApp: ContainerAllocator should be able to choose how to order pending resource requests |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-4005](https://issues.apache.org/jira/browse/YARN-4005) | Completed container whose app is finished is not removed from NMStateStore |  Major | . | Jun Gong | Jun Gong |
| [YARN-3987](https://issues.apache.org/jira/browse/YARN-3987) | am container complete msg ack to NM once RM receive it |  Major | resourcemanager | sandflee | sandflee |
| [YARN-3986](https://issues.apache.org/jira/browse/YARN-3986) | getTransferredContainers in AbstractYarnScheduler should be present in YarnScheduler interface instead |  Major | scheduler | Varun Saxena | Varun Saxena |
| [YARN-3983](https://issues.apache.org/jira/browse/YARN-3983) | Make CapacityScheduler to easier extend application allocation logic |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-3982](https://issues.apache.org/jira/browse/YARN-3982) | container-executor parsing of container-executor.cfg broken in trunk and branch-2 |  Blocker | nodemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3973](https://issues.apache.org/jira/browse/YARN-3973) | Recent changes to application priority management break reservation system from YARN-1051 |  Major | resourcemanager | Carlo Curino | Carlo Curino |
| [YARN-3971](https://issues.apache.org/jira/browse/YARN-3971) | Skip RMNodeLabelsManager#checkRemoveFromClusterNodeLabelsOfQueue on nodelabel recovery |  Critical | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3966](https://issues.apache.org/jira/browse/YARN-3966) | Fix excessive loggings in CapacityScheduler |  Major | . | Jian He | Jian He |
| [YARN-3963](https://issues.apache.org/jira/browse/YARN-3963) | AddNodeLabel on duplicate label addition shows success |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3958](https://issues.apache.org/jira/browse/YARN-3958) | TestYarnConfigurationFields should be moved to hadoop-yarn-api module |  Major | . | Varun Saxena | Varun Saxena |
| [YARN-3957](https://issues.apache.org/jira/browse/YARN-3957) | FairScheduler NPE In FairSchedulerQueueInfo causing scheduler page to return 500 |  Major | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3954](https://issues.apache.org/jira/browse/YARN-3954) | TestYarnConfigurationFields#testCompareConfigurationClassAgainstXml fails in trunk |  Major | . | Varun Saxena | Varun Saxena |
| [YARN-3941](https://issues.apache.org/jira/browse/YARN-3941) | Proportional Preemption policy should try to avoid sending duplicate PREEMPT\_CONTAINER event to scheduler |  Major | capacityscheduler | Sunil G | Sunil G |
| [YARN-3932](https://issues.apache.org/jira/browse/YARN-3932) | SchedulerApplicationAttempt#getResourceUsageReport and UserInfo should based on total-used-resources |  Major | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3919](https://issues.apache.org/jira/browse/YARN-3919) | NPEs' while stopping service after exception during CommonNodeLabelsManager#start |  Trivial | resourcemanager | Varun Saxena | Varun Saxena |
| [YARN-3917](https://issues.apache.org/jira/browse/YARN-3917) | getResourceCalculatorPlugin for the default should intercept all exceptions |  Major | . | Gera Shegalov | Gera Shegalov |
| [YARN-3905](https://issues.apache.org/jira/browse/YARN-3905) | Application History Server UI NPEs when accessing apps run after RM restart |  Major | timelineserver | Eric Payne | Eric Payne |
| [YARN-3900](https://issues.apache.org/jira/browse/YARN-3900) | Protobuf layout  of yarn\_security\_token causes errors in other protos that include it |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3896](https://issues.apache.org/jira/browse/YARN-3896) | RMNode transitioned from RUNNING to REBOOTED because its response id had not been reset synchronously |  Major | resourcemanager | Jun Gong | Jun Gong |
| [YARN-3894](https://issues.apache.org/jira/browse/YARN-3894) | RM startup should fail for wrong CS xml NodeLabel capacity configuration |  Critical | capacityscheduler | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3892](https://issues.apache.org/jira/browse/YARN-3892) | NPE on RMStateStore#serviceStop when CapacityScheduler#serviceInit fails |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3888](https://issues.apache.org/jira/browse/YARN-3888) | ApplicationMaster link is broken in RM WebUI when appstate is NEW |  Minor | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3885](https://issues.apache.org/jira/browse/YARN-3885) | ProportionalCapacityPreemptionPolicy doesn't preempt if queue is more than 2 level |  Blocker | yarn | Ajith S | Ajith S |
| [YARN-3882](https://issues.apache.org/jira/browse/YARN-3882) | AggregatedLogFormat should close aclScanner and ownerScanner after create them. |  Minor | nodemanager | zhihai xu | zhihai xu |
| [YARN-3875](https://issues.apache.org/jira/browse/YARN-3875) | FSSchedulerNode#reserveResource() doesn't print Application Id properly in log |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3860](https://issues.apache.org/jira/browse/YARN-3860) | rmadmin -transitionToActive should check the state of non-target node |  Major | resourcemanager | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-3859](https://issues.apache.org/jira/browse/YARN-3859) | LeafQueue doesn't print user properly for application add |  Minor | capacityscheduler | Devaraj K | Varun Saxena |
| [YARN-3849](https://issues.apache.org/jira/browse/YARN-3849) | Too much of preemption activity causing continuos killing of containers across queues |  Critical | capacityscheduler | Sunil G | Sunil G |
| [YARN-3846](https://issues.apache.org/jira/browse/YARN-3846) | RM Web UI queue filter is not working |  Major | yarn | Mohammad Shahid Khan | Mohammad Shahid Khan |
| [YARN-3845](https://issues.apache.org/jira/browse/YARN-3845) | Scheduler page does not render RGBA color combinations in IE11 |  Minor | . | Jagadesh Kiran N | Mohammad Shahid Khan |
| [YARN-3837](https://issues.apache.org/jira/browse/YARN-3837) | javadocs of TimelineAuthenticationFilterInitializer give wrong prefix for auth options |  Minor | timelineserver | Steve Loughran | Bibin A Chundatt |
| [YARN-3835](https://issues.apache.org/jira/browse/YARN-3835) | hadoop-yarn-server-resourcemanager test package bundles core-site.xml, yarn-site.xml |  Minor | resourcemanager | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [YARN-3830](https://issues.apache.org/jira/browse/YARN-3830) | AbstractYarnScheduler.createReleaseCache may try to clean a null attempt |  Major | scheduler | nijel | nijel |
| [YARN-3826](https://issues.apache.org/jira/browse/YARN-3826) | Race condition in ResourceTrackerService leads to wrong diagnostics messages |  Major | resourcemanager | Chengbing Liu | Chengbing Liu |
| [YARN-3824](https://issues.apache.org/jira/browse/YARN-3824) | Fix two minor nits in member variable properties of YarnConfiguration |  Trivial | yarn | Ray Chiang | Ray Chiang |
| [YARN-3823](https://issues.apache.org/jira/browse/YARN-3823) | Fix mismatch in default values for yarn.scheduler.maximum-allocation-vcores property |  Minor | . | Ray Chiang | Ray Chiang |
| [YARN-3805](https://issues.apache.org/jira/browse/YARN-3805) | Update the documentation of Disk Checker based on YARN-90 |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-3802](https://issues.apache.org/jira/browse/YARN-3802) | Two RMNodes for the same NodeId are used in RM sometimes after NM is reconnected. |  Major | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3794](https://issues.apache.org/jira/browse/YARN-3794) | TestRMEmbeddedElector fails because of ambiguous LOG reference |  Major | test | Chengbing Liu | Chengbing Liu |
| [YARN-3790](https://issues.apache.org/jira/browse/YARN-3790) | usedResource from rootQueue metrics may get stale data for FS scheduler after recovering the container |  Major | fairscheduler, test | Rohith Sharma K S | zhihai xu |
| [YARN-3785](https://issues.apache.org/jira/browse/YARN-3785) | Support for Resource as an argument during submitApp call in MockRM test class |  Minor | resourcemanager | Sunil G | Sunil G |
| [YARN-3780](https://issues.apache.org/jira/browse/YARN-3780) | Should use equals when compare Resource in RMNodeImpl#ReconnectNodeTransition |  Minor | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3778](https://issues.apache.org/jira/browse/YARN-3778) | Fix Yarn resourcemanger CLI usage |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-3770](https://issues.apache.org/jira/browse/YARN-3770) | SerializedException should also handle java.lang.Error |  Major | . | Lavkesh Lahngir | Lavkesh Lahngir |
| [YARN-3768](https://issues.apache.org/jira/browse/YARN-3768) | ArrayIndexOutOfBoundsException with empty environment variables |  Major | yarn | Joe Ferner | zhihai xu |
| [YARN-3762](https://issues.apache.org/jira/browse/YARN-3762) | FairScheduler: CME on FSParentQueue#getQueueUserAclInfo |  Critical | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-3751](https://issues.apache.org/jira/browse/YARN-3751) | TestAHSWebServices fails after YARN-3467 |  Major | . | Zhijie Shen | Sunil G |
| [YARN-3749](https://issues.apache.org/jira/browse/YARN-3749) | We should make a copy of configuration when init MiniYARNCluster with multiple RMs |  Major | . | Chun Chen | Chun Chen |
| [YARN-3747](https://issues.apache.org/jira/browse/YARN-3747) | TestLocalDirsHandlerService should delete the created test directory logDir2 |  Minor | test | David Moore | David Moore |
| [YARN-3745](https://issues.apache.org/jira/browse/YARN-3745) | SerializedException should also try to instantiate internal exception with the default constructor |  Major | . | Lavkesh Lahngir | Lavkesh Lahngir |
| [YARN-3714](https://issues.apache.org/jira/browse/YARN-3714) | AM proxy filter can not get RM webapp address from yarn.resourcemanager.hostname.rm-id |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-3707](https://issues.apache.org/jira/browse/YARN-3707) | RM Web UI queue filter doesn't work |  Blocker | . | Wangda Tan | Wangda Tan |
| [YARN-3695](https://issues.apache.org/jira/browse/YARN-3695) | ServerProxy (NMProxy, etc.) shouldn't retry forever for non network exception. |  Major | . | Junping Du | Raju Bairishetti |
| [YARN-3690](https://issues.apache.org/jira/browse/YARN-3690) | [JDK8] 'mvn site' fails |  Major | api, site | Akira AJISAKA | Brahma Reddy Battula |
| [YARN-3655](https://issues.apache.org/jira/browse/YARN-3655) | FairScheduler: potential livelock due to maxAMShare limitation and container reservation |  Critical | fairscheduler | zhihai xu | zhihai xu |
| [YARN-3654](https://issues.apache.org/jira/browse/YARN-3654) | ContainerLogsPage web UI should not have meta-refresh |  Major | yarn | Xuan Gong | Xuan Gong |
| [YARN-3629](https://issues.apache.org/jira/browse/YARN-3629) | NodeID is always printed as "null" in node manager initialization log. |  Major | . | nijel | nijel |
| [YARN-3617](https://issues.apache.org/jira/browse/YARN-3617) | Fix WindowsResourceCalculatorPlugin.getCpuFrequency() returning always -1 |  Minor | . | Georg Berendt | J.Andreina |
| [YARN-3604](https://issues.apache.org/jira/browse/YARN-3604) | removeApplication in ZKRMStateStore should also disable watch. |  Minor | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3602](https://issues.apache.org/jira/browse/YARN-3602) | TestResourceLocalizationService.testPublicResourceInitializesLocalDir fails Intermittently due to IOException from cleanup |  Minor | test | zhihai xu | zhihai xu |
| [YARN-3600](https://issues.apache.org/jira/browse/YARN-3600) | AM container link is broken (on a killed application, at least) |  Major | . | Sergey Shelukhin | Naganarasimha G R |
| [YARN-3594](https://issues.apache.org/jira/browse/YARN-3594) | WintuilsProcessStubExecutor.startStreamReader leaks streams |  Trivial | nodemanager | Steve Loughran | Lars Francke |
| [YARN-3592](https://issues.apache.org/jira/browse/YARN-3592) | Fix typos in RMNodeLabelsManager |  Trivial | resourcemanager | Junping Du | Sunil G |
| [YARN-3591](https://issues.apache.org/jira/browse/YARN-3591) | Resource localization on a bad disk causes subsequent containers failure |  Major | . | Lavkesh Lahngir | Lavkesh Lahngir |
| [YARN-3589](https://issues.apache.org/jira/browse/YARN-3589) | RM and AH web UI display DOCTYPE wrongly |  Major | webapp | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-3587](https://issues.apache.org/jira/browse/YARN-3587) | Fix the javadoc of DelegationTokenSecretManager in projects of yarn, etc. |  Minor | documentation | Akira AJISAKA | Gabor Liptak |
| [YARN-3584](https://issues.apache.org/jira/browse/YARN-3584) | [Log mesage correction] : MIssing space in Diagnostics message |  Trivial | . | nijel | nijel |
| [YARN-3582](https://issues.apache.org/jira/browse/YARN-3582) | NPE in WebAppProxyServlet |  Major | . | Jian He | Jian He |
| [YARN-3577](https://issues.apache.org/jira/browse/YARN-3577) | Misspelling of threshold in log4j.properties for tests |  Minor | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-3572](https://issues.apache.org/jira/browse/YARN-3572) | Correct typos in WritingYarnApplications.md |  Minor | documentation | Sandeep Khurana | Gabor Liptak |
| [YARN-3564](https://issues.apache.org/jira/browse/YARN-3564) | Fix TestContainerAllocation.testAMContainerAllocationWhenDNSUnavailable fails randomly |  Major | . | Jian He | Jian He |
| [YARN-3552](https://issues.apache.org/jira/browse/YARN-3552) | RM Web UI shows -1 running containers for completed apps |  Trivial | webapp | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-3533](https://issues.apache.org/jira/browse/YARN-3533) | Test: Fix launchAM in MockRM to wait for attempt to be scheduled |  Major | yarn | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3530](https://issues.apache.org/jira/browse/YARN-3530) | ATS throws exception on trying to filter results without otherinfo. |  Critical | timelineserver | Sreenath Somarajapuram | Zhijie Shen |
| [YARN-3523](https://issues.apache.org/jira/browse/YARN-3523) | Cleanup ResourceManagerAdministrationProtocol interface audience |  Major | client, resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-3517](https://issues.apache.org/jira/browse/YARN-3517) | RM web ui for dumping scheduler logs should be for admins only |  Blocker | resourcemanager, security | Varun Vasudev | Varun Vasudev |
| [YARN-3495](https://issues.apache.org/jira/browse/YARN-3495) | Confusing log generated by FairScheduler |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-3493](https://issues.apache.org/jira/browse/YARN-3493) | RM fails to come up with error "Failed to load/recover state" when  mem settings are changed |  Critical | yarn | Sumana Sathish | Jian He |
| [YARN-3473](https://issues.apache.org/jira/browse/YARN-3473) | Fix RM Web UI configuration for some properties |  Minor | resourcemanager | Ray Chiang | Ray Chiang |
| [YARN-3459](https://issues.apache.org/jira/browse/YARN-3459) | Fix failiure of TestLog4jWarningErrorMetricsAppender |  Blocker | . | Li Lu | Varun Vasudev |
| [YARN-3453](https://issues.apache.org/jira/browse/YARN-3453) | Fair Scheduler: Parts of preemption logic uses DefaultResourceCalculator even in DRF mode causing thrashing |  Major | fairscheduler | Ashwin Shankar | Arun Suresh |
| [YARN-3444](https://issues.apache.org/jira/browse/YARN-3444) | Fix typo capabililty |  Trivial | applications/distributed-shell | Gabor Liptak | Gabor Liptak |
| [YARN-3436](https://issues.apache.org/jira/browse/YARN-3436) | Fix URIs in documention of YARN web service REST APIs |  Minor | documentation, resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3435](https://issues.apache.org/jira/browse/YARN-3435) | AM container to be allocated Appattempt AM container shown as null |  Trivial | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3434](https://issues.apache.org/jira/browse/YARN-3434) | Interaction between reservations and userlimit can result in significant ULF violation |  Major | capacityscheduler | Thomas Graves | Thomas Graves |
| [YARN-3433](https://issues.apache.org/jira/browse/YARN-3433) | Jersey tests failing with Port in Use -again |  Critical | build, test | Steve Loughran | Brahma Reddy Battula |
| [YARN-3429](https://issues.apache.org/jira/browse/YARN-3429) | TestAMRMTokens.testTokenExpiry fails Intermittently with error message:Invalid AMRMToken |  Major | test | zhihai xu | zhihai xu |
| [YARN-3425](https://issues.apache.org/jira/browse/YARN-3425) | NPE from RMNodeLabelsManager.serviceStop when NodeLabelsManager.serviceInit failed |  Minor | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3415](https://issues.apache.org/jira/browse/YARN-3415) | Non-AM containers can be counted towards amResourceUsage of a Fair Scheduler queue |  Critical | fairscheduler | Rohit Agarwal | zhihai xu |
| [YARN-3400](https://issues.apache.org/jira/browse/YARN-3400) | [JDK 8] Build Failure due to unreported exceptions in RPCUtil |  Major | . | Robert Kanter | Robert Kanter |
| [YARN-3397](https://issues.apache.org/jira/browse/YARN-3397) | yarn rmadmin should skip -failover |  Minor | resourcemanager | J.Andreina | J.Andreina |
| [YARN-3396](https://issues.apache.org/jira/browse/YARN-3396) | Handle URISyntaxException in ResourceLocalizationService |  Major | nodemanager | Chengbing Liu | Brahma Reddy Battula |
| [YARN-3395](https://issues.apache.org/jira/browse/YARN-3395) | FairScheduler: Trim whitespaces when using username for queuename |  Major | fairscheduler | zhihai xu | zhihai xu |
| [YARN-3394](https://issues.apache.org/jira/browse/YARN-3394) | WebApplication  proxy documentation is incomplete |  Minor | resourcemanager | Bibin A Chundatt | Naganarasimha G R |
| [YARN-3387](https://issues.apache.org/jira/browse/YARN-3387) | Previous AM's container complete message couldn't pass to current am if am restarted and rm changed |  Critical | resourcemanager | sandflee | sandflee |
| [YARN-3383](https://issues.apache.org/jira/browse/YARN-3383) | AdminService should use "warn" instead of "info" to log exception when operation fails |  Major | resourcemanager | Wangda Tan | Li Lu |
| [YARN-3375](https://issues.apache.org/jira/browse/YARN-3375) | NodeHealthScriptRunner.shouldRun() check is performing 3 times for starting NodeHealthScriptRunner |  Minor | nodemanager | Devaraj K | Devaraj K |
| [YARN-3305](https://issues.apache.org/jira/browse/YARN-3305) | AM-Used Resource for leafqueue is wrongly populated if AM ResourceRequest is less than minimumAllocation |  Major | scheduler | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-3269](https://issues.apache.org/jira/browse/YARN-3269) | Yarn.nodemanager.remote-app-log-dir could not be configured to fully qualified path |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-3266](https://issues.apache.org/jira/browse/YARN-3266) | RMContext inactiveNodes should have NodeId as map key |  Major | resourcemanager | Chengbing Liu | Chengbing Liu |
| [YARN-3243](https://issues.apache.org/jira/browse/YARN-3243) | CapacityScheduler should pass headroom from parent to children to make sure ParentQueue obey its capacity limits. |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3205](https://issues.apache.org/jira/browse/YARN-3205) | FileSystemRMStateStore should disable FileSystem Cache to avoid get a Filesystem with an old configuration. |  Major | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3197](https://issues.apache.org/jira/browse/YARN-3197) | Confusing log generated by CapacityScheduler |  Minor | capacityscheduler | Hitesh Shah | Varun Saxena |
| [YARN-3097](https://issues.apache.org/jira/browse/YARN-3097) | Logging of resource recovery on NM restart has redundancies |  Minor | nodemanager | Jason Lowe | Eric Payne |
| [YARN-3021](https://issues.apache.org/jira/browse/YARN-3021) | YARN's delegation-token handling disallows certain trust setups to operate properly over DistCp |  Major | security | Harsh J | Yongjun Zhang |
| [YARN-3018](https://issues.apache.org/jira/browse/YARN-3018) | Unify the default value for yarn.scheduler.capacity.node-locality-delay in code and default xml file |  Trivial | capacityscheduler | nijel | nijel |
| [YARN-2893](https://issues.apache.org/jira/browse/YARN-2893) | AMLaucher: sporadic job failures due to EOFException in readTokenStorageStream |  Major | resourcemanager | Gera Shegalov | zhihai xu |
| [YARN-2890](https://issues.apache.org/jira/browse/YARN-2890) | MiniYarnCluster should turn on timeline service if configured to do so |  Major | . | Mit Desai | Mit Desai |
| [YARN-2821](https://issues.apache.org/jira/browse/YARN-2821) | Distributed shell app master becomes unresponsive sometimes |  Major | applications/distributed-shell | Varun Vasudev | Varun Vasudev |
| [YARN-2725](https://issues.apache.org/jira/browse/YARN-2725) | Adding test cases of retrying requests about ZKRMStateStore |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2454](https://issues.apache.org/jira/browse/YARN-2454) | Fix compareTo of variable UNBOUNDED in o.a.h.y.util.resource.Resources. |  Major | . | Xu Yang | Xu Yang |
| [YARN-2421](https://issues.apache.org/jira/browse/YARN-2421) | RM still allocates containers to an app in the FINISHING state |  Major | scheduler | Thomas Graves | Chang Li |
| [YARN-2194](https://issues.apache.org/jira/browse/YARN-2194) | Cgroups cease to work in RHEL7 |  Critical | nodemanager | Wei Yan | Wei Yan |
| [YARN-2123](https://issues.apache.org/jira/browse/YARN-2123) | Progress bars in Web UI always at 100% due to non-US locale |  Major | webapp | Johannes Simon | Akira AJISAKA |
| [YARN-2019](https://issues.apache.org/jira/browse/YARN-2019) | Retrospect on decision of making RM crashed if any exception throw in ZKRMStateStore |  Critical | . | Junping Du | Jian He |
| [YARN-1993](https://issues.apache.org/jira/browse/YARN-1993) | Cross-site scripting vulnerability in TextView.java |  Major | webapp | Ted Yu | Kenji Kikushima |
| [YARN-1912](https://issues.apache.org/jira/browse/YARN-1912) | ResourceLocalizer started without any jvm memory control |  Major | nodemanager | stanley shi | Masatake Iwasaki |
| [YARN-1832](https://issues.apache.org/jira/browse/YARN-1832) | Fix wrong MockLocalizerStatus#equals implementation |  Minor | nodemanager | Hong Zhiguo | Hong Zhiguo |
| [YARN-1556](https://issues.apache.org/jira/browse/YARN-1556) | NPE getting application report with a null appId |  Minor | client | Steve Loughran | Weiwei Yang |
| [YARN-1519](https://issues.apache.org/jira/browse/YARN-1519) | check if sysconf is implemented before using it |  Major | nodemanager | Radim Kolar | Radim Kolar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12035](https://issues.apache.org/jira/browse/HADOOP-12035) | shellcheck plugin displays a wrong version potentially |  Trivial | build | Kengo Seki | Kengo Seki |
| [HADOOP-12030](https://issues.apache.org/jira/browse/HADOOP-12030) | test-patch should only report on newly introduced findbugs warnings. |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-12000](https://issues.apache.org/jira/browse/HADOOP-12000) | cannot use --java-home in test-patch |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11965](https://issues.apache.org/jira/browse/HADOOP-11965) | determine-flaky-tests needs a summary mode |  Minor | . | Allen Wittenauer | Yufei Gu |
| [HADOOP-11949](https://issues.apache.org/jira/browse/HADOOP-11949) | Add user-provided plugins to test-patch |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-11944](https://issues.apache.org/jira/browse/HADOOP-11944) | add option to test-patch to avoid relocating patch process directory |  Minor | . | Sean Busbey | Sean Busbey |
| [HADOOP-11930](https://issues.apache.org/jira/browse/HADOOP-11930) | test-patch in offline mode should tell maven to be in offline mode |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-11906](https://issues.apache.org/jira/browse/HADOOP-11906) | test-patch.sh should use 'file' command for patch determinism |  Major | . | Allen Wittenauer | Sean Busbey |
| [HADOOP-11904](https://issues.apache.org/jira/browse/HADOOP-11904) | test-patch.sh goes into an infinite loop on non-maven builds |  Critical | test | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11884](https://issues.apache.org/jira/browse/HADOOP-11884) | test-patch.sh should pull the real findbugs version |  Minor | test | Allen Wittenauer | Kengo Seki |
| [HADOOP-11881](https://issues.apache.org/jira/browse/HADOOP-11881) | test-patch.sh javac result is wildly wrong |  Major | build, test | Allen Wittenauer | Kengo Seki |
| [HDFS-8834](https://issues.apache.org/jira/browse/HDFS-8834) | TestReplication#testReplicationWhenBlockCorruption is not valid after HDFS-6482 |  Minor | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-8645](https://issues.apache.org/jira/browse/HDFS-8645) | Resolve inconsistent code in TestReplicationPolicy between trunk and branch-2 |  Major | namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-8247](https://issues.apache.org/jira/browse/HDFS-8247) | TestDiskspaceQuotaUpdate#testAppendOverTypeQuota is failing |  Major | HDFS | Anu Engineer | Xiaoyu Yao |
| [HDFS-8243](https://issues.apache.org/jira/browse/HDFS-8243) | Files written by TestHostsFiles and TestNameNodeMXBean are causing Release Audit Warnings. |  Minor | test | Ruth Wisniewski | Ruth Wisniewski |
| [HDFS-7559](https://issues.apache.org/jira/browse/HDFS-7559) | Create unit test to automatically compare HDFS related classes and hdfs-default.xml |  Minor | . | Ray Chiang | Ray Chiang |
| [HDFS-6408](https://issues.apache.org/jira/browse/HDFS-6408) | Remove redundant definitions in log4j.properties |  Minor | test | Abhiraj Butala | Abhiraj Butala |
| [HDFS-6263](https://issues.apache.org/jira/browse/HDFS-6263) | Remove DRFA.MaxBackupIndex config from log4j.properties |  Minor | . | Akira AJISAKA | Abhiraj Butala |
| [HDFS-2070](https://issues.apache.org/jira/browse/HDFS-2070) | Add more unit tests for FsShell getmerge |  Major | test | XieXianshan | Daniel Templeton |
| [MAPREDUCE-6204](https://issues.apache.org/jira/browse/MAPREDUCE-6204) | TestJobCounters should use new properties instead of JobConf.MAPRED\_TASK\_JAVA\_OPTS |  Minor | test | sam liu | sam liu |
| [MAPREDUCE-5045](https://issues.apache.org/jira/browse/MAPREDUCE-5045) | UtilTest#isCygwin method appears to be unused |  Trivial | contrib/streaming, test | Chris Nauroth | Neelesh Srinivas Salian |
| [YARN-3992](https://issues.apache.org/jira/browse/YARN-3992) | TestApplicationPriority.testApplicationPriorityAllocation fails intermittently |  Major | . | Zhijie Shen | Sunil G |
| [YARN-3956](https://issues.apache.org/jira/browse/YARN-3956) | Fix TestNodeManagerHardwareUtils fails on Mac |  Minor | nodemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3580](https://issues.apache.org/jira/browse/YARN-3580) | [JDK 8] TestClientRMService.testGetLabelsToNodes fails |  Major | test | Robert Kanter | Robert Kanter |
| [YARN-3343](https://issues.apache.org/jira/browse/YARN-3343) | TestCapacitySchedulerNodeLabelUpdate.testNodeUpdate sometime fails in trunk |  Minor | . | Xuan Gong | Rohith Sharma K S |
| [YARN-3339](https://issues.apache.org/jira/browse/YARN-3339) | TestDockerContainerExecutor should pull a single image and not the entire centos repository |  Minor | test | Ravindra Kumar Naik | Ravindra Kumar Naik |
| [YARN-2871](https://issues.apache.org/jira/browse/YARN-2871) | TestRMRestart#testRMRestartGetApplicationList sometime fails in trunk |  Minor | . | Ted Yu | zhihai xu |
| [YARN-2666](https://issues.apache.org/jira/browse/YARN-2666) | TestFairScheduler.testContinuousScheduling fails Intermittently |  Major | scheduler | Tsuyoshi Ozawa | zhihai xu |
| [YARN-1880](https://issues.apache.org/jira/browse/YARN-1880) | Cleanup TestApplicationClientProtocolOnHA |  Trivial | test | Tsuyoshi Ozawa | Tsuyoshi Ozawa |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12269](https://issues.apache.org/jira/browse/HADOOP-12269) | Update aws-sdk dependency to 1.10.6 |  Major | fs/s3 | Thomas Demoor | Thomas Demoor |
| [HADOOP-12184](https://issues.apache.org/jira/browse/HADOOP-12184) | Remove unused Linux-specific constants in NativeIO |  Major | native | Martin Walsh | Martin Walsh |
| [HADOOP-12170](https://issues.apache.org/jira/browse/HADOOP-12170) | hadoop-common's JNIFlags.cmake is redundant and can be removed |  Minor | native | Alan Burlison | Alan Burlison |
| [HADOOP-12112](https://issues.apache.org/jira/browse/HADOOP-12112) | Make hadoop-common-project Native code -Wall-clean |  Major | native | Alan Burlison | Alan Burlison |
| [HADOOP-12104](https://issues.apache.org/jira/browse/HADOOP-12104) | Migrate Hadoop Pipes native build to new CMake framework |  Major | build | Alan Burlison | Alan Burlison |
| [HADOOP-12036](https://issues.apache.org/jira/browse/HADOOP-12036) | Consolidate all of the cmake extensions in one directory |  Major | . | Allen Wittenauer | Alan Burlison |
| [HADOOP-11974](https://issues.apache.org/jira/browse/HADOOP-11974) | Fix FIONREAD #include on Solaris |  Minor | net | Alan Burlison | Alan Burlison |
| [HADOOP-10597](https://issues.apache.org/jira/browse/HADOOP-10597) | RPC Server signals backoff to clients when all request queues are full |  Major | . | Ming Ma | Ming Ma |
| [HADOOP-7824](https://issues.apache.org/jira/browse/HADOOP-7824) | NativeIO.java flags and identifiers must be set correctly for each platform, not hardcoded to their Linux values |  Major | native | Dmytro Shteflyuk | Martin Walsh |
| [HDFS-9111](https://issues.apache.org/jira/browse/HDFS-9111) | Move hdfs-client protobuf convert methods from PBHelper to PBHelperClient |  Major | . | Mingliang Liu | Mingliang Liu |
| [HDFS-9101](https://issues.apache.org/jira/browse/HDFS-9101) | Remove deprecated NameNode.getUri() static helper method |  Major | . | Mingliang Liu | Mingliang Liu |
| [HDFS-9041](https://issues.apache.org/jira/browse/HDFS-9041) | Move entries in META-INF/services/o.a.h.fs.FileSystem to hdfs-client |  Major | build | Haohui Mai | Mingliang Liu |
| [HDFS-9022](https://issues.apache.org/jira/browse/HDFS-9022) | Move NameNode.getAddress() and NameNode.getUri() to hadoop-hdfs-client |  Major | hdfs-client | Mingliang Liu | Mingliang Liu |
| [HDFS-9012](https://issues.apache.org/jira/browse/HDFS-9012) | Move o.a.h.hdfs.protocol.datatransfer.PipelineAck class to hadoop-hdfs-client module |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-9010](https://issues.apache.org/jira/browse/HDFS-9010) | Replace NameNode.DEFAULT\_PORT with HdfsClientConfigKeys.DFS\_NAMENODE\_RPC\_PORT\_DEFAULT config key |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-9008](https://issues.apache.org/jira/browse/HDFS-9008) | Balancer#Parameters class could use a builder pattern |  Minor | balancer & mover | Chris Trezzo | Chris Trezzo |
| [HDFS-9004](https://issues.apache.org/jira/browse/HDFS-9004) | Add upgrade domain to DatanodeInfo |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9002](https://issues.apache.org/jira/browse/HDFS-9002) | Move o.a.h.hdfs.net/\*Peer classes to hdfs-client |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-8990](https://issues.apache.org/jira/browse/HDFS-8990) | Move RemoteBlockReader to hdfs-client module |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-8984](https://issues.apache.org/jira/browse/HDFS-8984) | Move replication queues related methods in FSNamesystem to BlockManager |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8980](https://issues.apache.org/jira/browse/HDFS-8980) | Remove unnecessary block replacement in INodeFile |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-8962](https://issues.apache.org/jira/browse/HDFS-8962) | Clean up checkstyle warnings in o.a.h.hdfs.DfsClientConf |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-8951](https://issues.apache.org/jira/browse/HDFS-8951) | Move the shortcircuit package to hdfs-client |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-8948](https://issues.apache.org/jira/browse/HDFS-8948) | Use GenericTestUtils to set log levels in TestPread and TestReplaceDatanodeOnFailure |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-8934](https://issues.apache.org/jira/browse/HDFS-8934) | Move ShortCircuitShm to hdfs-client |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-8925](https://issues.apache.org/jira/browse/HDFS-8925) | Move BlockReaderLocal to hdfs-client |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-8890](https://issues.apache.org/jira/browse/HDFS-8890) | Allow admin to specify which blockpools the balancer should run on |  Major | balancer & mover | Chris Trezzo | Chris Trezzo |
| [HDFS-8862](https://issues.apache.org/jira/browse/HDFS-8862) | BlockManager#excessReplicateMap should use a HashMap |  Major | namenode | Yi Liu | Yi Liu |
| [HDFS-8826](https://issues.apache.org/jira/browse/HDFS-8826) | Balancer may not move blocks efficiently in some cases |  Major | balancer & mover | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8824](https://issues.apache.org/jira/browse/HDFS-8824) | Do not use small blocks for balancing the cluster |  Major | balancer & mover | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8823](https://issues.apache.org/jira/browse/HDFS-8823) | Move replication factor into individual blocks |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8818](https://issues.apache.org/jira/browse/HDFS-8818) | Allow Balancer to run faster |  Major | balancer & mover | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8805](https://issues.apache.org/jira/browse/HDFS-8805) | Archival Storage: getStoragePolicy should not need superuser privilege |  Major | balancer & mover, namenode | Hui Zheng | Brahma Reddy Battula |
| [HDFS-8803](https://issues.apache.org/jira/browse/HDFS-8803) | Move DfsClientConf to hdfs-client |  Major | build | Haohui Mai | Mingliang Liu |
| [HDFS-8801](https://issues.apache.org/jira/browse/HDFS-8801) | Convert BlockInfoUnderConstruction as a feature |  Major | namenode | Zhe Zhang | Jing Zhao |
| [HDFS-8795](https://issues.apache.org/jira/browse/HDFS-8795) | Improve InvalidateBlocks#node2blocks |  Major | . | Yi Liu | Yi Liu |
| [HDFS-8794](https://issues.apache.org/jira/browse/HDFS-8794) | Improve CorruptReplicasMap#corruptReplicasMap |  Major | . | Yi Liu | Yi Liu |
| [HDFS-8792](https://issues.apache.org/jira/browse/HDFS-8792) | BlockManager#postponedMisreplicatedBlocks should use a LightWeightHashSet to save memory |  Major | . | Yi Liu | Yi Liu |
| [HDFS-8742](https://issues.apache.org/jira/browse/HDFS-8742) | Inotify: Support event for OP\_TRUNCATE |  Major | namenode | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8730](https://issues.apache.org/jira/browse/HDFS-8730) | Clean up the import statements in ClientProtocol |  Minor | . | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-8726](https://issues.apache.org/jira/browse/HDFS-8726) | Move protobuf files that define the client-sever protocols to hdfs-client |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-8721](https://issues.apache.org/jira/browse/HDFS-8721) | Add a metric for number of encryption zones |  Major | encryption | Rakesh R | Rakesh R |
| [HDFS-8651](https://issues.apache.org/jira/browse/HDFS-8651) | Make hadoop-hdfs-project Native code -Wall-clean |  Major | native | Alan Burlison | Alan Burlison |
| [HDFS-8635](https://issues.apache.org/jira/browse/HDFS-8635) | Migrate HDFS native build to new CMake framework |  Major | build | Alan Burlison | Alan Burlison |
| [HDFS-8620](https://issues.apache.org/jira/browse/HDFS-8620) | Clean up the checkstyle warinings about ClientProtocol |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-8541](https://issues.apache.org/jira/browse/HDFS-8541) | Mover should exit with NO\_MOVE\_PROGRESS if there is no move progress |  Minor | balancer & mover | Tsz Wo Nicholas Sze | Surendra Singh Lilhore |
| [HDFS-8540](https://issues.apache.org/jira/browse/HDFS-8540) | Mover should exit with NO\_MOVE\_BLOCK if no block can be moved |  Major | balancer & mover | Tsz Wo Nicholas Sze | Surendra Singh Lilhore |
| [HDFS-8495](https://issues.apache.org/jira/browse/HDFS-8495) | Consolidate append() related implementation into a single class |  Major | namenode | Rakesh R | Rakesh R |
| [HDFS-8493](https://issues.apache.org/jira/browse/HDFS-8493) | Consolidate truncate() related implementation in a single class |  Major | . | Haohui Mai | Rakesh R |
| [HDFS-8489](https://issues.apache.org/jira/browse/HDFS-8489) | Subclass BlockInfo to represent contiguous blocks |  Major | namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-8482](https://issues.apache.org/jira/browse/HDFS-8482) | Rename BlockInfoContiguous to BlockInfo |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8454](https://issues.apache.org/jira/browse/HDFS-8454) | Remove unnecessary throttling in TestDatanodeDeath |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8403](https://issues.apache.org/jira/browse/HDFS-8403) | Eliminate retries in TestFileCreation#testOverwriteOpenForWrite |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8377](https://issues.apache.org/jira/browse/HDFS-8377) | Support HTTP/2 in datanode |  Major | . | Duo Zhang | Duo Zhang |
| [HDFS-8314](https://issues.apache.org/jira/browse/HDFS-8314) | Move HdfsServerConstants#IO\_FILE\_BUFFER\_SIZE and SMALL\_BUFFER\_SIZE to the users |  Major | . | Haohui Mai | Li Lu |
| [HDFS-8310](https://issues.apache.org/jira/browse/HDFS-8310) | Fix TestCLI.testAll 'help: help for find' on Windows |  Minor | test | Xiaoyu Yao | Kiran Kumar M R |
| [HDFS-8309](https://issues.apache.org/jira/browse/HDFS-8309) | Skip unit test using DataNodeTestUtils#injectDataDirFailure() on Windows |  Minor | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-8278](https://issues.apache.org/jira/browse/HDFS-8278) | HDFS Balancer should consider remaining storage % when checking for under-utilized machines |  Major | balancer & mover | Gopal V | Tsz Wo Nicholas Sze |
| [HDFS-8249](https://issues.apache.org/jira/browse/HDFS-8249) | Separate HdfsConstants into the client and the server side class |  Major | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8248](https://issues.apache.org/jira/browse/HDFS-8248) | Store INodeId instead of the INodeFile object in BlockInfoContiguous |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8238](https://issues.apache.org/jira/browse/HDFS-8238) | Move ClientProtocol to the hdfs-client |  Major | build | Haohui Mai | Takanobu Asanuma |
| [HDFS-8237](https://issues.apache.org/jira/browse/HDFS-8237) | Move all protocol classes used by ClientProtocol to hdfs-client |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-8218](https://issues.apache.org/jira/browse/HDFS-8218) | Move classes that used by ClientProtocol into hdfs-client |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-8192](https://issues.apache.org/jira/browse/HDFS-8192) | Eviction should key off used locked memory instead of ram disk free space |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8185](https://issues.apache.org/jira/browse/HDFS-8185) | Separate client related routines in HAUtil into a new class |  Major | build, hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8169](https://issues.apache.org/jira/browse/HDFS-8169) | Move LocatedBlocks and related classes to hdfs-client |  Major | build, hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8165](https://issues.apache.org/jira/browse/HDFS-8165) | Move GRANDFATHER\_GENERATION\_STAMP and GRANDFATER\_INODE\_ID to hdfs-client |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-8157](https://issues.apache.org/jira/browse/HDFS-8157) | Writes to RAM DISK reserve locked memory for block files |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8103](https://issues.apache.org/jira/browse/HDFS-8103) | Move BlockTokenSecretManager.AccessMode into BlockTokenIdentifier |  Minor | security | Haohui Mai | Haohui Mai |
| [HDFS-8102](https://issues.apache.org/jira/browse/HDFS-8102) | Separate webhdfs retry configuration keys from DFSConfigKeys |  Minor | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8100](https://issues.apache.org/jira/browse/HDFS-8100) | Refactor DFSClient.Conf to a standalone class |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8089](https://issues.apache.org/jira/browse/HDFS-8089) | Move o.a.h.hdfs.web.resources.\* to the client jars |  Minor | build | Haohui Mai | Haohui Mai |
| [HDFS-8086](https://issues.apache.org/jira/browse/HDFS-8086) | Move LeaseRenewer to the hdfs.client.impl package |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Takanobu Asanuma |
| [HDFS-8085](https://issues.apache.org/jira/browse/HDFS-8085) | Move CorruptFileBlockIterator to the hdfs.client.impl package |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8084](https://issues.apache.org/jira/browse/HDFS-8084) | Separate the client failover conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8083](https://issues.apache.org/jira/browse/HDFS-8083) | Separate the client write conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8082](https://issues.apache.org/jira/browse/HDFS-8082) | Separate the client read conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8080](https://issues.apache.org/jira/browse/HDFS-8080) | Separate JSON related routines used by WebHdfsFileSystem to a package local class |  Minor | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8079](https://issues.apache.org/jira/browse/HDFS-8079) | Separate the client retry conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8052](https://issues.apache.org/jira/browse/HDFS-8052) | Move WebHdfsFileSystem into hadoop-hdfs-client |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-8049](https://issues.apache.org/jira/browse/HDFS-8049) | Annotation client implementation as private |  Major | hdfs-client | Tsz Wo Nicholas Sze | Takuya Fukudome |
| [HDFS-8034](https://issues.apache.org/jira/browse/HDFS-8034) | Fix TestDFSClientRetries#testDFSClientConfigurationLocateFollowingBlockInitialDelay for Windows |  Minor | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7995](https://issues.apache.org/jira/browse/HDFS-7995) | Implement chmod in the HDFS Web UI |  Major | . | Ravi Prakash | Ravi Prakash |
| [HDFS-7986](https://issues.apache.org/jira/browse/HDFS-7986) | Allow files / directories to be deleted from the NameNode UI |  Major | . | Ravi Prakash | Ravi Prakash |
| [HDFS-7923](https://issues.apache.org/jira/browse/HDFS-7923) | The DataNodes should rate-limit their full block reports by asking the NN on heartbeat messages |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7893](https://issues.apache.org/jira/browse/HDFS-7893) | Update the POM to create a separate hdfs-client jar |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-7854](https://issues.apache.org/jira/browse/HDFS-7854) | Separate class DataStreamer out of DFSOutputStream |  Major | hdfs-client | Li Bo | Li Bo |
| [HDFS-7713](https://issues.apache.org/jira/browse/HDFS-7713) | Implement mkdirs in the HDFS Web UI |  Major | . | Ravi Prakash | Ravi Prakash |
| [HDFS-7701](https://issues.apache.org/jira/browse/HDFS-7701) | Support reporting per storage type quota and usage with hadoop/hdfs shell |  Major | datanode, namenode | Xiaoyu Yao | Peter Shi |
| [HDFS-7483](https://issues.apache.org/jira/browse/HDFS-7483) | Display information per tier on the Namenode UI |  Major | . | Benoy Antony | Benoy Antony |
| [HDFS-7390](https://issues.apache.org/jira/browse/HDFS-7390) | Provide JMX metrics per storage type |  Major | . | Benoy Antony | Benoy Antony |
| [HDFS-7192](https://issues.apache.org/jira/browse/HDFS-7192) | DN should ignore lazyPersist hint if the writer is not local |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6249](https://issues.apache.org/jira/browse/HDFS-6249) | Output AclEntry in PBImageXmlWriter |  Minor | tools | Akira AJISAKA | Surendra Singh Lilhore |
| [MAPREDUCE-6394](https://issues.apache.org/jira/browse/MAPREDUCE-6394) | Speed up Task processing loop in HsTasksBlock#render() |  Major | jobhistoryserver | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6376](https://issues.apache.org/jira/browse/MAPREDUCE-6376) | Add avro binary support for jhist files |  Major | jobhistoryserver | Ray Chiang | Ray Chiang |
| [YARN-4136](https://issues.apache.org/jira/browse/YARN-4136) | LinuxContainerExecutor loses info when forwarding ResourceHandlerException |  Trivial | nodemanager | Steve Loughran | Bibin A Chundatt |
| [YARN-4101](https://issues.apache.org/jira/browse/YARN-4101) | RM should print alert messages if Zookeeper and Resourcemanager gets connection issue |  Critical | yarn | Yesha Vora | Xuan Gong |
| [YARN-4092](https://issues.apache.org/jira/browse/YARN-4092) | RM HA UI redirection needs to be fixed when both RMs are in standby mode |  Major | resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-4082](https://issues.apache.org/jira/browse/YARN-4082) | Container shouldn't be killed when node's label updated. |  Major | capacity scheduler | Wangda Tan | Wangda Tan |
| [YARN-4081](https://issues.apache.org/jira/browse/YARN-4081) | Add support for multiple resource types in the Resource class |  Major | resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-4034](https://issues.apache.org/jira/browse/YARN-4034) | Render cluster Max Priority in scheduler metrics in RM web UI |  Minor | resourcemanager, webapp | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-4023](https://issues.apache.org/jira/browse/YARN-4023) | Publish Application Priority to TimelineServer |  Major | timelineserver | Sunil G | Sunil G |
| [YARN-4014](https://issues.apache.org/jira/browse/YARN-4014) | Support user cli interface in for Application Priority |  Major | client, resourcemanager | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-4004](https://issues.apache.org/jira/browse/YARN-4004) | container-executor should print output of docker logs if the docker container exits with non-0 exit status |  Major | nodemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3974](https://issues.apache.org/jira/browse/YARN-3974) | Refactor the reservation system test cases to use parameterized base test |  Major | capacityscheduler, fairscheduler | Subru Krishnan | Subru Krishnan |
| [YARN-3970](https://issues.apache.org/jira/browse/YARN-3970) | REST api support for Application Priority |  Major | webapp | Sunil G | Naganarasimha G R |
| [YARN-3969](https://issues.apache.org/jira/browse/YARN-3969) | Allow jobs to be submitted to reservation that is active but does not have any allocations |  Major | capacityscheduler, fairscheduler, resourcemanager | Subru Krishnan | Subru Krishnan |
| [YARN-3948](https://issues.apache.org/jira/browse/YARN-3948) | Display Application Priority in RM Web UI |  Major | webapp | Sunil G | Sunil G |
| [YARN-3930](https://issues.apache.org/jira/browse/YARN-3930) | FileSystemNodeLabelsStore should make sure edit log file closed when exception is thrown |  Major | api, client, resourcemanager | Dian Fu | Dian Fu |
| [YARN-3887](https://issues.apache.org/jira/browse/YARN-3887) | Support for changing Application priority during runtime |  Major | capacityscheduler, resourcemanager | Sunil G | Sunil G |
| [YARN-3873](https://issues.apache.org/jira/browse/YARN-3873) | pendingApplications in LeafQueue should also use OrderingPolicy |  Major | capacityscheduler | Sunil G | Sunil G |
| [YARN-3853](https://issues.apache.org/jira/browse/YARN-3853) | Add docker container runtime support to LinuxContainterExecutor |  Major | yarn | Sidharta Seethana | Sidharta Seethana |
| [YARN-3852](https://issues.apache.org/jira/browse/YARN-3852) | Add docker container support to container-executor |  Major | yarn | Sidharta Seethana | Abin Shahab |
| [YARN-3844](https://issues.apache.org/jira/browse/YARN-3844) | Make hadoop-yarn-project Native code -Wall-clean |  Major | build | Alan Burlison | Alan Burlison |
| [YARN-3827](https://issues.apache.org/jira/browse/YARN-3827) | Migrate YARN native build to new CMake framework |  Major | build | Alan Burlison | Alan Burlison |
| [YARN-3800](https://issues.apache.org/jira/browse/YARN-3800) | Reduce storage footprint for ReservationAllocation |  Major | capacityscheduler, fairscheduler, resourcemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3787](https://issues.apache.org/jira/browse/YARN-3787) | loading applications by filtering appstartedTime period for ATS Web UI |  Major | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-3766](https://issues.apache.org/jira/browse/YARN-3766) | ATS Web UI breaks because of YARN-3467 |  Blocker | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-3740](https://issues.apache.org/jira/browse/YARN-3740) | Fixed the typo with the configuration name: APPLICATION\_HISTORY\_PREFIX\_MAX\_APPS |  Major | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-3736](https://issues.apache.org/jira/browse/YARN-3736) | Add RMStateStore apis to store and load accepted reservations for failover |  Major | capacityscheduler, fairscheduler, resourcemanager | Subru Krishnan | Anubhav Dhoot |
| [YARN-3717](https://issues.apache.org/jira/browse/YARN-3717) | Expose app/am/queue's node-label-expression to RM web UI / CLI / REST-API |  Major | . | Naganarasimha G R | Naganarasimha G R |
| [YARN-3716](https://issues.apache.org/jira/browse/YARN-3716) | Node-label-expression should be included by ResourceRequestPBImpl.toString |  Minor | api | Xianyin Xin | Xianyin Xin |
| [YARN-3700](https://issues.apache.org/jira/browse/YARN-3700) | ATS Web Performance issue at load time when large number of jobs |  Major | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-3684](https://issues.apache.org/jira/browse/YARN-3684) | Change ContainerExecutor's primary lifecycle methods to use a more extensible mechanism for passing information. |  Major | yarn | Sidharta Seethana | Sidharta Seethana |
| [YARN-3656](https://issues.apache.org/jira/browse/YARN-3656) | LowCost: A Cost-Based Placement Agent for YARN Reservations |  Major | capacityscheduler, resourcemanager | Ishai Menache | Jonathan Yaniv |
| [YARN-3647](https://issues.apache.org/jira/browse/YARN-3647) | RMWebServices api's should use updated api from CommonNodeLabelsManager to get NodeLabel object |  Major | resourcemanager | Sunil G | Sunil G |
| [YARN-3635](https://issues.apache.org/jira/browse/YARN-3635) | Get-queue-mapping should be a common interface of YarnScheduler |  Major | scheduler | Wangda Tan | Tan, Wangda |
| [YARN-3632](https://issues.apache.org/jira/browse/YARN-3632) | Ordering policy should be allowed to reorder an application when demand changes |  Major | capacityscheduler | Craig Welch | Craig Welch |
| [YARN-3593](https://issues.apache.org/jira/browse/YARN-3593) | Add label-type and Improve "DEFAULT\_PARTITION" in Node Labels Page |  Major | webapp | Naganarasimha G R | Naganarasimha G R |
| [YARN-3583](https://issues.apache.org/jira/browse/YARN-3583) | Support of NodeLabel object instead of plain String in YarnClient side. |  Major | client | Sunil G | Sunil G |
| [YARN-3581](https://issues.apache.org/jira/browse/YARN-3581) | Deprecate -directlyAccessNodeLabelStore in RMAdminCLI |  Major | api, client, resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-3579](https://issues.apache.org/jira/browse/YARN-3579) | CommonNodeLabelsManager should support NodeLabel instead of string label name when getting node-to-label/label-to-label mappings |  Minor | resourcemanager | Sunil G | Sunil G |
| [YARN-3565](https://issues.apache.org/jira/browse/YARN-3565) | NodeHeartbeatRequest/RegisterNodeManagerRequest should use NodeLabel object instead of String |  Blocker | api, client, resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-3543](https://issues.apache.org/jira/browse/YARN-3543) | ApplicationReport should be able to tell whether the Application is AM managed or not. |  Major | api | Spandan Dutta | Rohith Sharma K S |
| [YARN-3541](https://issues.apache.org/jira/browse/YARN-3541) | Add version info on timeline service / generic history web UI and REST API |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3534](https://issues.apache.org/jira/browse/YARN-3534) | Collect memory/cpu usage on the node |  Major | nodemanager, resourcemanager | Inigo Goiri | Inigo Goiri |
| [YARN-3521](https://issues.apache.org/jira/browse/YARN-3521) | Support return structured NodeLabel objects in REST API |  Major | api, client, resourcemanager | Wangda Tan | Sunil G |
| [YARN-3505](https://issues.apache.org/jira/browse/YARN-3505) | Node's Log Aggregation Report with SUCCEED should not cached in RMApps |  Critical | log-aggregation | Junping Du | Xuan Gong |
| [YARN-3463](https://issues.apache.org/jira/browse/YARN-3463) | Integrate OrderingPolicy Framework with CapacityScheduler |  Major | capacityscheduler | Craig Welch | Craig Welch |
| [YARN-3448](https://issues.apache.org/jira/browse/YARN-3448) | Add Rolling Time To Lives Level DB Plugin Capabilities |  Major | timelineserver | Jonathan Eagles | Jonathan Eagles |
| [YARN-3445](https://issues.apache.org/jira/browse/YARN-3445) | Cache runningApps in RMNode for getting running apps on given NodeId |  Major | nodemanager, resourcemanager | Junping Du | Junping Du |
| [YARN-3443](https://issues.apache.org/jira/browse/YARN-3443) | Create a 'ResourceHandler' subsystem to ease addition of support for new resource types on the NM |  Major | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [YARN-3413](https://issues.apache.org/jira/browse/YARN-3413) | Node label attributes (like exclusivity) should settable via addToClusterNodeLabels but shouldn't be changeable at runtime |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3366](https://issues.apache.org/jira/browse/YARN-3366) | Outbound network bandwidth : classify/shape traffic originating from YARN containers |  Major | . | Sidharta Seethana | Sidharta Seethana |
| [YARN-3365](https://issues.apache.org/jira/browse/YARN-3365) | Add support for using the 'tc' tool via container-executor |  Major | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [YARN-3362](https://issues.apache.org/jira/browse/YARN-3362) | Add node label usage in RM CapacityScheduler web UI |  Major | capacityscheduler, resourcemanager, webapp | Wangda Tan | Naganarasimha G R |
| [YARN-3361](https://issues.apache.org/jira/browse/YARN-3361) | CapacityScheduler side changes to support non-exclusive node labels |  Major | capacityscheduler | Wangda Tan | Wangda Tan |
| [YARN-3356](https://issues.apache.org/jira/browse/YARN-3356) | Capacity Scheduler FiCaSchedulerApp should use ResourceUsage to track used-resources-by-label. |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3354](https://issues.apache.org/jira/browse/YARN-3354) | Container should contains node-labels asked by original ResourceRequests |  Major | api, capacityscheduler, nodemanager, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3347](https://issues.apache.org/jira/browse/YARN-3347) | Improve YARN log command to get AMContainer logs as well as running containers logs |  Major | log-aggregation | Xuan Gong | Xuan Gong |
| [YARN-3345](https://issues.apache.org/jira/browse/YARN-3345) | Add non-exclusive node label API to RMAdmin protocol and NodeLabelsManager |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3326](https://issues.apache.org/jira/browse/YARN-3326) | Support RESTful API for getLabelsToNodes |  Minor | resourcemanager | Naganarasimha G R | Naganarasimha G R |
| [YARN-3319](https://issues.apache.org/jira/browse/YARN-3319) | Implement a FairOrderingPolicy |  Major | scheduler | Craig Welch | Craig Welch |
| [YARN-3318](https://issues.apache.org/jira/browse/YARN-3318) | Create Initial OrderingPolicy Framework and FifoOrderingPolicy |  Major | scheduler | Craig Welch | Craig Welch |
| [YARN-3250](https://issues.apache.org/jira/browse/YARN-3250) | Support admin cli interface in for Application Priority |  Major | resourcemanager | Sunil G | Rohith Sharma K S |
| [YARN-3225](https://issues.apache.org/jira/browse/YARN-3225) | New parameter or CLI for decommissioning node gracefully in RMAdmin CLI |  Major | . | Junping Du | Devaraj K |
| [YARN-3212](https://issues.apache.org/jira/browse/YARN-3212) | RMNode State Transition Update with DECOMMISSIONING state |  Major | resourcemanager | Junping Du | Junping Du |
| [YARN-3136](https://issues.apache.org/jira/browse/YARN-3136) | getTransferredContainers can be a bottleneck during AM registration |  Major | scheduler | Jason Lowe | Sunil G |
| [YARN-3116](https://issues.apache.org/jira/browse/YARN-3116) | [Collector wireup] We need an assured way to determine if a container is an AM container on NM |  Major | nodemanager, timelineserver | Zhijie Shen | Giovanni Matteo Fumarola |
| [YARN-3110](https://issues.apache.org/jira/browse/YARN-3110) | Few issues in ApplicationHistory web ui |  Minor | applications, timelineserver | Bibin A Chundatt | Naganarasimha G R |
| [YARN-3006](https://issues.apache.org/jira/browse/YARN-3006) | Improve the error message when attempting manual failover with auto-failover enabled |  Minor | . | Akira AJISAKA | Akira AJISAKA |
| [YARN-2923](https://issues.apache.org/jira/browse/YARN-2923) | Support configuration based NodeLabelsProvider Service in Distributed Node Label Configuration Setup |  Major | nodemanager | Naganarasimha G R | Naganarasimha G R |
| [YARN-2918](https://issues.apache.org/jira/browse/YARN-2918) | Don't fail RM if queue's configured labels are not existed in cluster-node-labels |  Major | resourcemanager | Rohith Sharma K S | Wangda Tan |
| [YARN-2884](https://issues.apache.org/jira/browse/YARN-2884) | Proxying all AM-RM communications |  Major | nodemanager, resourcemanager | Carlo Curino | Kishore Chaliparambil |
| [YARN-2801](https://issues.apache.org/jira/browse/YARN-2801) | Add documentation for node labels feature |  Major | documentation | Gururaj Shetty | Wangda Tan |
| [YARN-2740](https://issues.apache.org/jira/browse/YARN-2740) | Fix NodeLabelsManager to properly handle node label modifications when distributed node label configuration enabled |  Major | resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-2696](https://issues.apache.org/jira/browse/YARN-2696) | Queue sorting in CapacityScheduler should consider node label |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2619](https://issues.apache.org/jira/browse/YARN-2619) | NodeManager: Add cgroups support for disk I/O isolation |  Major | . | Wei Yan | Varun Vasudev |
| [YARN-2498](https://issues.apache.org/jira/browse/YARN-2498) | Respect labels in preemption policy of capacity scheduler for inter-queue preemption |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2495](https://issues.apache.org/jira/browse/YARN-2495) | Allow admin specify labels from each NM (Distributed configuration) |  Major | resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-2392](https://issues.apache.org/jira/browse/YARN-2392) | add more diags about app retry limits on AM failures |  Minor | resourcemanager | Steve Loughran | Steve Loughran |
| [YARN-2331](https://issues.apache.org/jira/browse/YARN-2331) | Distinguish shutdown during supervision vs. shutdown for rolling upgrade |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-2003](https://issues.apache.org/jira/browse/YARN-2003) | Support for Application priority : Changes in RM and Capacity Scheduler |  Major | resourcemanager | Sunil G | Sunil G |
| [YARN-1462](https://issues.apache.org/jira/browse/YARN-1462) | AHS API and other AHS changes to handle tags for completed MR jobs |  Major | . | Karthik Kambatla | Xuan Gong |
| [YARN-1402](https://issues.apache.org/jira/browse/YARN-1402) | Related Web UI, CLI changes on exposing client API to check log aggregation status |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1376](https://issues.apache.org/jira/browse/YARN-1376) | NM need to notify the log aggregation status to RM through Node heartbeat |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1279](https://issues.apache.org/jira/browse/YARN-1279) | Expose a client API to allow clients to figure if log aggregation is complete |  Major | . | Arun C Murthy | Xuan Gong |
| [YARN-1012](https://issues.apache.org/jira/browse/YARN-1012) | Report NM aggregated container resource utilization in heartbeat |  Major | nodemanager | Arun C Murthy | Inigo Goiri |
| [YARN-644](https://issues.apache.org/jira/browse/YARN-644) | Basic null check is not performed on passed in arguments before using them in ContainerManagerImpl.startContainer |  Minor | nodemanager | Omkar Vinit Joshi | Varun Saxena |
| [YARN-433](https://issues.apache.org/jira/browse/YARN-433) | When RM is catching up with node updates then it should not expire acquired containers |  Major | resourcemanager | Bikas Saha | Xuan Gong |
| [YARN-313](https://issues.apache.org/jira/browse/YARN-313) | Add Admin API for supporting node resource configuration in command line |  Critical | client | Junping Du | Inigo Goiri |
| [YARN-221](https://issues.apache.org/jira/browse/YARN-221) | NM should provide a way for AM to tell it not to aggregate logs. |  Major | log-aggregation, nodemanager | Robert Joseph Evans | Ming Ma |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11814](https://issues.apache.org/jira/browse/HADOOP-11814) | Reformat hadoop-annotations, o.a.h.classification.tools |  Minor | . | Li Lu | Li Lu |
| [HDFS-9027](https://issues.apache.org/jira/browse/HDFS-9027) | Refactor o.a.h.hdfs.DataStreamer#isLazyPersist() method |  Major | . | Mingliang Liu | Mingliang Liu |
| [HDFS-8938](https://issues.apache.org/jira/browse/HDFS-8938) | Extract BlockToMarkCorrupt and ReplicationWork as standalone classes from BlockManager |  Major | . | Mingliang Liu | Mingliang Liu |
| [MAPREDUCE-6483](https://issues.apache.org/jira/browse/MAPREDUCE-6483) | Replace deprecated method NameNode.getUri() with DFSUtilClient.getNNUri() in TestMRCredentials |  Major | test | Mingliang Liu | Mingliang Liu |
| [MAPREDUCE-6477](https://issues.apache.org/jira/browse/MAPREDUCE-6477) | Replace usage of deprecated NameNode.DEFAULT\_PORT in TestFileSystem |  Major | . | Mingliang Liu | Mingliang Liu |
| [MAPREDUCE-6388](https://issues.apache.org/jira/browse/MAPREDUCE-6388) | Remove deprecation warnings from JobHistoryServer classes |  Minor | jobhistoryserver | Ray Chiang | Ray Chiang |
| [YARN-3357](https://issues.apache.org/jira/browse/YARN-3357) | Move TestFifoScheduler to FIFO package |  Major | scheduler, test | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-3026](https://issues.apache.org/jira/browse/YARN-3026) | Move application-specific container allocation logic from LeafQueue to FiCaSchedulerApp |  Major | capacityscheduler | Wangda Tan | Wangda Tan |


