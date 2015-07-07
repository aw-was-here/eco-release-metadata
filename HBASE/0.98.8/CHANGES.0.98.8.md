# Apache HBase Changelog

## Release 0.98.8 - 2014-11-15

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12434](https://issues.apache.org/jira/browse/HBASE-12434) | Add a command to compact all the regions in a regionserver |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12432](https://issues.apache.org/jira/browse/HBASE-12432) | RpcRetryingCaller should log after fixed number of retries like AsyncProcess |  Minor | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12416](https://issues.apache.org/jira/browse/HBASE-12416) | RegionServerCallable should report what host it was communicating with |  Trivial | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12389](https://issues.apache.org/jira/browse/HBASE-12389) | Reduce the number of versions configured for the ACL table |  Minor | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12272](https://issues.apache.org/jira/browse/HBASE-12272) | Generate Thrift code through maven |  Major | build, documentation, Thrift | Niels Basjes | Niels Basjes |
| [HBASE-12271](https://issues.apache.org/jira/browse/HBASE-12271) | Add counters for files skipped during snapshot export |  Minor | snapshots | Patrick White | Patrick White |
| [HBASE-12264](https://issues.apache.org/jira/browse/HBASE-12264) | ImportTsv should fail fast if output is not specified and table does not exist |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12243](https://issues.apache.org/jira/browse/HBASE-12243) | HBaseFsck should auto set ignorePreCheckPermission to true if no fix option is set. |  Minor | hbck | Yi Deng | Yi Deng |
| [HBASE-10082](https://issues.apache.org/jira/browse/HBASE-10082) | Describe 'table' output is all on one line, could use better formatting |  Minor | shell | Maxime C Dumas | Srikanth Srungarapu |
| [HBASE-8361](https://issues.apache.org/jira/browse/HBASE-8361) | Bulk load and other utilities should not create tables for user |  Major | mapreduce | Nick Dimiduk | Ashish Singhi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | Reduce the effective scope of GLOBAL CREATE and ADMIN permission |  Major | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12440](https://issues.apache.org/jira/browse/HBASE-12440) | Region may remain offline on clean startup under certain race condition |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12414](https://issues.apache.org/jira/browse/HBASE-12414) | Move HFileLink.exists() to base class |  Trivial | io | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12399](https://issues.apache.org/jira/browse/HBASE-12399) | Master startup race between metrics and RpcServer |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12386](https://issues.apache.org/jira/browse/HBASE-12386) | Replication gets stuck following a transient zookeeper error to remote peer cluster |  Major | Replication | Adrian Muraru | Adrian Muraru |
| [HBASE-12376](https://issues.apache.org/jira/browse/HBASE-12376) | HBaseAdmin leaks ZK connections if failure starting watchers (ConnectionLossException) |  Critical | Zookeeper | stack | stack |
| [HBASE-12366](https://issues.apache.org/jira/browse/HBASE-12366) | Add login code to HBase Canary tool. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12306](https://issues.apache.org/jira/browse/HBASE-12306) | CellCounter output's wrong value for Total Families Across all Rows in output file |  Major | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12304](https://issues.apache.org/jira/browse/HBASE-12304) | CellCounter will throw AIOBE when output directory is not specified |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12302](https://issues.apache.org/jira/browse/HBASE-12302) | VisibilityClient getAuths does not propagate remote service exception correctly |  Minor | Client, security | Jerry He | Jerry He |
| [HBASE-12301](https://issues.apache.org/jira/browse/HBASE-12301) | user\_permission command does not show global permissions |  Major | security, shell | Jerry He | Matteo Bertozzi |
| [HBASE-12294](https://issues.apache.org/jira/browse/HBASE-12294) | Can't build the docs after the hbase-checkstyle module was added |  Blocker | build | Misty Stanley-Jones | Elliott Clark |
| [HBASE-12278](https://issues.apache.org/jira/browse/HBASE-12278) | Race condition in TestSecureLoadIncrementalHFilesSplitRecovery |  Critical | test | Dima Spivak | Dima Spivak |
| [HBASE-12265](https://issues.apache.org/jira/browse/HBASE-12265) | HBase shell 'show\_filters' points to internal Facebook URL |  Trivial | shell | Niels Basjes | Andrew Purtell |
| [HBASE-12261](https://issues.apache.org/jira/browse/HBASE-12261) | Add checkstyle to HBase build process |  Major | build, site | Elliott Clark | Elliott Clark |
| [HBASE-12258](https://issues.apache.org/jira/browse/HBASE-12258) | Make TestHBaseFsck less flaky |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12257](https://issues.apache.org/jira/browse/HBASE-12257) | TestAssignmentManager unsynchronized access to regionPlans |  Trivial | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12252](https://issues.apache.org/jira/browse/HBASE-12252) | IntegrationTestBulkLoad fails with illegal partition error |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-12240](https://issues.apache.org/jira/browse/HBASE-12240) | hbase-daemon.sh should remove pid file if process not found running |  Minor | Usability | Ashish Singhi | Ashish Singhi |
| [HBASE-12229](https://issues.apache.org/jira/browse/HBASE-12229) | NullPointerException in SnapshotTestingUtils |  Minor | test | Dima Spivak | Dima Spivak |
| [HBASE-12219](https://issues.apache.org/jira/browse/HBASE-12219) | Cache more efficiently getAll() and get() in FSTableDescriptors |  Major | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12200](https://issues.apache.org/jira/browse/HBASE-12200) | When an RPC server handler thread dies, throw exception |  Minor | regionserver | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-12198](https://issues.apache.org/jira/browse/HBASE-12198) | Fix the bug of not updating location cache |  Minor | Client | Yi Deng | Yi Deng |
| [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | Move REST |  Major | REST | Elliott Clark | Elliott Clark |
| [HBASE-12183](https://issues.apache.org/jira/browse/HBASE-12183) | FuzzyRowFilter doesn't support reverse scans |  Major | Filters | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12126](https://issues.apache.org/jira/browse/HBASE-12126) | Region server coprocessor endpoint |  Major | Coprocessors | Virag Kothari | Virag Kothari |
| [HBASE-12109](https://issues.apache.org/jira/browse/HBASE-12109) | user\_permission command for namespace does not return correct result |  Minor | shell | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-11698](https://issues.apache.org/jira/browse/HBASE-11698) | TestFullLogReconstruction has duplicate config setting |  Trivial | test | Sean Busbey | Toshihiro Suzuki |
| [HBASE-10780](https://issues.apache.org/jira/browse/HBASE-10780) | HFilePrettyPrinter#processFile should return immediately if file does not exist |  Minor | HFile | Ashish Singhi | Ashish Singhi |
| [HBASE-9157](https://issues.apache.org/jira/browse/HBASE-9157) | ZKUtil.blockUntilAvailable loops forever with non-recoverable errors |  Minor | Zookeeper | Jeffrey Zhong | Jeffrey Zhong |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12403](https://issues.apache.org/jira/browse/HBASE-12403) | IntegrationTestMTTR flaky due to aggressive RS restart timeout |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12401](https://issues.apache.org/jira/browse/HBASE-12401) | Add some timestamp signposts in IntegrationTestMTTR |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12363](https://issues.apache.org/jira/browse/HBASE-12363) | Improve how KEEP\_DELETED\_CELLS works with MIN\_VERSIONS |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | CopyTable with bulkload |  Minor | Client | @deprecated Yi Deng | Yi Deng |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12381](https://issues.apache.org/jira/browse/HBASE-12381) | Add maven enforcer rules for build assumptions |  Minor | build | Sean Busbey | Sean Busbey |


