# Hadoop Changelog

## Release 2.2.0 - 2013-10-15

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5308](https://issues.apache.org/jira/browse/HDFS-5308) | Replace HttpConfig#getSchemePrefix with implicit schemes in HDFS JSP |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5256](https://issues.apache.org/jira/browse/HDFS-5256) | Use guava LoadingCache to implement DFSClientCache |  Major | nfs | Haohui Mai | Haohui Mai |
| [HDFS-5139](https://issues.apache.org/jira/browse/HDFS-5139) | Remove redundant -R option from setrep |  Major | tools | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4817](https://issues.apache.org/jira/browse/HDFS-4817) | make HDFS advisory caching configurable on a per-file basis |  Minor | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5300](https://issues.apache.org/jira/browse/HDFS-5300) | FSNameSystem#deleteSnapshot() should not check owner in case of permissions disabled |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-5299](https://issues.apache.org/jira/browse/HDFS-5299) | DFS client hangs in updatePipeline RPC when failover happened |  Blocker | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-5289](https://issues.apache.org/jira/browse/HDFS-5289) | Race condition in TestRetryCacheWithHA#testCreateSymlink causes spurious test failure |  Major | test | Aaron T. Myers | Aaron T. Myers |
| [HDFS-5279](https://issues.apache.org/jira/browse/HDFS-5279) | Guard against NullPointerException in NameNode JSP pages before initialization of FSNamesystem. |  Major | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-5268](https://issues.apache.org/jira/browse/HDFS-5268) | NFS write commit verifier is not set in a few places |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5265](https://issues.apache.org/jira/browse/HDFS-5265) | Namenode fails to start when dfs.https.port is unspecified |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5258](https://issues.apache.org/jira/browse/HDFS-5258) | Skip tests in TestHDFSCLI that are not applicable on Windows. |  Minor | test | Chris Nauroth | Chuan Liu |
| [HDFS-5255](https://issues.apache.org/jira/browse/HDFS-5255) | Distcp job fails with hsftp when https is enabled in insecure cluster |  Major | . | Yesha Vora | Arpit Agarwal |
| [HDFS-5251](https://issues.apache.org/jira/browse/HDFS-5251) | Race between the initialization of NameNode and the http server |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5228](https://issues.apache.org/jira/browse/HDFS-5228) | The RemoteIterator returned by DistributedFileSystem.listFiles(..) may throw NPE |  Blocker | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-5031](https://issues.apache.org/jira/browse/HDFS-5031) | BlockScanner scans the block multiple times and on restart scans everything |  Blocker | datanode | Vinayakumar B | Vinayakumar B |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5186](https://issues.apache.org/jira/browse/HDFS-5186) | TestFileJournalManager fails on Windows due to file handle leaks |  Minor | namenode, test | Chuan Liu | Chuan Liu |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5306](https://issues.apache.org/jira/browse/HDFS-5306) | Datanode https port is not available at the namenode |  Major | datanode, namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-5259](https://issues.apache.org/jira/browse/HDFS-5259) | Support client which combines appended data with old data before sends it to NFS server |  Major | nfs | Yesha Vora | Brandon Li |
| [HDFS-5246](https://issues.apache.org/jira/browse/HDFS-5246) | Make Hadoop nfs server port and mount daemon port configurable |  Major | nfs | Jinghui Wang | Jinghui Wang |
| [HDFS-5230](https://issues.apache.org/jira/browse/HDFS-5230) | Introduce RpcInfo to decouple XDR classes from the RPC API |  Major | nfs | Haohui Mai | Haohui Mai |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


