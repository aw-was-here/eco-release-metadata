# Apache HBase Changelog

## Release 0.98.5 - 2014-08-11

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11623](https://issues.apache.org/jira/browse/HBASE-11623) | mutateRowsWithLocks might require updatesLock.readLock with waitTime=0 |  Minor | regionserver | cuijianwei | cuijianwei |
| [HBASE-11583](https://issues.apache.org/jira/browse/HBASE-11583) | Refactoring out the configuration changes for enabling VisibilityLabels in the unit tests. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11566](https://issues.apache.org/jira/browse/HBASE-11566) | make ExportSnapshot extendable by removing 'final' |  Minor | snapshots | Demai Ni | Andrew Purtell |
| [HBASE-11557](https://issues.apache.org/jira/browse/HBASE-11557) | Counter.class should always be added as dependencyJar |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11516](https://issues.apache.org/jira/browse/HBASE-11516) | Track time spent in executing coprocessors in each region. |  Minor | Coprocessors | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11480](https://issues.apache.org/jira/browse/HBASE-11480) | ClientScanner might not close the HConnection created in construction |  Trivial | Client, Scanners | cuijianwei | cuijianwei |
| [HBASE-3270](https://issues.apache.org/jira/browse/HBASE-3270) | When we create the .version file, we should create it in a tmp location and then move it into place |  Minor | master | stack | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11668](https://issues.apache.org/jira/browse/HBASE-11668) | Re-add HBASE\_LIBRARY\_PATH to bin/hbase |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11662](https://issues.apache.org/jira/browse/HBASE-11662) | Launching shell with long-form --debug fails |  Major | shell | Sean Busbey | Sean Busbey |
| [HBASE-11654](https://issues.apache.org/jira/browse/HBASE-11654) | WAL Splitting dirs are not deleted after replay. |  Major | master, wal | Victor Xu | Victor Xu |
| [HBASE-11632](https://issues.apache.org/jira/browse/HBASE-11632) | Region split needs to clear force split flag at the end of SplitRequest run |  Minor | regionserver | Jerry He | Jerry He |
| [HBASE-11609](https://issues.apache.org/jira/browse/HBASE-11609) | LoadIncrementalHFiles fails if the namespace is specified |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11588](https://issues.apache.org/jira/browse/HBASE-11588) | RegionServerMetricsWrapperRunnable misused the 'period' parameter |  Minor | metrics | Victor Xu | Victor Xu |
| [HBASE-11579](https://issues.apache.org/jira/browse/HBASE-11579) | CopyTable should check endtime value only if != 0 |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11565](https://issues.apache.org/jira/browse/HBASE-11565) | Stale connection could stay for a while |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+ |  Major | mapreduce, Scanners | Ishan Chhabra | Ishan Chhabra |
| [HBASE-11555](https://issues.apache.org/jira/browse/HBASE-11555) | TableSnapshotRegionSplit should be public |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11545](https://issues.apache.org/jira/browse/HBASE-11545) | mapred.TableSnapshotInputFormat is missing InterfaceAudience annotation |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11518](https://issues.apache.org/jira/browse/HBASE-11518) | doc update for how to create non-shared HConnection |  Minor | documentation | Qiang Tian | Qiang Tian |
| [HBASE-11388](https://issues.apache.org/jira/browse/HBASE-11388) | The order parameter is wrong when invoking the constructor of the ReplicationPeer In the method "getPeer" of the class ReplicationPeersZKImpl |  Minor | Replication | Qianxi Zhang | Qianxi Zhang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11651](https://issues.apache.org/jira/browse/HBASE-11651) | Add conf which disables MetaMigrationConvertingToPB check (for experts only) |  Major | master | stack | stack |
| [HBASE-11559](https://issues.apache.org/jira/browse/HBASE-11559) | Add dumping of DATA block usage to the BlockCache JSON report. |  Major | metrics | stack | stack |
| [HBASE-11318](https://issues.apache.org/jira/browse/HBASE-11318) | Classes in security subpackages missing @InterfaceAudience annotations. |  Major | security | Jonathan Hsieh | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


