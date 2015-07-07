# Apache HBase Changelog

## Release 0.98.3 - 2014-06-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11220](https://issues.apache.org/jira/browse/HBASE-11220) | Add listeners to ServerManager and AssignmentManager |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11137](https://issues.apache.org/jira/browse/HBASE-11137) | Add mapred.TableSnapshotInputFormat |  Major | mapreduce, Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11134](https://issues.apache.org/jira/browse/HBASE-11134) | Add a -list-snapshots option to SnapshotInfo |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11128](https://issues.apache.org/jira/browse/HBASE-11128) | Add -target option to ExportSnapshot to export with a different name |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11119](https://issues.apache.org/jira/browse/HBASE-11119) | Update ExportSnapShot to optionally not use a tmp file on external file system |  Minor | snapshots | Ted Malaska | Ted Malaska |
| [HBASE-11048](https://issues.apache.org/jira/browse/HBASE-11048) | Support setting custom priority per client RPC |  Major | Client | Jesse Yates | Jesse Yates |
| [HBASE-6990](https://issues.apache.org/jira/browse/HBASE-6990) | Pretty print TTL |  Minor | Usability | Jean-Daniel Cryans | Esteban Gutierrez |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11275](https://issues.apache.org/jira/browse/HBASE-11275) | [AccessController] postCreateTable hook fails when another CP creates table on their startup |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11253](https://issues.apache.org/jira/browse/HBASE-11253) | IntegrationTestWithCellVisibilityLoadAndVerify failing since HBASE-10326 |  Major | test | Anoop Sam John | Anoop Sam John |
| [HBASE-11226](https://issues.apache.org/jira/browse/HBASE-11226) | Document and increase the default value for hbase.hstore.flusher.count |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11200](https://issues.apache.org/jira/browse/HBASE-11200) | AsyncWriter of FSHLog might throw ArrayIndexOutOfBoundsException |  Minor | wal | cuijianwei | cuijianwei |
| [HBASE-11169](https://issues.apache.org/jira/browse/HBASE-11169) | nit: fix incorrect javadoc in OrderedBytes about BlobVar and BlobCopy |  Trivial | util | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11168](https://issues.apache.org/jira/browse/HBASE-11168) | [docs] Remove references to RowLocks in post 0.96 docs. |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11149](https://issues.apache.org/jira/browse/HBASE-11149) | Wire encryption is broken |  Major | IPC/RPC | Devaraj Das | Devaraj Das |
| [HBASE-11143](https://issues.apache.org/jira/browse/HBASE-11143) | Improve replication metrics |  Major | Replication | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11133](https://issues.apache.org/jira/browse/HBASE-11133) | Add an option to skip snapshot verification after Export |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11117](https://issues.apache.org/jira/browse/HBASE-11117) | [AccessController] checkAndPut/Delete hook should check only Read permission |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-10692](https://issues.apache.org/jira/browse/HBASE-10692) | The Multi TableMap job don't support the security HBase cluster |  Minor | mapreduce | Liu Shaohui | Liu Shaohui |
| [HBASE-10251](https://issues.apache.org/jira/browse/HBASE-10251) | Restore API Compat for PerformanceEvaluation.generateValue() |  Major | Client | Aleksandr Shulman | Dima Spivak |
| [HBASE-9445](https://issues.apache.org/jira/browse/HBASE-9445) | Snapshots should create column family dirs for empty regions |  Major | snapshots | Enis Soztutar | Enis Soztutar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11161](https://issues.apache.org/jira/browse/HBASE-11161) | Provide example of POJO encoding with protobuf |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10561](https://issues.apache.org/jira/browse/HBASE-10561) | Forward port: HBASE-10212 New rpc metric: number of active handler |  Major | IPC/RPC | Lars Hofhansl | Liang Xie |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11209](https://issues.apache.org/jira/browse/HBASE-11209) | Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11227](https://issues.apache.org/jira/browse/HBASE-11227) | Mention 8- and 16-bit fixed-with encodings in OrderedBytes docstring |  Trivial | documentation | Nick Dimiduk | Nick Dimiduk |


