# Hadoop Changelog

## Release 2.4.0 - 2014-04-07

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8691](https://issues.apache.org/jira/browse/HADOOP-8691) | FsShell can print "Found xxx items" unnecessarily often |  Minor | fs | Jason Lowe | Daryn Sharp |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10184](https://issues.apache.org/jira/browse/HADOOP-10184) | Hadoop Common changes required to support HDFS ACLs. |  Major | fs, security | Chris Nauroth | Chris Nauroth |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10423](https://issues.apache.org/jira/browse/HADOOP-10423) | Clarify compatibility policy document for combination of new client and old server. |  Minor | documentation | Chris Nauroth | Chris Nauroth |
| [HADOOP-10386](https://issues.apache.org/jira/browse/HADOOP-10386) | Log proxy hostname in various exceptions being thrown in a HA setup |  Minor | ha | Arpit Gupta | Haohui Mai |
| [HADOOP-10383](https://issues.apache.org/jira/browse/HADOOP-10383) | InterfaceStability annotations should have RetentionPolicy.RUNTIME |  Major | . | Enis Soztutar | Enis Soztutar |
| [HADOOP-10379](https://issues.apache.org/jira/browse/HADOOP-10379) | Protect authentication cookies with the HttpOnly and Secure flags |  Major | . | Haohui Mai | Haohui Mai |
| [HADOOP-10374](https://issues.apache.org/jira/browse/HADOOP-10374) | InterfaceAudience annotations should have RetentionPolicy.RUNTIME |  Major | . | Enis Soztutar | Enis Soztutar |
| [HADOOP-10348](https://issues.apache.org/jira/browse/HADOOP-10348) | Deprecate hadoop.ssl.configuration in branch-2, and remove it in trunk |  Major | . | Haohui Mai | Haohui Mai |
| [HADOOP-10343](https://issues.apache.org/jira/browse/HADOOP-10343) | Change info to debug log in LossyRetryInvocationHandler |  Minor | . | Arpit Gupta | Arpit Gupta |
| [HADOOP-10333](https://issues.apache.org/jira/browse/HADOOP-10333) | Fix grammatical error in overview.html document |  Trivial | . | René Nyffenegger | René Nyffenegger |
| [HADOOP-10295](https://issues.apache.org/jira/browse/HADOOP-10295) | Allow distcp to automatically identify the checksum type of source files and use it for the target |  Major | tools/distcp | Jing Zhao | Jing Zhao |
| [HADOOP-10221](https://issues.apache.org/jira/browse/HADOOP-10221) | Add a plugin to specify SaslProperties for RPC protocol based on connection properties |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10211](https://issues.apache.org/jira/browse/HADOOP-10211) | Enable RPC protocol to negotiate SASL-QOP values between clients and servers |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10139](https://issues.apache.org/jira/browse/HADOOP-10139) | Update and improve the Single Cluster Setup document |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-9454](https://issues.apache.org/jira/browse/HADOOP-9454) | Support multipart uploads for s3native |  Major | fs/s3 | Jordan Mendelson | Akira AJISAKA |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10450](https://issues.apache.org/jira/browse/HADOOP-10450) | Build zlib native code bindings in hadoop.dll for Windows. |  Major | io, native | Chris Nauroth | Chris Nauroth |
| [HADOOP-10442](https://issues.apache.org/jira/browse/HADOOP-10442) | Group look-up can cause segmentation fault when certain JNI-based mapping module is used. |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-10441](https://issues.apache.org/jira/browse/HADOOP-10441) | Namenode metric "rpc.RetryCache/NameNodeRetryCache.CacheHit" can't be correctly processed by Ganglia |  Blocker | metrics | Jing Zhao | Jing Zhao |
| [HADOOP-10440](https://issues.apache.org/jira/browse/HADOOP-10440) | HarFsInputStream of HarFileSystem, when reading data, computing the position has bug |  Major | fs | guodongdong | guodongdong |
| [HADOOP-10425](https://issues.apache.org/jira/browse/HADOOP-10425) | Incompatible behavior of LocalFileSystem:getContentSummary |  Critical | fs | Brandon Li | Tsz Wo Nicholas Sze |
| [HADOOP-10422](https://issues.apache.org/jira/browse/HADOOP-10422) | Remove redundant logging of RPC retry attempts. |  Minor | ipc | Chris Nauroth | Chris Nauroth |
| [HADOOP-10395](https://issues.apache.org/jira/browse/HADOOP-10395) | TestCallQueueManager is flaky |  Minor | test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-10394](https://issues.apache.org/jira/browse/HADOOP-10394) | TestAuthenticationFilter is flaky |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-10368](https://issues.apache.org/jira/browse/HADOOP-10368) | InputStream is not closed in VersionInfo ctor |  Minor | util | Ted Yu | Tsuyoshi Ozawa |
| [HADOOP-10361](https://issues.apache.org/jira/browse/HADOOP-10361) | Correct alignment in CLI output for ACLs. |  Minor | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-10355](https://issues.apache.org/jira/browse/HADOOP-10355) | TestLoadGenerator#testLoadGenerator fails |  Major | . | Akira AJISAKA | Haohui Mai |
| [HADOOP-10354](https://issues.apache.org/jira/browse/HADOOP-10354) | TestWebHDFS fails after merge of HDFS-4685 to trunk |  Major | fs | Yongjun Zhang | Chris Nauroth |
| [HADOOP-10353](https://issues.apache.org/jira/browse/HADOOP-10353) | FsUrlStreamHandlerFactory is not thread safe |  Major | fs | Tudor Scurtu | Tudor Scurtu |
| [HADOOP-10352](https://issues.apache.org/jira/browse/HADOOP-10352) | Recursive setfacl erroneously attempts to apply default ACL to files. |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-10346](https://issues.apache.org/jira/browse/HADOOP-10346) | Deadlock while logging tokens |  Blocker | security | Jason Lowe | Jason Lowe |
| [HADOOP-10338](https://issues.apache.org/jira/browse/HADOOP-10338) | Cannot get the FileStatus of the root inode from the new Globber |  Major | . | Andrew Wang | Colin Patrick McCabe |
| [HADOOP-10337](https://issues.apache.org/jira/browse/HADOOP-10337) | ConcurrentModificationException from MetricsDynamicMBeanBase.createMBeanInfo() |  Major | metrics | Liang Xie | Liang Xie |
| [HADOOP-10330](https://issues.apache.org/jira/browse/HADOOP-10330) | TestFrameDecoder fails if it cannot bind port 12345 |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-10328](https://issues.apache.org/jira/browse/HADOOP-10328) | loadGenerator exit code is not reliable |  Major | tools | Arpit Gupta | Haohui Mai |
| [HADOOP-10327](https://issues.apache.org/jira/browse/HADOOP-10327) | Trunk windows build broken after HDFS-5746 |  Blocker | native | Vinayakumar B | Vinayakumar B |
| [HADOOP-10326](https://issues.apache.org/jira/browse/HADOOP-10326) | M/R jobs can not access S3 if Kerberos is enabled |  Major | security | Manuel DE FERRAN | bc Wong |
| [HADOOP-10320](https://issues.apache.org/jira/browse/HADOOP-10320) | Javadoc in InterfaceStability.java lacks final \</ul\> |  Trivial | documentation | René Nyffenegger | René Nyffenegger |
| [HADOOP-10314](https://issues.apache.org/jira/browse/HADOOP-10314) | The ls command help still shows outdated 0.16 format. |  Major | . | Kihwal Lee | Rushabh S Shah |
| [HADOOP-10301](https://issues.apache.org/jira/browse/HADOOP-10301) | AuthenticationFilter should return Forbidden for failed authentication |  Blocker | security | Daryn Sharp | Daryn Sharp |
| [HADOOP-10249](https://issues.apache.org/jira/browse/HADOOP-10249) | LdapGroupsMapping should trim ldap password read from file |  Major | . | Dilli Arumugam | Dilli Arumugam |
| [HADOOP-10191](https://issues.apache.org/jira/browse/HADOOP-10191) | Missing executable permission on viewfs internal dirs |  Blocker | viewfs | Gera Shegalov | Gera Shegalov |
| [HADOOP-10085](https://issues.apache.org/jira/browse/HADOOP-10085) | CompositeService should allow adding services while being inited |  Blocker | . | Karthik Kambatla | Steve Loughran |
| [HADOOP-10070](https://issues.apache.org/jira/browse/HADOOP-10070) | RPC client doesn't use per-connection conf to determine server's expected Kerberos principal name |  Major | security | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-10015](https://issues.apache.org/jira/browse/HADOOP-10015) | UserGroupInformation prints out excessive ERROR warnings |  Minor | security | Haohui Mai | Nicolas Liochon |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9525](https://issues.apache.org/jira/browse/HADOOP-9525) | Add tests that validate winutils chmod behavior on folders |  Major | test, util | Ivan Mitic | Ivan Mitic |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10449](https://issues.apache.org/jira/browse/HADOOP-10449) | Fix the javac warnings in the security packages. |  Minor | security | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-10437](https://issues.apache.org/jira/browse/HADOOP-10437) | Fix the javac warnings in the conf and the util package |  Minor | conf, util | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-10407](https://issues.apache.org/jira/browse/HADOOP-10407) | Fix the javac warnings in the ipc package. |  Minor | ipc | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-10399](https://issues.apache.org/jira/browse/HADOOP-10399) | FileContext API for ACLs. |  Major | fs | Chris Nauroth | Vinayakumar B |
| [HADOOP-10393](https://issues.apache.org/jira/browse/HADOOP-10393) | Fix hadoop-auth javac warnings |  Minor | security | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-10285](https://issues.apache.org/jira/browse/HADOOP-10285) | Admin interface to swap callqueue at runtime |  Major | . | Chris Li | Chris Li |
| [HADOOP-10280](https://issues.apache.org/jira/browse/HADOOP-10280) | Make Schedulables return a configurable identity of user or group |  Major | . | Chris Li | Chris Li |
| [HADOOP-10278](https://issues.apache.org/jira/browse/HADOOP-10278) | Refactor to make CallQueue pluggable |  Major | ipc | Chris Li | Chris Li |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


