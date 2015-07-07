# Apache HBase Changelog

## Release 0.98.14 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13849](https://issues.apache.org/jira/browse/HBASE-13849) | Remove restore and clone snapshot from the WebUI |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13646](https://issues.apache.org/jira/browse/HBASE-13646) | HRegion#execService should not try to build incomplete messages |  Major | Coprocessors, regionserver | Andrey Stepachev | Andrey Stepachev |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13356](https://issues.apache.org/jira/browse/HBASE-13356) | HBase should provide an InputFormat supporting multiple scans in mapreduce jobs over snapshots |  Minor | mapreduce | Andrew Mains | Andrew Mains |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14002](https://issues.apache.org/jira/browse/HBASE-14002) | Add --noReplicationSetup option to IntegrationTestReplication |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13961](https://issues.apache.org/jira/browse/HBASE-13961) | SnapshotManager#initialize should set snapshotLayoutVersion if it allows to create snapshot with old layout format |  Minor | snapshots | cuijianwei | cuijianwei |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13995](https://issues.apache.org/jira/browse/HBASE-13995) | ServerName is not fully case insensitive |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13978](https://issues.apache.org/jira/browse/HBASE-13978) | Variable never assigned in SimpleTotalOrderPartitioner.getPartition() |  Major | mapreduce | Lars George | Bhupendra Kumar Jain |
| [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | Region splitting uses a single thread in most common cases |  Critical | regionserver | Hari Krishna Dara | Hari Krishna Dara |
| [HBASE-13958](https://issues.apache.org/jira/browse/HBASE-13958) | RESTApiClusterManager calls kill() instead of suspend() and resume() |  Minor | integration tests | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | Deletes done during the region merge transaction may get eclipsed |  Major | master, regionserver | Devaraj Das | Enis Soztutar |
| [HBASE-13935](https://issues.apache.org/jira/browse/HBASE-13935) | Orphaned namespace table ZK node should not prevent master to start |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13923](https://issues.apache.org/jira/browse/HBASE-13923) | Loaded region coprocessors are not reported in shell status command |  Major | regionserver, shell | Lars George | Ashish Singhi |
| [HBASE-13918](https://issues.apache.org/jira/browse/HBASE-13918) | Fix hbase:namespace description in webUI |  Trivial | hbase | Patrick White | Patrick White |
| [HBASE-13892](https://issues.apache.org/jira/browse/HBASE-13892) | Scanner with all results filtered out results in NPE |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-13885](https://issues.apache.org/jira/browse/HBASE-13885) | ZK watches leaks during snapshots |  Critical | snapshots | Abhishek Singh Chouhan | Lars Hofhansl |
| [HBASE-13878](https://issues.apache.org/jira/browse/HBASE-13878) | Set hbase.fs.tmp.dir config in HBaseTestingUtility.java for Phoenix UT to use |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13861](https://issues.apache.org/jira/browse/HBASE-13861) | BucketCacheTmpl.jamon has wrong bucket free and used labels |  Major | regionserver, UI | Lars George | Matt Warhaftig |
| [HBASE-13849](https://issues.apache.org/jira/browse/HBASE-13849) | Remove restore and clone snapshot from the WebUI |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13835](https://issues.apache.org/jira/browse/HBASE-13835) | KeyValueHeap.current might be in heap when exception happens in pollRealKV |  Major | Scanners | zhouyingchao | zhouyingchao |
| [HBASE-13646](https://issues.apache.org/jira/browse/HBASE-13646) | HRegion#execService should not try to build incomplete messages |  Major | Coprocessors, regionserver | Andrey Stepachev | Andrey Stepachev |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13937](https://issues.apache.org/jira/browse/HBASE-13937) | Partially revert HBASE-13172 |  Major | Region Assignment | Enis Soztutar | Enis Soztutar |
| [HBASE-13899](https://issues.apache.org/jira/browse/HBASE-13899) | Jacoco instrumentation fails under jdk8 |  Major | build, test | Sean Busbey | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | book.pdf is not renamed during site build |  Major | site | Nick Dimiduk | Gabor Liptak |


