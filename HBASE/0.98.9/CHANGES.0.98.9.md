# Apache HBase Changelog

## Release 0.98.9 - 2014-12-22

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12346](https://issues.apache.org/jira/browse/HBASE-12346) | Scan's default auths behavior under Visibility labels |  Major | API, security | Jerry He | Jerry He |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12496](https://issues.apache.org/jira/browse/HBASE-12496) | A blockedRequestsCount metric |  Minor | metrics | Yi Deng | Yi Deng |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12676](https://issues.apache.org/jira/browse/HBASE-12676) | Fix the misleading ASCII art in IntegrationTestBigLinkedList |  Trivial | documentation, integration tests | Yi Deng | Yi Deng |
| [HBASE-12659](https://issues.apache.org/jira/browse/HBASE-12659) | Replace the method calls to grant and revoke in shell scripts with AccessControlClient |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12619](https://issues.apache.org/jira/browse/HBASE-12619) | Backport HBASE-11639 (Replicate the visibility of Cells as strings) to 0.98 |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12529](https://issues.apache.org/jira/browse/HBASE-12529) | Use ThreadLocalRandom for RandomQueueBalancer |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12411](https://issues.apache.org/jira/browse/HBASE-12411) | Optionally enable p-reads and private readers for compactions |  Major | Performance | Lars Hofhansl | Lars Hofhansl |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12692](https://issues.apache.org/jira/browse/HBASE-12692) | NPE from SnapshotManager#stop |  Minor | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12686](https://issues.apache.org/jira/browse/HBASE-12686) | Failures in split before PONR not clearing the daughter regions from regions in transition during rollback |  Blocker | Region Assignment | Rajeshbabu Chintaguntla | Vandana Ayyalasomayajula |
| [HBASE-12666](https://issues.apache.org/jira/browse/HBASE-12666) | TestAssignmentManager hanging; add timeouts |  Major | test | stack | stack |
| [HBASE-12642](https://issues.apache.org/jira/browse/HBASE-12642) | LoadIncrementalHFiles does not throw exception after hitting hbase.bulkload.retries.number setting |  Minor | mapreduce | Erik Ingle | Ted Yu |
| [HBASE-12634](https://issues.apache.org/jira/browse/HBASE-12634) |  Fix the AccessController#requireGlobalPermission(ns) with NS |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12622](https://issues.apache.org/jira/browse/HBASE-12622) | user\_permission should require global admin to display global and ns permissions |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12539](https://issues.apache.org/jira/browse/HBASE-12539) | HFileLinkCleaner logs are uselessly noisy |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12537](https://issues.apache.org/jira/browse/HBASE-12537) | HBase should log the remote host on replication error |  Major | Operability, Replication | stack | stack |
| [HBASE-12533](https://issues.apache.org/jira/browse/HBASE-12533) | staging directories are not deleted after secure bulk load |  Major | regionserver | Andrejs Dubovskis | Jeffrey Zhong |
| [HBASE-12491](https://issues.apache.org/jira/browse/HBASE-12491) | TableMapReduceUtil.findContainingJar() NPE |  Major | mapreduce | Solomon Duskis | Solomon Duskis |
| [HBASE-12479](https://issues.apache.org/jira/browse/HBASE-12479) | Backport HBASE-11689 (Track meta in transition) to 0.98 and branch-1 |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12467](https://issues.apache.org/jira/browse/HBASE-12467) | Master joins cluster but never completes initialization |  Major | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12464](https://issues.apache.org/jira/browse/HBASE-12464) | meta table region assignment stuck in the FAILED\_OPEN state due to region server not fully ready to serve |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12431](https://issues.apache.org/jira/browse/HBASE-12431) | Use of getColumnLatestCell(byte[], int, int, byte[], int, int) is Not Thread Safe |  Major | Client | Jonathan Jarvis | Jingcheng Du |
| [HBASE-12398](https://issues.apache.org/jira/browse/HBASE-12398) | Region isn't assigned in an extreme race condition |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12348](https://issues.apache.org/jira/browse/HBASE-12348) | preModifyColumn and preDeleteColumn in AC denies user to perform its operation though it has required rights |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12346](https://issues.apache.org/jira/browse/HBASE-12346) | Scan's default auths behavior under Visibility labels |  Major | API, security | Jerry He | Jerry He |
| [HBASE-11099](https://issues.apache.org/jira/browse/HBASE-11099) | Two situations where we could open a region with smaller sequence number |  Major | regionserver | Jeffrey Zhong | Stephen Yuan Jiang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12472](https://issues.apache.org/jira/browse/HBASE-12472) | Improve debuggability of IntegrationTestBulkLoad |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12624](https://issues.apache.org/jira/browse/HBASE-12624) | Remove rename\_snapshot.rb from code as there is no equivalent renameSnapshot api in Admin class |  Minor | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12383](https://issues.apache.org/jira/browse/HBASE-12383) | Move 0.98 build to surefire 2.18 |  Minor | build | stack | Andrew Purtell |


