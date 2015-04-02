
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
# Hadoop Changelog

## Release 2.7.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6651](https://issues.apache.org/jira/browse/HDFS-6651) | Deletion failure can leak inodes permanently |  Critical | . | Kihwal Lee | Jing Zhao |
| [HDFS-6252](https://issues.apache.org/jira/browse/HDFS-6252) | Phase out the old web UI in HDFS |  Minor | namenode | Fengdong Yu | Haohui Mai |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7584](https://issues.apache.org/jira/browse/HDFS-7584) | Enable Quota Support for Storage Types |  Major | datanode, namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7449](https://issues.apache.org/jira/browse/HDFS-7449) | Add metrics to NFS gateway |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-7424](https://issues.apache.org/jira/browse/HDFS-7424) | Add web UI for NFS gateway |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-7222](https://issues.apache.org/jira/browse/HDFS-7222) | Expose DataNode network errors as a metric |  Minor | datanode | Charles Lamb | Charles Lamb |
| [HDFS-6982](https://issues.apache.org/jira/browse/HDFS-6982) | nntop: top­-like tool for name node users |  Major | . | Maysam Yabandeh | Maysam Yabandeh |
| [HDFS-6826](https://issues.apache.org/jira/browse/HDFS-6826) | Plugin interface to enable delegation of HDFS authorization assertions |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HDFS-6663](https://issues.apache.org/jira/browse/HDFS-6663) | Admin command to track file and locations from block id |  Major | . | Kihwal Lee | Chen He |
| [HDFS-6488](https://issues.apache.org/jira/browse/HDFS-6488) | Support HDFS superuser in NFSv3 gateway |  Major | nfs | Stephen Chu | Brandon Li |
| [HDFS-3689](https://issues.apache.org/jira/browse/HDFS-3689) | Add support for variable length block |  Major | datanode, hdfs-client, namenode | Suresh Srinivas | Jing Zhao |
| [HDFS-3107](https://issues.apache.org/jira/browse/HDFS-3107) | HDFS truncate |  Major | datanode, namenode | Lei Chang | Plamen Jeliazkov |
| [HDFS-1362](https://issues.apache.org/jira/browse/HDFS-1362) | Provide volume management functionality for DataNode |  Major | datanode | Wang Xu | Wang Xu |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7976](https://issues.apache.org/jira/browse/HDFS-7976) | Update NFS user guide for mount option "sync" to minimize or avoid reordered writes |  Major | documentation, nfs | Brandon Li | Brandon Li |
| [HDFS-7962](https://issues.apache.org/jira/browse/HDFS-7962) | Remove duplicated logs in BlockManager |  Minor | . | Yi Liu | Yi Liu |
| [HDFS-7917](https://issues.apache.org/jira/browse/HDFS-7917) | Use file to replace data dirs in test to simulate a disk failure. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7898](https://issues.apache.org/jira/browse/HDFS-7898) | Change TestAppendSnapshotTruncate to fail-fast |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7849](https://issues.apache.org/jira/browse/HDFS-7849) | Update documentation for enabling a new feature in rolling upgrade |  Minor | documentation | Tsz Wo Nicholas Sze | J.Andreina |
| [HDFS-7832](https://issues.apache.org/jira/browse/HDFS-7832) | Show 'Last Modified' in Namenode's 'Browse Filesystem' |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-7808](https://issues.apache.org/jira/browse/HDFS-7808) | Remove obsolete -ns options in in DFSHAAdmin.java |  Minor | . | Arshad Mohammad | Arshad Mohammad |
| [HDFS-7797](https://issues.apache.org/jira/browse/HDFS-7797) | Add audit log for setQuota operation |  Major | namenode | Rakesh R | Rakesh R |
| [HDFS-7795](https://issues.apache.org/jira/browse/HDFS-7795) | Show warning if not all favored nodes were chosen by namenode |  Minor | . | Kihwal Lee | Kihwal Lee |
| [HDFS-7790](https://issues.apache.org/jira/browse/HDFS-7790) | Do not create optional fields in DFSInputStream unless they are needed |  Minor | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7789](https://issues.apache.org/jira/browse/HDFS-7789) | DFSck should resolve the path to support cross-FS symlinks |  Major | tools | Gera Shegalov | Gera Shegalov |
| [HDFS-7780](https://issues.apache.org/jira/browse/HDFS-7780) | Update use of Iterator to Iterable in DataXceiverServer and SnapshotDiffInfo |  Minor | . | Ray Chiang | Ray Chiang |
| [HDFS-7773](https://issues.apache.org/jira/browse/HDFS-7773) | Additional metrics in HDFS to be accessed via jmx. |  Major | datanode, namenode | Anu Engineer | Anu Engineer |
| [HDFS-7772](https://issues.apache.org/jira/browse/HDFS-7772) | Document hdfs balancer -exclude/-include option in HDFSCommands.html |  Trivial | documentation | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7771](https://issues.apache.org/jira/browse/HDFS-7771) | fuse\_dfs should permit FILE: on the front of KRB5CCNAME |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7761](https://issues.apache.org/jira/browse/HDFS-7761) | cleanup unnecssary code logic in LocatedBlock |  Minor | . | Yi Liu | Yi Liu |
| [HDFS-7757](https://issues.apache.org/jira/browse/HDFS-7757) | Misleading error messages in FSImage.java |  Major | namenode | Arpit Agarwal | Brahma Reddy Battula |
| [HDFS-7752](https://issues.apache.org/jira/browse/HDFS-7752) | Improve description for "dfs.namenode.num.extra.edits.retained" and "dfs.namenode.num.checkpoints.retained" properties on hdfs-default.xml |  Minor | documentation | Wellington Chevreuil | Wellington Chevreuil |
| [HDFS-7743](https://issues.apache.org/jira/browse/HDFS-7743) | Code cleanup of BlockInfo and rename BlockInfo to BlockInfoContiguous |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-7732](https://issues.apache.org/jira/browse/HDFS-7732) | Fix the order of the parameters in DFSConfigKeys |  Trivial | . | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-7710](https://issues.apache.org/jira/browse/HDFS-7710) | Remove dead code in BackupImage.java |  Minor | . | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7706](https://issues.apache.org/jira/browse/HDFS-7706) | Switch BlockManager logging to use slf4j |  Minor | namenode | Andrew Wang | Andrew Wang |
| [HDFS-7703](https://issues.apache.org/jira/browse/HDFS-7703) | Support favouredNodes for the append for new blocks |  Major | . | Vinayakumar B | Vinayakumar B |
| [HDFS-7694](https://issues.apache.org/jira/browse/HDFS-7694) | FSDataInputStream should support "unbuffer" |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7685](https://issues.apache.org/jira/browse/HDFS-7685) | Document dfs.namenode.heartbeat.recheck-interval in hdfs-default.xml |  Minor | documentation | Frank Lanitz | Kai Sasaki |
| [HDFS-7684](https://issues.apache.org/jira/browse/HDFS-7684) | The host:port settings of the daemons should be trimmed before use |  Major | . | Tianyin Xu | Anu Engineer |
| [HDFS-7683](https://issues.apache.org/jira/browse/HDFS-7683) | Combine usages and percent stats in NameNode UI |  Minor | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-7675](https://issues.apache.org/jira/browse/HDFS-7675) | Remove unused member DFSClient#spanReceiverHost |  Trivial | hdfs-client | Konstantin Shvachko | Colin Patrick McCabe |
| [HDFS-7668](https://issues.apache.org/jira/browse/HDFS-7668) | Convert site documentation from apt to markdown |  Major | documentation | Allen Wittenauer | Masatake Iwasaki |
| [HDFS-7640](https://issues.apache.org/jira/browse/HDFS-7640) | print NFS Client in the NFS log |  Trivial | nfs | Brandon Li | Brandon Li |
| [HDFS-7604](https://issues.apache.org/jira/browse/HDFS-7604) | Track and display failed DataNode storage locations in NameNode. |  Major | datanode, namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-7600](https://issues.apache.org/jira/browse/HDFS-7600) | Refine hdfs admin classes to reuse common code |  Major | tools | Yi Liu | Jing Zhao |
| [HDFS-7598](https://issues.apache.org/jira/browse/HDFS-7598) | Remove dependency on old version of Guava in TestDFSClientCache#testEviction |  Minor | test | Sangjin Lee | Sangjin Lee |
| [HDFS-7591](https://issues.apache.org/jira/browse/HDFS-7591) | hdfs classpath command should support same options as hadoop classpath. |  Minor | scripts | Chris Nauroth | Varun Saxena |
| [HDFS-7579](https://issues.apache.org/jira/browse/HDFS-7579) | Improve log reporting during block report rpc failure |  Minor | datanode | Charles Lamb | Charles Lamb |
| [HDFS-7564](https://issues.apache.org/jira/browse/HDFS-7564) | NFS gateway dynamically reload UID/GID mapping file /etc/nfs.map |  Minor | nfs | Hari Sekhon | Yongjun Zhang |
| [HDFS-7557](https://issues.apache.org/jira/browse/HDFS-7557) | Fix spacing for a few keys in DFSConfigKeys.java |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7555](https://issues.apache.org/jira/browse/HDFS-7555) | Remove the support of unmanaged connectors in HttpServer2 |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7537](https://issues.apache.org/jira/browse/HDFS-7537) | fsck is confusing when dfs.namenode.replication.min \> 1 && missing replicas && NN restart |  Major | namenode | Allen Wittenauer | GAO Rui |
| [HDFS-7535](https://issues.apache.org/jira/browse/HDFS-7535) | Utilize Snapshot diff report for distcp |  Major | distcp, snapshots | Jing Zhao | Jing Zhao |
| [HDFS-7531](https://issues.apache.org/jira/browse/HDFS-7531) | Improve the concurrent access on FsVolumeList |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7513](https://issues.apache.org/jira/browse/HDFS-7513) | HDFS inotify: add defaultBlockSize to CreateEvent |  Major | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7491](https://issues.apache.org/jira/browse/HDFS-7491) | Add incremental blockreport latency to DN metrics |  Minor | datanode | Ming Ma | Ming Ma |
| [HDFS-7484](https://issues.apache.org/jira/browse/HDFS-7484) | Make FSDirectory#addINode take existing INodes as its parameter |  Major | . | Haohui Mai | Jing Zhao |
| [HDFS-7478](https://issues.apache.org/jira/browse/HDFS-7478) | Move org.apache.hadoop.hdfs.server.namenode.NNConf to FSNamesystem |  Major | . | Li Lu | Li Lu |
| [HDFS-7463](https://issues.apache.org/jira/browse/HDFS-7463) | Simplify FSNamesystem#getBlockLocationsUpdateTimes |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7458](https://issues.apache.org/jira/browse/HDFS-7458) | Add description to the nfs ports in core-site.xml used by nfs test to avoid confusion |  Minor | nfs, test | Yongjun Zhang | Yongjun Zhang |
| [HDFS-7454](https://issues.apache.org/jira/browse/HDFS-7454) | Reduce memory footprint for AclEntries in NameNode |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-7446](https://issues.apache.org/jira/browse/HDFS-7446) | HDFS inotify should have the ability to determine what txid it has read up to |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7439](https://issues.apache.org/jira/browse/HDFS-7439) | Add BlockOpResponseProto's message to DFSClient's exception message |  Minor | balancer & mover, datanode, hdfs-client | Ming Ma | Takanobu Asanuma |
| [HDFS-7435](https://issues.apache.org/jira/browse/HDFS-7435) | PB encoding of block reports is very inefficient |  Critical | datanode, namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-7434](https://issues.apache.org/jira/browse/HDFS-7434) | DatanodeID hashCode should not be mutable |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-7430](https://issues.apache.org/jira/browse/HDFS-7430) | Rewrite the BlockScanner to use O(1) memory and use multiple threads |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7426](https://issues.apache.org/jira/browse/HDFS-7426) | Change nntop JMX format to be a JSON blob |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-7419](https://issues.apache.org/jira/browse/HDFS-7419) | Improve error messages for DataNode hot swap drive feature |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7411](https://issues.apache.org/jira/browse/HDFS-7411) | Refactor and improve decommissioning logic into DecommissionManager |  Major | . | Andrew Wang | Andrew Wang |
| [HDFS-7410](https://issues.apache.org/jira/browse/HDFS-7410) | Support CreateFlags with append() to support hsync() for appending streams |  Major | hdfs-client | Vinayakumar B | Vinayakumar B |
| [HDFS-7409](https://issues.apache.org/jira/browse/HDFS-7409) | Allow dead nodes to finish decommissioning if all files are fully replicated |  Minor | . | Andrew Wang | Andrew Wang |
| [HDFS-7404](https://issues.apache.org/jira/browse/HDFS-7404) | Remove o.a.h.hdfs.server.datanode.web.resources |  Major | . | Haohui Mai | Li Lu |
| [HDFS-7398](https://issues.apache.org/jira/browse/HDFS-7398) | Reset cached thread-local FSEditLogOp's on every FSEditLog#logEdit |  Major | namenode | Gera Shegalov | Gera Shegalov |
| [HDFS-7386](https://issues.apache.org/jira/browse/HDFS-7386) | Replace check "port number \< 1024" with shared isPrivilegedPort method |  Trivial | datanode, security | Yongjun Zhang | Yongjun Zhang |
| [HDFS-7384](https://issues.apache.org/jira/browse/HDFS-7384) | 'getfacl' command and 'getAclStatus' output should be in sync |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-7381](https://issues.apache.org/jira/browse/HDFS-7381) | Decouple the management of block id and gen stamps from FSNamesystem |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7375](https://issues.apache.org/jira/browse/HDFS-7375) | Move FSClusterStats to o.a.h.h.hdfs.server.blockmanagement |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7365](https://issues.apache.org/jira/browse/HDFS-7365) | Remove hdfs.server.blockmanagement.MutableBlockCollection |  Minor | . | Li Lu | Li Lu |
| [HDFS-7357](https://issues.apache.org/jira/browse/HDFS-7357) | FSNamesystem.checkFileProgress should log file path |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7356](https://issues.apache.org/jira/browse/HDFS-7356) | Use DirectoryListing.hasMore() directly in nfs |  Minor | nfs | Haohui Mai | Li Lu |
| [HDFS-7336](https://issues.apache.org/jira/browse/HDFS-7336) | Unused member DFSInputStream.buffersize |  Major | hdfs-client | Konstantin Shvachko | Milan Desai |
| [HDFS-7335](https://issues.apache.org/jira/browse/HDFS-7335) | Redundant checkOperation() in FSN.analyzeFileState() |  Major | namenode | Konstantin Shvachko | Milan Desai |
| [HDFS-7333](https://issues.apache.org/jira/browse/HDFS-7333) | Improve log message in Storage.tryLock() |  Major | datanode, namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-7331](https://issues.apache.org/jira/browse/HDFS-7331) | Add Datanode network counts to datanode jmx page |  Minor | datanode | Charles Lamb | Charles Lamb |
| [HDFS-7329](https://issues.apache.org/jira/browse/HDFS-7329) | MiniDFSCluster should log the exception when createNameNodesAndSetConf() fails. |  Major | test | Konstantin Shvachko | Byron Wong |
| [HDFS-7326](https://issues.apache.org/jira/browse/HDFS-7326) | Add documentation for hdfs debug commands |  Minor | documentation | Colin Patrick McCabe | Vijay Bhat |
| [HDFS-7323](https://issues.apache.org/jira/browse/HDFS-7323) | Move the get/setStoragePolicy commands out from dfsadmin |  Major | hdfs-client | Tsz Wo Nicholas Sze | Jing Zhao |
| [HDFS-7310](https://issues.apache.org/jira/browse/HDFS-7310) | Mover can give first priority to local DN if it has target storage type available in local DN |  Major | balancer & mover | Uma Maheswara Rao G | Vinayakumar B |
| [HDFS-7308](https://issues.apache.org/jira/browse/HDFS-7308) | DFSClient write packet size may \> 64kB |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Takuya Fukudome |
| [HDFS-7283](https://issues.apache.org/jira/browse/HDFS-7283) | Bump DataNode OOM log from WARN to ERROR |  Trivial | datanode | Stephen Chu | Stephen Chu |
| [HDFS-7280](https://issues.apache.org/jira/browse/HDFS-7280) | Use netty 4 in WebImageViewer |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7279](https://issues.apache.org/jira/browse/HDFS-7279) | Use netty to implement DatanodeWebHdfsMethods |  Major | datanode, webhdfs | Haohui Mai | Haohui Mai |
| [HDFS-7278](https://issues.apache.org/jira/browse/HDFS-7278) | Add a command that allows sysadmins to manually trigger full block reports from a DN |  Major | datanode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7270](https://issues.apache.org/jira/browse/HDFS-7270) | Add congestion signaling capability to DataNode write protocol |  Major | datanode | Haohui Mai | Haohui Mai |
| [HDFS-7266](https://issues.apache.org/jira/browse/HDFS-7266) | HDFS Peercache enabled check should not lock on object |  Minor | hdfs-client | Gopal V | Andrew Wang |
| [HDFS-7257](https://issues.apache.org/jira/browse/HDFS-7257) | Add the time of last HA state transition to NN's /jmx page |  Minor | namenode | Charles Lamb | Charles Lamb |
| [HDFS-7252](https://issues.apache.org/jira/browse/HDFS-7252) | small refinement to the use of isInAnEZ in FSNamesystem |  Trivial | . | Yi Liu | Yi Liu |
| [HDFS-7242](https://issues.apache.org/jira/browse/HDFS-7242) | Code improvement for FSN#checkUnreadableBySuperuser |  Minor | namenode | Yi Liu | Yi Liu |
| [HDFS-7223](https://issues.apache.org/jira/browse/HDFS-7223) | Tracing span description of IPC client is too long |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7210](https://issues.apache.org/jira/browse/HDFS-7210) | Avoid two separate RPC's namenode.append() and namenode.getFileInfo() for an append call from DFSClient |  Major | hdfs-client, namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-7190](https://issues.apache.org/jira/browse/HDFS-7190) | Bad use of Preconditions in startFileInternal() |  Major | namenode | Konstantin Shvachko | Dawson Choong |
| [HDFS-7186](https://issues.apache.org/jira/browse/HDFS-7186) | Document the "hadoop trace" command. |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7182](https://issues.apache.org/jira/browse/HDFS-7182) | JMX metrics aren't accessible when NN is busy |  Major | . | Ming Ma | Ming Ma |
| [HDFS-7165](https://issues.apache.org/jira/browse/HDFS-7165) | Separate block metrics for files with replication count 1 |  Major | namenode | Andrew Wang | Zhe Zhang |
| [HDFS-7026](https://issues.apache.org/jira/browse/HDFS-7026) | Introduce a string constant for "Failed to obtain user group info..." |  Trivial | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6806](https://issues.apache.org/jira/browse/HDFS-6806) | HDFS Rolling upgrade document should mention the versions available |  Minor | documentation | Akira AJISAKA | J.Andreina |
| [HDFS-6741](https://issues.apache.org/jira/browse/HDFS-6741) | Improve permission denied message when FSPermissionChecker#checkOwner fails |  Trivial | . | Stephen Chu | Harsh J |
| [HDFS-6735](https://issues.apache.org/jira/browse/HDFS-6735) | A minor optimization to avoid pread() be blocked by read() inside the same DFSInputStream |  Major | hdfs-client | Liang Xie | Lars Hofhansl |
| [HDFS-6565](https://issues.apache.org/jira/browse/HDFS-6565) | Use jackson instead jetty json in hdfs-client |  Major | . | Haohui Mai | Akira AJISAKA |
| [HDFS-6133](https://issues.apache.org/jira/browse/HDFS-6133) | Make Balancer support exclude specified path |  Major | balancer & mover, datanode | zhaoyunjiong | zhaoyunjiong |
| [HDFS-5853](https://issues.apache.org/jira/browse/HDFS-5853) | Add "hadoop.user.group.metrics.percentiles.intervals" to hdfs-default.xml |  Minor | documentation, namenode | Akira AJISAKA | Akira AJISAKA |
| [HDFS-3342](https://issues.apache.org/jira/browse/HDFS-3342) | SocketTimeoutException in BlockSender.sendChunks could have a better error message |  Minor | datanode | Todd Lipcon | Yongjun Zhang |
| [HDFS-2219](https://issues.apache.org/jira/browse/HDFS-2219) | Fsck should work with fully qualified file paths. |  Minor | tools | Jitendra Nath Pandey | Tsz Wo Nicholas Sze |
| [HDFS-316](https://issues.apache.org/jira/browse/HDFS-316) | Balancer should run for a configurable # of iterations |  Minor | balancer & mover | Brian Bockelman | Xiaoyu Yao |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-8036](https://issues.apache.org/jira/browse/HDFS-8036) | Use snapshot path as source when using snapshot diff report in DistCp |  Major | distcp | Jing Zhao | Jing Zhao |
| [HDFS-8001](https://issues.apache.org/jira/browse/HDFS-8001) | RpcProgramNfs3 : wrong parsing of dfs.blocksize |  Trivial | nfs | Remi Catherinot | Remi Catherinot |
| [HDFS-7977](https://issues.apache.org/jira/browse/HDFS-7977) | NFS couldn't take percentile intervals |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-7963](https://issues.apache.org/jira/browse/HDFS-7963) | Fix expected tracing spans in TestTracing along with HDFS-7054 |  Critical | test | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7961](https://issues.apache.org/jira/browse/HDFS-7961) | Trigger full block report after hot swapping disk |  Major | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7960](https://issues.apache.org/jira/browse/HDFS-7960) | The full block report should prune zombie storages even if they're not empty |  Critical | . | Lei (Eddy) Xu | Colin Patrick McCabe |
| [HDFS-7957](https://issues.apache.org/jira/browse/HDFS-7957) | Truncate should verify quota before making changes |  Critical | namenode | Jing Zhao | Jing Zhao |
| [HDFS-7956](https://issues.apache.org/jira/browse/HDFS-7956) | Improve logging for DatanodeRegistration. |  Major | namenode | Konstantin Shvachko | Plamen Jeliazkov |
| [HDFS-7953](https://issues.apache.org/jira/browse/HDFS-7953) | NN Web UI fails to navigate to paths that contain # |  Minor | namenode | kanaka kumar avvaru | kanaka kumar avvaru |
| [HDFS-7945](https://issues.apache.org/jira/browse/HDFS-7945) | The WebHdfs system on DN does not honor the length parameter |  Blocker | . | Haohui Mai | Haohui Mai |
| [HDFS-7943](https://issues.apache.org/jira/browse/HDFS-7943) | Append cannot handle the last block with length greater than the preferred block size |  Blocker | . | Jing Zhao | Jing Zhao |
| [HDFS-7942](https://issues.apache.org/jira/browse/HDFS-7942) | NFS: support regexp grouping in nfs.exports.allowed.hosts |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-7932](https://issues.apache.org/jira/browse/HDFS-7932) | Speed up the shutdown of datanode during rolling upgrade |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-7930](https://issues.apache.org/jira/browse/HDFS-7930) | commitBlockSynchronization() does not remove locations |  Blocker | namenode | Konstantin Shvachko | Yi Liu |
| [HDFS-7929](https://issues.apache.org/jira/browse/HDFS-7929) | inotify unable fetch pre-upgrade edit log segments once upgrade starts |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-7926](https://issues.apache.org/jira/browse/HDFS-7926) | NameNode implementation of ClientProtocol.truncate(..) is not idempotent |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7915](https://issues.apache.org/jira/browse/HDFS-7915) | The DataNode can sometimes allocate a ShortCircuitShm slot and fail to tell the DFSClient about it because of a network error |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7886](https://issues.apache.org/jira/browse/HDFS-7886) | TestFileTruncate#testTruncateWithDataNodesRestart runs timeout sometimes |  Minor | test | Yi Liu | Plamen Jeliazkov |
| [HDFS-7885](https://issues.apache.org/jira/browse/HDFS-7885) | Datanode should not trust the generation stamp provided by client |  Critical | datanode | vitthal (Suhas) Gogate | Tsz Wo Nicholas Sze |
| [HDFS-7884](https://issues.apache.org/jira/browse/HDFS-7884) | NullPointerException in BlockSender |  Blocker | datanode | Tsz Wo Nicholas Sze | Brahma Reddy Battula |
| [HDFS-7881](https://issues.apache.org/jira/browse/HDFS-7881) | TestHftpFileSystem#testSeek fails in branch-2 |  Blocker | . | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-7880](https://issues.apache.org/jira/browse/HDFS-7880) | Remove the tests for legacy Web UI in branch-2 |  Blocker | test | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-7879](https://issues.apache.org/jira/browse/HDFS-7879) | hdfs.dll does not export functions of the public libhdfs API |  Major | build, libhdfs | Chris Nauroth | Chris Nauroth |
| [HDFS-7871](https://issues.apache.org/jira/browse/HDFS-7871) | NameNodeEditLogRoller can keep printing "Swallowing exception" message |  Critical | . | Jing Zhao | Jing Zhao |
| [HDFS-7869](https://issues.apache.org/jira/browse/HDFS-7869) | Inconsistency in the return information while performing rolling upgrade |  Major | . | J.Andreina | J.Andreina |
| [HDFS-7831](https://issues.apache.org/jira/browse/HDFS-7831) | Fix the starting index and end condition of the loop in FileDiffList.findEarlierSnapshotBlocks() |  Major | . | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-7830](https://issues.apache.org/jira/browse/HDFS-7830) | DataNode does not release the volume lock when adding a volume fails. |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7818](https://issues.apache.org/jira/browse/HDFS-7818) | OffsetParam should return the default value instead of throwing NPE when the value is unspecified |  Blocker | webhdfs | Eric Payne | Eric Payne |
| [HDFS-7816](https://issues.apache.org/jira/browse/HDFS-7816) | Unable to open webhdfs paths with "+" |  Blocker | webhdfs | Jason Lowe | Haohui Mai |
| [HDFS-7813](https://issues.apache.org/jira/browse/HDFS-7813) | TestDFSHAAdminMiniCluster#testFencer testcase is failing frequently |  Major | ha, test | Rakesh R | Rakesh R |
| [HDFS-7807](https://issues.apache.org/jira/browse/HDFS-7807) | libhdfs htable.c: fix htable resizing, add unit test |  Major | native | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7805](https://issues.apache.org/jira/browse/HDFS-7805) | NameNode recovery prompt should be printed on console |  Major | namenode | surendra singh lilhore | surendra singh lilhore |
| [HDFS-7798](https://issues.apache.org/jira/browse/HDFS-7798) | Checkpointing failure caused by shared KerberosAuthenticator |  Critical | security | Chengbing Liu | Chengbing Liu |
| [HDFS-7788](https://issues.apache.org/jira/browse/HDFS-7788) | Post-2.6 namenode may not start up with an image containing inodes created with an old release. |  Blocker | . | Kihwal Lee | Rushabh S Shah |
| [HDFS-7785](https://issues.apache.org/jira/browse/HDFS-7785) | Improve diagnostics information for HttpPutFailedException |  Major | namenode | Chengbing Liu | Chengbing Liu |
| [HDFS-7778](https://issues.apache.org/jira/browse/HDFS-7778) | Rename FsVolumeListTest to TestFsVolumeList and commit it to branch-2 |  Major | datanode, test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7774](https://issues.apache.org/jira/browse/HDFS-7774) | Unresolved symbols error while compiling HDFS on Windows 7/32 bit |  Critical | build, native | Venkatasubramaniam Ramakrishnan | Kiran Kumar M R |
| [HDFS-7769](https://issues.apache.org/jira/browse/HDFS-7769) | TestHDFSCLI create files in hdfs project root dir |  Trivial | test | Tsz Wo Nicholas Sze |  |
| [HDFS-7763](https://issues.apache.org/jira/browse/HDFS-7763) | fix zkfc hung issue due to not catching exception in a corner case |  Major | ha | Liang Xie | Liang Xie |
| [HDFS-7756](https://issues.apache.org/jira/browse/HDFS-7756) | Restore method signature for LocatedBlock#getLocations() |  Major | . | Ted Yu | Ted Yu |
| [HDFS-7753](https://issues.apache.org/jira/browse/HDFS-7753) | Fix Multithreaded correctness Warnings in BackupImage.java |  Major | . | Rakesh R | Konstantin Shvachko |
| [HDFS-7748](https://issues.apache.org/jira/browse/HDFS-7748) | Separate ECN flags from the Status in the DataTransferPipelineAck |  Blocker | . | Haohui Mai | Anu Engineer |
| [HDFS-7744](https://issues.apache.org/jira/browse/HDFS-7744) | Fix potential NPE in DFSInputStream after setDropBehind or setReadahead is called |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7742](https://issues.apache.org/jira/browse/HDFS-7742) | favoring decommissioning node for replication can cause a block to stay underreplicated for long periods |  Major | namenode | Nathan Roberts | Nathan Roberts |
| [HDFS-7741](https://issues.apache.org/jira/browse/HDFS-7741) | Remove unnecessary synchronized in FSDataInputStream and HdfsDataInputStream |  Minor | . | Yi Liu | Yi Liu |
| [HDFS-7734](https://issues.apache.org/jira/browse/HDFS-7734) | Class cast exception in NameNode#main |  Blocker | namenode | Arpit Agarwal | Yi Liu |
| [HDFS-7722](https://issues.apache.org/jira/browse/HDFS-7722) | DataNode#checkDiskError should also remove Storage when error is found. |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7721](https://issues.apache.org/jira/browse/HDFS-7721) | The HDFS BlockScanner may run fast during the first hour |  Major | datanode | Tsz Wo Nicholas Sze | Colin Patrick McCabe |
| [HDFS-7719](https://issues.apache.org/jira/browse/HDFS-7719) | BlockPoolSliceStorage#removeVolumes fails to remove some in-memory state associated with volumes |  Major | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7718](https://issues.apache.org/jira/browse/HDFS-7718) | Store KeyProvider in ClientContext to avoid leaking key provider threads when using FileContext |  Major | . | Arun Suresh | Arun Suresh |
| [HDFS-7714](https://issues.apache.org/jira/browse/HDFS-7714) | Simultaneous restart of HA NameNodes and DataNode can cause DataNode to register successfully with only one NameNode. |  Major | datanode | Chris Nauroth | Vinayakumar B |
| [HDFS-7709](https://issues.apache.org/jira/browse/HDFS-7709) | Fix findbug warnings in httpfs |  Major | . | Rakesh R | Rakesh R |
| [HDFS-7707](https://issues.apache.org/jira/browse/HDFS-7707) | Edit log corruption due to delayed block removal again |  Major | namenode | Yongjun Zhang | Yongjun Zhang |
| [HDFS-7704](https://issues.apache.org/jira/browse/HDFS-7704) | DN heartbeat to Active NN may be blocked and expire if connection to Standby NN continues to time out. |  Major | datanode, namenode | Rushabh S Shah | Rushabh S Shah |
| [HDFS-7698](https://issues.apache.org/jira/browse/HDFS-7698) | Fix locking on HDFS read statistics and add a method for clearing them. |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7697](https://issues.apache.org/jira/browse/HDFS-7697) | Mark the PB OIV tool as experimental |  Major | . | Haohui Mai | Lei (Eddy) Xu |
| [HDFS-7696](https://issues.apache.org/jira/browse/HDFS-7696) | FsDatasetImpl.getTmpInputStreams(..) may leak file descriptors |  Minor | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7686](https://issues.apache.org/jira/browse/HDFS-7686) | Re-add rapid rescan of possibly corrupt block feature to the block scanner |  Blocker | . | Rushabh S Shah | Colin Patrick McCabe |
| [HDFS-7682](https://issues.apache.org/jira/browse/HDFS-7682) | {{DistributedFileSystem#getFileChecksum}} of a snapshotted file includes non-snapshotted content |  Major | . | Charles Lamb | Charles Lamb |
| [HDFS-7660](https://issues.apache.org/jira/browse/HDFS-7660) | BlockReceiver#close() might be called multiple times, which causes the fsvolume reference being released incorrectly. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7647](https://issues.apache.org/jira/browse/HDFS-7647) | DatanodeManager.sortLocatedBlocks sorts DatanodeInfos but not StorageIDs |  Major | . | Milan Desai | Milan Desai |
| [HDFS-7644](https://issues.apache.org/jira/browse/HDFS-7644) | minor typo in HttpFS doc |  Trivial | documentation | Charles Lamb | Charles Lamb |
| [HDFS-7641](https://issues.apache.org/jira/browse/HDFS-7641) | Update archival storage user doc for list/set/get block storage policies |  Minor | documentation | Yi Liu | Yi Liu |
| [HDFS-7637](https://issues.apache.org/jira/browse/HDFS-7637) | Fix the check condition for reserved path |  Minor | . | Yi Liu | Yi Liu |
| [HDFS-7635](https://issues.apache.org/jira/browse/HDFS-7635) | Remove TestCorruptFilesJsp from branch-2. |  Minor | test | Chris Nauroth | Chris Nauroth |
| [HDFS-7632](https://issues.apache.org/jira/browse/HDFS-7632) | MiniDFSCluster configures DataNode data directories incorrectly if using more than 1 DataNode and more than 2 storage locations per DataNode. |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-7615](https://issues.apache.org/jira/browse/HDFS-7615) | Remove longReadLock |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-7611](https://issues.apache.org/jira/browse/HDFS-7611) | deleteSnapshot and delete of a file can leave orphaned blocks in the blocksMap on NameNode restart. |  Critical | namenode | Konstantin Shvachko | Jing Zhao |
| [HDFS-7610](https://issues.apache.org/jira/browse/HDFS-7610) | Fix removal of dynamically added DN volumes |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7606](https://issues.apache.org/jira/browse/HDFS-7606) | Missing null check in INodeFile#getBlocks() |  Minor | . | Ted Yu | Byron Wong |
| [HDFS-7603](https://issues.apache.org/jira/browse/HDFS-7603) | The background replication queue initialization may not let others run |  Critical | rolling upgrades | Kihwal Lee | Kihwal Lee |
| [HDFS-7596](https://issues.apache.org/jira/browse/HDFS-7596) | NameNode should prune dead storages from storageMap |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7587](https://issues.apache.org/jira/browse/HDFS-7587) | Edit log corruption can happen if append fails with a quota violation |  Blocker | namenode | Kihwal Lee | Jing Zhao |
| [HDFS-7583](https://issues.apache.org/jira/browse/HDFS-7583) | Fix findbug in TransferFsImage.java |  Minor | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-7575](https://issues.apache.org/jira/browse/HDFS-7575) | Upgrade should generate a unique storage ID for each volume |  Critical | . | Lars Francke | Arpit Agarwal |
| [HDFS-7572](https://issues.apache.org/jira/browse/HDFS-7572) | TestLazyPersistFiles#testDnRestartWithSavedReplicas is flaky on Windows |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7566](https://issues.apache.org/jira/browse/HDFS-7566) | Remove obsolete entries from hdfs-default.xml |  Major | . | Ray Chiang | Ray Chiang |
| [HDFS-7563](https://issues.apache.org/jira/browse/HDFS-7563) | NFS gateway parseStaticMap NumberFormatException |  Major | nfs | Hari Sekhon | Yongjun Zhang |
| [HDFS-7561](https://issues.apache.org/jira/browse/HDFS-7561) | TestFetchImage should write fetched-image-dir under target. |  Major | . | Konstantin Shvachko | Liang Xie |
| [HDFS-7560](https://issues.apache.org/jira/browse/HDFS-7560) | ACLs removed by removeDefaultAcl() will be back after NameNode restart/failover |  Critical | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-7552](https://issues.apache.org/jira/browse/HDFS-7552) | change FsVolumeList toString() to fix TestDataNodeVolumeFailureToleration |  Major | datanode, test | Liang Xie | Liang Xie |
| [HDFS-7548](https://issues.apache.org/jira/browse/HDFS-7548) | Corrupt block reporting delayed until datablock scanner thread detects it |  Major | . | Rushabh S Shah | Rushabh S Shah |
| [HDFS-7536](https://issues.apache.org/jira/browse/HDFS-7536) | Remove unused CryptoCodec in org.apache.hadoop.fs.Hdfs |  Minor | security | Yi Liu | Yi Liu |
| [HDFS-7533](https://issues.apache.org/jira/browse/HDFS-7533) | Datanode sometimes does not shutdown on receiving upgrade shutdown command |  Major | . | Kihwal Lee | Eric Payne |
| [HDFS-7530](https://issues.apache.org/jira/browse/HDFS-7530) | Allow renaming of encryption zone roots |  Minor | namenode | Charles Lamb | Charles Lamb |
| [HDFS-7517](https://issues.apache.org/jira/browse/HDFS-7517) | Remove redundant non-null checks in FSNamesystem#getBlockLocations |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7516](https://issues.apache.org/jira/browse/HDFS-7516) | Fix findbugs warnings in hadoop-nfs project |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-7515](https://issues.apache.org/jira/browse/HDFS-7515) | Fix new findbugs warnings in hadoop-hdfs |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7514](https://issues.apache.org/jira/browse/HDFS-7514) | TestTextCommand fails on Windows |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7502](https://issues.apache.org/jira/browse/HDFS-7502) | Fix findbugs warning in hdfs-nfs project |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-7497](https://issues.apache.org/jira/browse/HDFS-7497) | Inconsistent report of decommissioning DataNodes between dfsadmin and NameNode webui |  Major | datanode, namenode | Yongjun Zhang | Yongjun Zhang |
| [HDFS-7496](https://issues.apache.org/jira/browse/HDFS-7496) | Fix FsVolume removal race conditions on the DataNode by reference-counting the volume instances |  Major | . | Colin Patrick McCabe | Lei (Eddy) Xu |
| [HDFS-7495](https://issues.apache.org/jira/browse/HDFS-7495) | Remove updatePosition argument from DFSInputStream#getBlockAt() |  Minor | . | Ted Yu | Colin Patrick McCabe |
| [HDFS-7494](https://issues.apache.org/jira/browse/HDFS-7494) | Checking of closed in DFSInputStream#pread() should be protected by synchronization |  Minor | . | Ted Yu | Ted Yu |
| [HDFS-7490](https://issues.apache.org/jira/browse/HDFS-7490) | HDFS tests OOM on Java7+ |  Major | build, test | Steve Loughran | Steve Loughran |
| [HDFS-7481](https://issues.apache.org/jira/browse/HDFS-7481) | Add ACL indicator to the "Permission Denied" exception. |  Minor | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-7473](https://issues.apache.org/jira/browse/HDFS-7473) | Document setting dfs.namenode.fs-limits.max-directory-items to 0 is invalid |  Major | documentation | Jason Keller | Akira AJISAKA |
| [HDFS-7472](https://issues.apache.org/jira/browse/HDFS-7472) | Fix typo in message of ReplicaNotFoundException |  Trivial | . | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7470](https://issues.apache.org/jira/browse/HDFS-7470) | SecondaryNameNode need twice memory when calling reloadFromImageFile |  Major | namenode | zhaoyunjiong | zhaoyunjiong |
| [HDFS-7457](https://issues.apache.org/jira/browse/HDFS-7457) | DatanodeID generates excessive garbage |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-7456](https://issues.apache.org/jira/browse/HDFS-7456) | De-duplicate AclFeature instances with same AclEntries do reduce memory footprint of NameNode |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-7444](https://issues.apache.org/jira/browse/HDFS-7444) | convertToBlockUnderConstruction should preserve BlockCollection |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7431](https://issues.apache.org/jira/browse/HDFS-7431) | log message for InvalidMagicNumberException may be incorrect |  Major | security | Yi Liu | Yi Liu |
| [HDFS-7423](https://issues.apache.org/jira/browse/HDFS-7423) | various typos and message formatting fixes in nfs daemon and doc |  Trivial | nfs | Charles Lamb | Charles Lamb |
| [HDFS-7406](https://issues.apache.org/jira/browse/HDFS-7406) | SimpleHttpProxyHandler puts incorrect "Connection: Close" header |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7403](https://issues.apache.org/jira/browse/HDFS-7403) | Inaccurate javadoc of  BlockUCState#COMPLETE state |  Trivial | namenode | Yongjun Zhang | Yongjun Zhang |
| [HDFS-7399](https://issues.apache.org/jira/browse/HDFS-7399) | Lack of synchronization in DFSOutputStream#Packet#getLastByteOffsetBlock() |  Minor | . | Ted Yu | Vinayakumar B |
| [HDFS-7395](https://issues.apache.org/jira/browse/HDFS-7395) | BlockIdManager#clear() bails out when resetting the GenerationStampV1Limit |  Major | namenode | Yongjun Zhang | Haohui Mai |
| [HDFS-7394](https://issues.apache.org/jira/browse/HDFS-7394) | Log at INFO level, not WARN level, when InvalidToken is seen in ShortCircuitCache |  Minor | . | Kihwal Lee | Keith Pak |
| [HDFS-7389](https://issues.apache.org/jira/browse/HDFS-7389) | Named user ACL cannot stop the user from accessing the FS entity. |  Major | namenode | Chunjun Xiao | Vinayakumar B |
| [HDFS-7374](https://issues.apache.org/jira/browse/HDFS-7374) | Allow decommissioning of dead DataNodes |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-7373](https://issues.apache.org/jira/browse/HDFS-7373) | Clean up temporary files after fsimage transfer failures |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-7366](https://issues.apache.org/jira/browse/HDFS-7366) | BlockInfo should take replication as an short in the constructor |  Minor | . | Haohui Mai | Li Lu |
| [HDFS-7361](https://issues.apache.org/jira/browse/HDFS-7361) | TestCheckpoint#testStorageAlreadyLockedErrorMessage fails after change of log message related to locking violation. |  Minor | datanode, namenode, test | Chris Nauroth | Konstantin Shvachko |
| [HDFS-7358](https://issues.apache.org/jira/browse/HDFS-7358) | Clients may get stuck waiting when using ByteArrayManager |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7324](https://issues.apache.org/jira/browse/HDFS-7324) | haadmin command usage prints incorrect command name |  Major | ha, tools | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-7315](https://issues.apache.org/jira/browse/HDFS-7315) | DFSTestUtil.readFileBuffer opens extra FSDataInputStream |  Trivial | . | Plamen Jeliazkov | Plamen Jeliazkov |
| [HDFS-7303](https://issues.apache.org/jira/browse/HDFS-7303) | NN UI fails to distinguish datanodes on the same host |  Minor | . | Benoy Antony | Benoy Antony |
| [HDFS-7301](https://issues.apache.org/jira/browse/HDFS-7301) | TestMissingBlocksAlert should use MXBeans instead of old web UI |  Minor | . | Zhe Zhang | Zhe Zhang |
| [HDFS-7282](https://issues.apache.org/jira/browse/HDFS-7282) | Fix intermittent TestShortCircuitCache and TestBlockReaderFactory failures resulting from TemporarySocketDirectory GC |  Major | test | Jinghui Wang | Jinghui Wang |
| [HDFS-7277](https://issues.apache.org/jira/browse/HDFS-7277) | Remove explicit dependency on netty 3.2 in BKJournal |  Minor | build | Haohui Mai | Haohui Mai |
| [HDFS-7263](https://issues.apache.org/jira/browse/HDFS-7263) | Snapshot read can reveal future bytes for appended files. |  Major | hdfs-client | Konstantin Shvachko | Tao Luo |
| [HDFS-7258](https://issues.apache.org/jira/browse/HDFS-7258) | CacheReplicationMonitor rescan schedule log should use DEBUG level instead of INFO level |  Minor | namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7235](https://issues.apache.org/jira/browse/HDFS-7235) | DataNode#transferBlock should report blocks that don't exist using reportBadBlock |  Major | datanode, namenode | Yongjun Zhang | Yongjun Zhang |
| [HDFS-7232](https://issues.apache.org/jira/browse/HDFS-7232) | Populate hostname in httpfs audit log |  Trivial | . | Zoran Dimitrijevic | Zoran Dimitrijevic |
| [HDFS-7227](https://issues.apache.org/jira/browse/HDFS-7227) | Fix findbugs warning about NP\_DEREFERENCE\_OF\_READLINE\_VALUE in SpanReceiverHost |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7225](https://issues.apache.org/jira/browse/HDFS-7225) | Remove stale block invalidation work when DN re-registers with different UUID |  Major | namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-7224](https://issues.apache.org/jira/browse/HDFS-7224) | Allow reuse of NN connections via webhdfs |  Major | webhdfs | Eric Payne | Eric Payne |
| [HDFS-7213](https://issues.apache.org/jira/browse/HDFS-7213) | processIncrementalBlockReport performance degradation |  Critical | namenode | Daryn Sharp | Eric Payne |
| [HDFS-7202](https://issues.apache.org/jira/browse/HDFS-7202) | Should be able to omit package name of SpanReceiver on "hadoop trace -add" |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7201](https://issues.apache.org/jira/browse/HDFS-7201) | Fix typos in hdfs-default.xml |  Major | . | Konstantin Shvachko | Dawson Choong |
| [HDFS-7198](https://issues.apache.org/jira/browse/HDFS-7198) | Fix findbugs "unchecked conversion" warning in DFSClient#getPathTraceScope |  Trivial | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7194](https://issues.apache.org/jira/browse/HDFS-7194) | Fix findbugs "inefficient new String constructor" warning in DFSClient#PATH |  Trivial | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-7146](https://issues.apache.org/jira/browse/HDFS-7146) | NFS ID/Group lookup requires SSSD enumeration on the server |  Major | nfs | Yongjun Zhang | Yongjun Zhang |
| [HDFS-7097](https://issues.apache.org/jira/browse/HDFS-7097) | Allow block reports to be processed during checkpointing on standby name node |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-7009](https://issues.apache.org/jira/browse/HDFS-7009) | Active NN and standby NN have different live nodes |  Major | datanode | Ming Ma | Ming Ma |
| [HDFS-7008](https://issues.apache.org/jira/browse/HDFS-7008) | xlator should be closed upon exit from DFSAdmin#genericRefresh() |  Minor | . | Ted Yu | Tsuyoshi Ozawa |
| [HDFS-6938](https://issues.apache.org/jira/browse/HDFS-6938) | Cleanup javac warnings in FSNamesystem |  Trivial | namenode | Charles Lamb | Charles Lamb |
| [HDFS-6917](https://issues.apache.org/jira/browse/HDFS-6917) | Add an hdfs debug command to validate blocks, call recoverlease, etc. |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6841](https://issues.apache.org/jira/browse/HDFS-6841) | Use Time.monotonicNow() wherever applicable instead of Time.now() |  Major | . | Vinayakumar B | Vinayakumar B |
| [HDFS-6833](https://issues.apache.org/jira/browse/HDFS-6833) | DirectoryScanner should not register a deleting block with memory of DataNode |  Critical | datanode | Shinichi Yamashita | Shinichi Yamashita |
| [HDFS-6753](https://issues.apache.org/jira/browse/HDFS-6753) | Initialize checkDisk when DirectoryScanner not able to get files list for scanning |  Major | . | J.Andreina | J.Andreina |
| [HDFS-6662](https://issues.apache.org/jira/browse/HDFS-6662) | WebHDFS cannot open a file if its path contains "%" |  Critical | namenode | Brahma Reddy Battula | Gerson Carlos |
| [HDFS-6657](https://issues.apache.org/jira/browse/HDFS-6657) | Remove link to 'Legacy UI' in Namenode UI |  Minor | . | Vinayakumar B | Vinayakumar B |
| [HDFS-6538](https://issues.apache.org/jira/browse/HDFS-6538) | Comment format error in ShortCircuitRegistry javadoc |  Trivial | datanode | debugging | David Luo |
| [HDFS-6425](https://issues.apache.org/jira/browse/HDFS-6425) | Large postponedMisreplicatedBlocks has impact on blockReport latency |  Major | . | Ming Ma | Ming Ma |
| [HDFS-5578](https://issues.apache.org/jira/browse/HDFS-5578) | [JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HDFS-5445](https://issues.apache.org/jira/browse/HDFS-5445) | PacketReceiver populates the packetLen field in PacketHeader incorrectly |  Minor | datanode | Jonathan Mace | Jonathan Mace |
| [HDFS-3519](https://issues.apache.org/jira/browse/HDFS-3519) | Checkpoint upload may interfere with a concurrent saveNamespace |  Critical | namenode | Todd Lipcon | Ming Ma |
| [HDFS-2605](https://issues.apache.org/jira/browse/HDFS-2605) | CHANGES.txt has two "Release 0.21.1" sections |  Major | documentation | Konstantin Shvachko | Allen Wittenauer |
| [HDFS-1522](https://issues.apache.org/jira/browse/HDFS-1522) | Merge Block.BLOCK\_FILE\_PREFIX and DataStorage.BLOCK\_FILE\_PREFIX into one constant |  Major | datanode | Konstantin Shvachko | Dongming Liang |
| [HDFS-49](https://issues.apache.org/jira/browse/HDFS-49) | MiniDFSCluster.stopDataNode will always shut down a node in the cluster if a matching name is not found |  Minor | test | Steve Loughran | Steve Loughran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7914](https://issues.apache.org/jira/browse/HDFS-7914) | TestJournalNode#testFailToStartWithBadConfig fails when the default dfs.journalnode.http-address port 8480 is in use |  Major | . | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7585](https://issues.apache.org/jira/browse/HDFS-7585) | Get TestEnhancedByteBufferAccess working on CPU architectures with page sizes other than 4096 |  Major | test | sam liu | sam liu |
| [HDFS-7475](https://issues.apache.org/jira/browse/HDFS-7475) | Make TestLazyPersistFiles#testLazyPersistBlocksAreSaved deterministic |  Major | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7448](https://issues.apache.org/jira/browse/HDFS-7448) | TestBookKeeperHACheckpoints fails in trunk build |  Minor | . | Ted Yu | Akira AJISAKA |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7954](https://issues.apache.org/jira/browse/HDFS-7954) | TestBalancer#testBalancerWithPinnedBlocks failed on Windows |  Minor | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7951](https://issues.apache.org/jira/browse/HDFS-7951) | Fix NPE for TestFsDatasetImpl#testAddVolumeFailureReleasesInUseLock on Linux |  Major | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7950](https://issues.apache.org/jira/browse/HDFS-7950) | Fix TestFsDatasetImpl#testAddVolumes failure on Windows |  Major | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7948](https://issues.apache.org/jira/browse/HDFS-7948) | TestDataNodeHotSwapVolumes#testAddVolumeFailures failed on Windows |  Major | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7946](https://issues.apache.org/jira/browse/HDFS-7946) | TestDataNodeVolumeFailureReporting NPE on Windows |  Major | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7940](https://issues.apache.org/jira/browse/HDFS-7940) | Add tracing to DFSClient#setQuotaByStorageType |  Major | hdfs-client | Rakesh R | Rakesh R |
| [HDFS-7903](https://issues.apache.org/jira/browse/HDFS-7903) | Cannot recover block after truncate and delete snapshot |  Blocker | datanode, namenode | Tsz Wo Nicholas Sze | Plamen Jeliazkov |
| [HDFS-7855](https://issues.apache.org/jira/browse/HDFS-7855) | Separate class Packet from DFSOutputStream |  Major | hdfs-client | Li Bo | Li Bo |
| [HDFS-7843](https://issues.apache.org/jira/browse/HDFS-7843) | A truncated file is corrupted after rollback from a rolling upgrade |  Blocker | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7838](https://issues.apache.org/jira/browse/HDFS-7838) | Expose truncate API for libhdfs |  Major | datanode, namenode | Yi Liu | Yi Liu |
| [HDFS-7824](https://issues.apache.org/jira/browse/HDFS-7824) | GetContentSummary API and its namenode implementation for Storage Type Quota/Usage |  Major | datanode, namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7819](https://issues.apache.org/jira/browse/HDFS-7819) | Log WARN message for the blocks which are not in Block ID based layout |  Major | datanode | Rakesh R | Rakesh R |
| [HDFS-7814](https://issues.apache.org/jira/browse/HDFS-7814) | Fix usage string of storageType parameter for "dfsadmin -setSpaceQuota/clrSpaceQuota" |  Minor | datanode, namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7806](https://issues.apache.org/jira/browse/HDFS-7806) | Refactor: move StorageType from hadoop-hdfs to hadoop-common |  Minor | datanode, namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7776](https://issues.apache.org/jira/browse/HDFS-7776) | Adding additional unit tests for Quota By Storage Type |  Major | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7775](https://issues.apache.org/jira/browse/HDFS-7775) | Use consistent naming for NN-internal quota related types and functions |  Minor | datanode, namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7760](https://issues.apache.org/jira/browse/HDFS-7760) | Document truncate for WebHDFS. |  Minor | documentation | Yi Liu | Konstantin Shvachko |
| [HDFS-7746](https://issues.apache.org/jira/browse/HDFS-7746) | Add a test randomly mixing append, truncate and snapshot |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7740](https://issues.apache.org/jira/browse/HDFS-7740) | Test truncate with DataNodes restarting |  Major | test | Konstantin Shvachko | Yi Liu |
| [HDFS-7738](https://issues.apache.org/jira/browse/HDFS-7738) | Add more tests for truncate |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7723](https://issues.apache.org/jira/browse/HDFS-7723) | Quota By Storage Type namenode implemenation |  Major | namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7720](https://issues.apache.org/jira/browse/HDFS-7720) | Quota by Storage Type API, tools and ClientNameNode Protocol changes |  Major | datanode, namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7700](https://issues.apache.org/jira/browse/HDFS-7700) | Document quota support for storage types |  Major | documentation | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7681](https://issues.apache.org/jira/browse/HDFS-7681) | Fix ReplicaInputStream constructor to take InputStreams |  Major | datanode | Joe Pallas | Joe Pallas |
| [HDFS-7677](https://issues.apache.org/jira/browse/HDFS-7677) | DistributedFileSystem#truncate should resolve symlinks |  Major | datanode, namenode | Yi Liu | Yi Liu |
| [HDFS-7676](https://issues.apache.org/jira/browse/HDFS-7676) | Fix TestFileTruncate to avoid bug of HDFS-7611 |  Major | test | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-7659](https://issues.apache.org/jira/browse/HDFS-7659) | We should check the new length of truncate can't be a negative value. |  Major | datanode, namenode | Yi Liu | Yi Liu |
| [HDFS-7656](https://issues.apache.org/jira/browse/HDFS-7656) | Expose truncate API for HDFS httpfs |  Major | datanode, namenode | Yi Liu | Yi Liu |
| [HDFS-7655](https://issues.apache.org/jira/browse/HDFS-7655) | Expose truncate API for Web HDFS |  Major | datanode, namenode | Yi Liu | Yi Liu |
| [HDFS-7643](https://issues.apache.org/jira/browse/HDFS-7643) | Test case to ensure lazy persist files cannot be truncated |  Major | test | Arpit Agarwal | Yi Liu |
| [HDFS-7638](https://issues.apache.org/jira/browse/HDFS-7638) | Small fix and few refinements for FSN#truncate |  Major | datanode, namenode | Yi Liu | Yi Liu |
| [HDFS-7634](https://issues.apache.org/jira/browse/HDFS-7634) | Disallow truncation of Lazy persist files |  Major | datanode, namenode | Yi Liu | Yi Liu |
| [HDFS-7623](https://issues.apache.org/jira/browse/HDFS-7623) | Add htrace configuration properties to core-default.xml and update user doc about how to enable htrace |  Major | . | Yi Liu | Yi Liu |
| [HDFS-7589](https://issues.apache.org/jira/browse/HDFS-7589) | Break the dependency between libnative\_mini\_dfs and libhdfs |  Major | libhdfs | Zhanwei Wang | Zhanwei Wang |
| [HDFS-7573](https://issues.apache.org/jira/browse/HDFS-7573) | Consolidate the implementation of delete() into a single class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7543](https://issues.apache.org/jira/browse/HDFS-7543) | Avoid path resolution when getting FileStatus for audit logs |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7528](https://issues.apache.org/jira/browse/HDFS-7528) | Consolidate symlink-related implementation into a single class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7509](https://issues.apache.org/jira/browse/HDFS-7509) | Avoid resolving path multiple times |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-7506](https://issues.apache.org/jira/browse/HDFS-7506) | Consolidate implementation of setting inode attributes into a single class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7498](https://issues.apache.org/jira/browse/HDFS-7498) | Simplify the logic in INodesInPath |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-7486](https://issues.apache.org/jira/browse/HDFS-7486) | Consolidate XAttr-related implementation into a single class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7476](https://issues.apache.org/jira/browse/HDFS-7476) | Consolidate ACL-related operations to a single class |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-7474](https://issues.apache.org/jira/browse/HDFS-7474) | Avoid resolving path in FSPermissionChecker |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-7468](https://issues.apache.org/jira/browse/HDFS-7468) | Moving verify* functions to corresponding classes |  Major | . | Li Lu | Li Lu |
| [HDFS-7467](https://issues.apache.org/jira/browse/HDFS-7467) | Provide storage tier information for a directory via fsck |  Major | balancer & mover | Benoy Antony | Benoy Antony |
| [HDFS-7462](https://issues.apache.org/jira/browse/HDFS-7462) | Consolidate implementation of mkdirs() into a single class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7459](https://issues.apache.org/jira/browse/HDFS-7459) | Consolidate cache-related implementation in FSNamesystem into a single class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7450](https://issues.apache.org/jira/browse/HDFS-7450) | Consolidate the implementation of GetFileInfo(), GetListings() and GetContentSummary() into a single class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7440](https://issues.apache.org/jira/browse/HDFS-7440) | Consolidate snapshot related operations in a single class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7438](https://issues.apache.org/jira/browse/HDFS-7438) | Consolidate the implementation of rename() into a single class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7420](https://issues.apache.org/jira/browse/HDFS-7420) | Delegate permission checks to FSDirectory |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7415](https://issues.apache.org/jira/browse/HDFS-7415) | Move FSNameSystem.resolvePath() to FSDirectory |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7413](https://issues.apache.org/jira/browse/HDFS-7413) | Some unit tests should use NameNodeProtocols instead of FSNameSystem |  Major | test | Haohui Mai | Haohui Mai |
| [HDFS-7412](https://issues.apache.org/jira/browse/HDFS-7412) | Move RetryCache to NameNodeRpcServer |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7254](https://issues.apache.org/jira/browse/HDFS-7254) | Add documentation for hot swaping DataNode drives |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7209](https://issues.apache.org/jira/browse/HDFS-7209) | Populate EDEK cache when creating encryption zone |  Major | encryption, performance | Yi Liu | Yi Liu |
| [HDFS-7189](https://issues.apache.org/jira/browse/HDFS-7189) | Add trace spans for DFSClient metadata operations |  Major | datanode, namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7058](https://issues.apache.org/jira/browse/HDFS-7058) | Tests for truncate CLI |  Major | test | Konstantin Shvachko | Dasha Boudnik |
| [HDFS-7056](https://issues.apache.org/jira/browse/HDFS-7056) | Snapshot support for truncate |  Major | namenode | Konstantin Shvachko | Plamen Jeliazkov |
| [HDFS-7055](https://issues.apache.org/jira/browse/HDFS-7055) | Add tracing to DFSInputStream |  Major | datanode, namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7054](https://issues.apache.org/jira/browse/HDFS-7054) | Make DFSOutputStream tracing more fine-grained |  Major | datanode, namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7035](https://issues.apache.org/jira/browse/HDFS-7035) | Make adding a new data directory to the DataNode an atomic operation and improve error handling |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-6877](https://issues.apache.org/jira/browse/HDFS-6877) | Avoid calling checkDisk when an HDFS volume is removed during a write. |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-6824](https://issues.apache.org/jira/browse/HDFS-6824) | Additional user documentation for HDFS encryption. |  Minor | documentation | Andrew Wang | Andrew Wang |
| [HDFS-6803](https://issues.apache.org/jira/browse/HDFS-6803) | Documenting DFSClient#DFSInputStream expectations reading and preading in concurrent context |  Major | hdfs-client | stack | stack |
| [HDFS-6673](https://issues.apache.org/jira/browse/HDFS-6673) | Add delimited format support to PB OIV tool |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-5928](https://issues.apache.org/jira/browse/HDFS-5928) | show namespace and namenode ID on NN dfshealth page |  Major | . | Siqi Li | Siqi Li |
| [HDFS-5782](https://issues.apache.org/jira/browse/HDFS-5782) | BlockListAsLongs should take lists of Replicas rather than concrete classes |  Minor | datanode | David Powell | Joe Pallas |
| [HDFS-5631](https://issues.apache.org/jira/browse/HDFS-5631) | Expose interfaces required by FsDatasetSpi implementations |  Minor | datanode | David Powell | Joe Pallas |
| [HDFS-4266](https://issues.apache.org/jira/browse/HDFS-4266) | BKJM: Separate write and ack quorum |  Major | ha | Ivan Kelly | Rakesh R |
| [HDFS-4265](https://issues.apache.org/jira/browse/HDFS-4265) | BKJM doesn't take advantage of speculative reads |  Major | ha | Ivan Kelly | Rakesh R |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-2486](https://issues.apache.org/jira/browse/HDFS-2486) | Review issues with UnderReplicatedBlocks |  Minor | namenode | Steve Loughran | Uma Maheswara Rao G |


