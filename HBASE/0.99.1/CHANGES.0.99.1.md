# Apache HBase Changelog

## Release 0.99.1 - 2014-10-15

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | TestScannerModel fails if using jackson 1.9.13 |  Major | REST | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12046](https://issues.apache.org/jira/browse/HBASE-12046) | HTD/HCD setters should be builder-style |  Major | . | Enis Soztutar | Enis Soztutar |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12133](https://issues.apache.org/jira/browse/HBASE-12133) | Add FastLongHistogram for metric computation |  Minor | metrics | Yi Deng | Yi Deng |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12118](https://issues.apache.org/jira/browse/HBASE-12118) | Explain how to grant permission to a namespace in grant command usage |  Minor | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12090](https://issues.apache.org/jira/browse/HBASE-12090) | Bytes: more Unsafe, more Faster |  Major | Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12049](https://issues.apache.org/jira/browse/HBASE-12049) | Help for alter command is a bit confusing |  Trivial | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12032](https://issues.apache.org/jira/browse/HBASE-12032) | Script to stop regionservers via RPC |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-12021](https://issues.apache.org/jira/browse/HBASE-12021) | Hbase shell does not respect the HBASE\_OPTS set by the user in console |  Minor | documentation, Operability, shell | nijel | Ashish Singhi |
| [HBASE-12013](https://issues.apache.org/jira/browse/HBASE-12013) | Make region\_mover.rb support multiple regionservers per host |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-11948](https://issues.apache.org/jira/browse/HBASE-11948) | graceful\_stop.sh should use hbase-daemon.sh when executed on the decomissioned node |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-11796](https://issues.apache.org/jira/browse/HBASE-11796) | Add client support for atomic checkAndMutate |  Major | Client | Danny Purcell | Srikanth Srungarapu |
| [HBASE-10411](https://issues.apache.org/jira/browse/HBASE-10411) | [Book] Add a kerberos 'request is a replay (34)' issue at troubleshooting section |  Minor | documentation, security | takeshi.miao | takeshi.miao |
| [HBASE-10153](https://issues.apache.org/jira/browse/HBASE-10153) | improve VerifyReplication to compute BADROWS more accurately |  Major | Operability, Replication | cuijianwei | cuijianwei |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12200](https://issues.apache.org/jira/browse/HBASE-12200) | When an RPC server handler thread dies, throw exception |  Minor | regionserver | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-12199](https://issues.apache.org/jira/browse/HBASE-12199) | Make TestAtomicOperation and TestEncodedSeekers faster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12198](https://issues.apache.org/jira/browse/HBASE-12198) | Fix the bug of not updating location cache |  Minor | Client | Yi Deng | Yi Deng |
| [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | Move REST |  Major | REST | Elliott Clark | Elliott Clark |
| [HBASE-12191](https://issues.apache.org/jira/browse/HBASE-12191) | Make TestCacheOnWrite faster. |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12183](https://issues.apache.org/jira/browse/HBASE-12183) | FuzzyRowFilter doesn't support reverse scans |  Major | Filters | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12170](https://issues.apache.org/jira/browse/HBASE-12170) | TestReplicaWithCluster.testReplicaAndReplication timeouts |  Major | test | stack | stack |
| [HBASE-12166](https://issues.apache.org/jira/browse/HBASE-12166) | TestDistributedLogSplitting.testMasterStartsUpWithLogReplayWork |  Major | test, wal | stack | Jimmy Xiang |
| [HBASE-12165](https://issues.apache.org/jira/browse/HBASE-12165) | TestEndToEndSplitTransaction.testFromClientSideWhileSplitting fails |  Major | test | stack | stack |
| [HBASE-12158](https://issues.apache.org/jira/browse/HBASE-12158) | TestHttpServerLifecycle.testStartedServerWithRequestLog goes zombie on occasion |  Major | test | stack | stack |
| [HBASE-12153](https://issues.apache.org/jira/browse/HBASE-12153) | Fixing TestReplicaWithCluster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12151](https://issues.apache.org/jira/browse/HBASE-12151) | Make dev scripts executable |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12149](https://issues.apache.org/jira/browse/HBASE-12149) | TestRegionPlacement is failing undeterministically |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12140](https://issues.apache.org/jira/browse/HBASE-12140) | Add ConnectionFactory.createConnection() to create using default HBaseConfiguration. |  Major | Client | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-12139](https://issues.apache.org/jira/browse/HBASE-12139) | StochasticLoadBalancer doesn't work on large lightly loaded clusters |  Critical | Balancer, master | Elliott Clark | Elliott Clark |
| [HBASE-12137](https://issues.apache.org/jira/browse/HBASE-12137) | Alter table add cf doesn't do compression test |  Major | master | Virag Kothari | Virag Kothari |
| [HBASE-12136](https://issues.apache.org/jira/browse/HBASE-12136) | Race condition between client adding tableCF replication znode and  server triggering TableCFsTracker |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-12135](https://issues.apache.org/jira/browse/HBASE-12135) | Website is broken |  Blocker | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12134](https://issues.apache.org/jira/browse/HBASE-12134) | publish\_website.sh script is too optimistic |  Major | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12126](https://issues.apache.org/jira/browse/HBASE-12126) | Region server coprocessor endpoint |  Major | Coprocessors | Virag Kothari | Virag Kothari |
| [HBASE-12123](https://issues.apache.org/jira/browse/HBASE-12123) | Failed assertion in BucketCache after 11331 |  Major | regionserver | Enis Soztutar | Nick Dimiduk |
| [HBASE-12120](https://issues.apache.org/jira/browse/HBASE-12120) | HBase shell doesn't allow deleting of a cell by user with W-only permissions to it |  Major | shell | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12109](https://issues.apache.org/jira/browse/HBASE-12109) | user\_permission command for namespace does not return correct result |  Minor | shell | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | TestScannerModel fails if using jackson 1.9.13 |  Major | REST | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12098](https://issues.apache.org/jira/browse/HBASE-12098) | User granted namespace table create permissions can't create a table |  Critical | Client, security | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12067](https://issues.apache.org/jira/browse/HBASE-12067) | Remove deprecated metrics classes. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12065](https://issues.apache.org/jira/browse/HBASE-12065) |  Import tool is not restoring multiple DeleteFamily markers of a row |  Minor | util | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-12064](https://issues.apache.org/jira/browse/HBASE-12064) | hbase.master.balancer.stochastic.numRegionLoadsToRemember is not used |  Minor | Balancer | Junegunn Choi | Junegunn Choi |
| [HBASE-12044](https://issues.apache.org/jira/browse/HBASE-12044) | REST delete operation should not retry disableTable for DoNotRetryIOException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12043](https://issues.apache.org/jira/browse/HBASE-12043) | REST server should respond with FORBIDDEN(403) code on AccessDeniedException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12034](https://issues.apache.org/jira/browse/HBASE-12034) | If I kill single RS in branch-1, all regions end up on Master! |  Critical | master | stack | Jimmy Xiang |
| [HBASE-12025](https://issues.apache.org/jira/browse/HBASE-12025) | TestHttpServerLifecycle.testStartedServerWithRequestLog hangs frequently |  Major | test | stack | stack |
| [HBASE-12024](https://issues.apache.org/jira/browse/HBASE-12024) | Fix javadoc warning |  Trivial | documentation | Matteo Bertozzi | Anoop Sam John |
| [HBASE-12019](https://issues.apache.org/jira/browse/HBASE-12019) | hbase-daemon.sh overwrite HBASE\_ROOT\_LOGGER and HBASE\_SECURITY\_LOGGER variables |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-11994](https://issues.apache.org/jira/browse/HBASE-11994) | PutCombiner floods the M/R log with repeated log messages. |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-11890](https://issues.apache.org/jira/browse/HBASE-11890) | HBase REST Client is hard coded to http protocol |  Major | Client | Eric Yang | Qiang Tian |
| [HBASE-11804](https://issues.apache.org/jira/browse/HBASE-11804) | Raise default heap size if unspecified |  Major | scripts | Elliott Clark | Elliott Clark |
| [HBASE-11405](https://issues.apache.org/jira/browse/HBASE-11405) | Multiple invocations of hbck in parallel disables balancer permanently |  Major | Balancer, hbck | bharath v | bharath v |
| [HBASE-11266](https://issues.apache.org/jira/browse/HBASE-11266) | Remove shaded references to logger |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-11145](https://issues.apache.org/jira/browse/HBASE-11145) | UNEXPECTED!!! when HLog sync: Queue full |  Critical | wal | Anoop Sam John | stack |
| [HBASE-10748](https://issues.apache.org/jira/browse/HBASE-10748) | hbase-daemon.sh fails to execute with 'sh' command |  Major | scripts | Ashish Singhi | Ashish Singhi |
| [HBASE-10314](https://issues.apache.org/jira/browse/HBASE-10314) | Add Chaos Monkey that doesn't touch the master |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-9005](https://issues.apache.org/jira/browse/HBASE-9005) | Improve documentation around KEEP\_DELETED\_CELLS, time range scans, and delete markers |  Minor | documentation | Lars Hofhansl | Misty Stanley-Jones |
| [HBASE-8808](https://issues.apache.org/jira/browse/HBASE-8808) | Use Jacoco to generate Unit Test coverage reports |  Trivial | build | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-6994](https://issues.apache.org/jira/browse/HBASE-6994) | minor doc update about DEFAULT\_ACCEPTABLE\_FACTOR |  Minor | documentation | Liang Xie | Liang Xie |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12008](https://issues.apache.org/jira/browse/HBASE-12008) | Remove IntegrationTestImportTsv#testRunFromOutputCommitter |  Minor | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11838](https://issues.apache.org/jira/browse/HBASE-11838) | Enable PREFIX\_TREE in integration tests |  Minor | test | Jimmy Xiang | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12210](https://issues.apache.org/jira/browse/HBASE-12210) | Avoid KeyValue in Prefix Tree |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12115](https://issues.apache.org/jira/browse/HBASE-12115) | Fix NumberFormat Exception in TableInputFormatBase. |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12112](https://issues.apache.org/jira/browse/HBASE-12112) | Avoid KeyValueUtil#ensureKeyValue some more simple cases |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12104](https://issues.apache.org/jira/browse/HBASE-12104) | Some optimization and bugfix for HTableMultiplexer |  Major | Client | Yi Deng | Yi Deng |
| [HBASE-12086](https://issues.apache.org/jira/browse/HBASE-12086) | Fix bugs in HTableMultiplexer |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-12082](https://issues.apache.org/jira/browse/HBASE-12082) | Find a way to set timestamp on Cells on the server |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12079](https://issues.apache.org/jira/browse/HBASE-12079) | Deprecate KeyValueUtil#ensureKeyValue(s) |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12068](https://issues.apache.org/jira/browse/HBASE-12068) | [Branch-1] Avoid need to always do KeyValueUtil#ensureKeyValue for Filter transformCell |  Major | Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-12059](https://issues.apache.org/jira/browse/HBASE-12059) | Create hbase-annotations module |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-12050](https://issues.apache.org/jira/browse/HBASE-12050) | Avoid KeyValueUtil#ensureKeyValue from DefaultMemStore |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12047](https://issues.apache.org/jira/browse/HBASE-12047) | Avoid usage of KeyValueUtil#ensureKeyValue in simple cases |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | CopyTable with bulkload |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-11930](https://issues.apache.org/jira/browse/HBASE-11930) | Document new permission check to roll WAL writer |  Major | documentation, regionserver, security, wal | Andrew Purtell | Jerry He |
| [HBASE-11920](https://issues.apache.org/jira/browse/HBASE-11920) | Add CP hooks for ReplicationEndPoint |  Major | Coprocessors, Replication | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11917](https://issues.apache.org/jira/browse/HBASE-11917) | Deprecate / Remove HTableUtil |  Major | Client, Usability | Enis Soztutar | stack |
| [HBASE-11872](https://issues.apache.org/jira/browse/HBASE-11872) | Avoid usage of KeyValueUtil#ensureKeyValue from Compactor |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11738](https://issues.apache.org/jira/browse/HBASE-11738) | Document improvements to LoadTestTool and PerformanceEvaluation |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11178](https://issues.apache.org/jira/browse/HBASE-11178) | Remove deprecation annotations from mapred namespace |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11981](https://issues.apache.org/jira/browse/HBASE-11981) | Document how to find the units of measure for a given HBase metric |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11761](https://issues.apache.org/jira/browse/HBASE-11761) | Add a FAQ item for updating a maven-managed application from 0.94 -\> 0.96+ |  Major | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11730](https://issues.apache.org/jira/browse/HBASE-11730) | Document release managers for non-deprecated branches |  Major | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11692](https://issues.apache.org/jira/browse/HBASE-11692) | Document how and why to do a manual region split |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-9004](https://issues.apache.org/jira/browse/HBASE-9004) | Fix Documentation around Minor compaction and ttl |  Major | documentation | Elliott Clark | Masatake Iwasaki |


