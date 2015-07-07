# Apache HBase Changelog

## Release 0.98.2 - 2014-05-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11077](https://issues.apache.org/jira/browse/HBASE-11077) | [AccessController] Restore compatible early-out access denial |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11054](https://issues.apache.org/jira/browse/HBASE-11054) | Create new hook in StoreScanner to help user creating his own delete tracker |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10964](https://issues.apache.org/jira/browse/HBASE-10964) | Delete mutation is not consistent with Put wrt timestamp |  Major | Client | Anoop Sam John | Anoop Sam John |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11008](https://issues.apache.org/jira/browse/HBASE-11008) | Align bulk load, flush, and compact to require Action.CREATE |  Major | security | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10952](https://issues.apache.org/jira/browse/HBASE-10952) | [REST] Let the user turn off block caching if desired |  Minor | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-10950](https://issues.apache.org/jira/browse/HBASE-10950) | Add  a configuration point for MaxVersion of Column Family |  Major | Admin, Usability | Demai Ni | Enoch Hsu |
| [HBASE-10892](https://issues.apache.org/jira/browse/HBASE-10892) | [Shell] Add support for globs in user\_permission |  Major | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10884](https://issues.apache.org/jira/browse/HBASE-10884) | [REST] Do not disable block caching when scanning |  Major | REST | Andrew Purtell | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11049](https://issues.apache.org/jira/browse/HBASE-11049) | HBase WALPlayer needs to add credentials to job to play to table |  Minor | mapreduce | Jerry He | Jerry He |
| [HBASE-11038](https://issues.apache.org/jira/browse/HBASE-11038) | Filtered scans can bypass metrics collection |  Minor | Scanners | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11011](https://issues.apache.org/jira/browse/HBASE-11011) | Avoid extra getFileStatus() calls on Region startup |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10964](https://issues.apache.org/jira/browse/HBASE-10964) | Delete mutation is not consistent with Put wrt timestamp |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-10903](https://issues.apache.org/jira/browse/HBASE-10903) | HBASE-10740 regression; cannot pass commands for zk to run |  Major | Zookeeper | stack | stack |
| [HBASE-10895](https://issues.apache.org/jira/browse/HBASE-10895) | unassign a region fails due to the hosting region server is in FailedServerList |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-10890](https://issues.apache.org/jira/browse/HBASE-10890) | ExportSnapshot needs to add acquired token to job |  Major | snapshots | Jerry He | Jerry He |
| [HBASE-10860](https://issues.apache.org/jira/browse/HBASE-10860) | Insufficient AccessController covering permission check |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-10854](https://issues.apache.org/jira/browse/HBASE-10854) | [VisibilityController] Apply MAX\_VERSIONS from schema or request when scanning |  Major | security | Matteo Bertozzi | Anoop Sam John |
| [HBASE-10850](https://issues.apache.org/jira/browse/HBASE-10850) | essential column family optimization is broken |  Blocker | Coprocessors, Filters, Performance | Fabien Le Gallo | Ted Yu |
| [HBASE-10848](https://issues.apache.org/jira/browse/HBASE-10848) | Filter SingleColumnValueFilter combined with NullComparator does not work |  Major | Filters | Fabien Le Gallo | Fabien Le Gallo |
| [HBASE-10533](https://issues.apache.org/jira/browse/HBASE-10533) | commands.rb is giving wrong error messages on exceptions |  Major | shell | rajeshbabu | rajeshbabu |
| [HBASE-10118](https://issues.apache.org/jira/browse/HBASE-10118) | Major compact keeps deletes with future timestamps |  Minor | Compaction, Deletes, regionserver | Max Lapan | Liu Shaohui |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11010](https://issues.apache.org/jira/browse/HBASE-11010) | TestChangingEncoding is unnecessarily slow |  Minor | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10988](https://issues.apache.org/jira/browse/HBASE-10988) | Properly wait for server in TestThriftServerCmdLine |  Minor | test | Lars Hofhansl | Lars Hofhansl |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10972](https://issues.apache.org/jira/browse/HBASE-10972) | OOBE in prefix key encoding |  Major | Scanners | Andrew Purtell | ramkrishna.s.vasudevan |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


