# Apache HBase Changelog

## Release 0.98.12 - 2015-04-17

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10728](https://issues.apache.org/jira/browse/HBASE-10728) | get\_counter value is never used. |  Major | . | Jean-Marc Spaggiari | Lars George |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13381](https://issues.apache.org/jira/browse/HBASE-13381) | Expand TestSizeFailures to include small scans |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13241](https://issues.apache.org/jira/browse/HBASE-13241) | Add tests for group level grants |  Critical | security, test | Sean Busbey | Ashish Singhi |
| [HBASE-13236](https://issues.apache.org/jira/browse/HBASE-13236) | Clean up m2e-related warnings/errors from poms |  Minor | build | Josh Elser | Josh Elser |
| [HBASE-13223](https://issues.apache.org/jira/browse/HBASE-13223) | Add testMoveMeta to IntegrationTestMTTR |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13183](https://issues.apache.org/jira/browse/HBASE-13183) | Make ZK tickTime configurable in standalone HBase |  Minor | master | Alex Araujo | Alex Araujo |
| [HBASE-13168](https://issues.apache.org/jira/browse/HBASE-13168) | Backport HBASE-12590 "A solution for data skew in HBase-Mapreduce Job" |  Major | mapreduce | Nick Dimiduk | Ted Yu |
| [HBASE-13100](https://issues.apache.org/jira/browse/HBASE-13100) | Shell command to retrieve table splits |  Minor | shell | Sean Busbey | Ashish Singhi |
| [HBASE-12891](https://issues.apache.org/jira/browse/HBASE-12891) | Parallel execution for Hbck checkRegionConsistency |  Major | hbck | churro morales | Dave Latham |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13433](https://issues.apache.org/jira/browse/HBASE-13433) | Backward compatibility in 1.0.z for shell broken for get\_counter |  Blocker | shell | Sean Busbey | Sean Busbey |
| [HBASE-13422](https://issues.apache.org/jira/browse/HBASE-13422) | remove use of StandardCharsets in 0.98 |  Blocker | test | Sean Busbey | Sean Busbey |
| [HBASE-13397](https://issues.apache.org/jira/browse/HBASE-13397) | Purge duplicate rpc request thread local |  Major | rpc | stack | stack |
| [HBASE-13331](https://issues.apache.org/jira/browse/HBASE-13331) | Exceptions from DFS client can cause CatalogJanitor to delete referenced files |  Blocker | master | Elliott Clark | Elliott Clark |
| [HBASE-13317](https://issues.apache.org/jira/browse/HBASE-13317) | Region server reportForDuty stuck looping if there is a master change |  Major | regionserver | Jerry He | Jerry He |
| [HBASE-13309](https://issues.apache.org/jira/browse/HBASE-13309) | Some tests do not reset EnvironmentEdgeManager |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13305](https://issues.apache.org/jira/browse/HBASE-13305) | Get(Get get) is not copying the row key |  Major | API | Lars George | Ashish Singhi |
| [HBASE-13289](https://issues.apache.org/jira/browse/HBASE-13289) | typo in splitSuccessCount  metric |  Major | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13285](https://issues.apache.org/jira/browse/HBASE-13285) | Fix flaky getRegions() in TestAccessController.setUp() |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13262](https://issues.apache.org/jira/browse/HBASE-13262) | ResultScanner doesn't return all rows in Scan |  Blocker | Client | Josh Elser | Josh Elser |
| [HBASE-13253](https://issues.apache.org/jira/browse/HBASE-13253) | LoadIncrementalHFiles unify hfiles discovery |  Major | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13239](https://issues.apache.org/jira/browse/HBASE-13239) | HBase grant at specific column level does not work for Groups |  Major | hbase | Jaymin Patel | Ted Yu |
| [HBASE-13229](https://issues.apache.org/jira/browse/HBASE-13229) | Specify bash for local-regionservers.sh and local-master-backup.sh |  Minor | scripts | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-13227](https://issues.apache.org/jira/browse/HBASE-13227) | LoadIncrementalHFile should skip non-files inside a possible family-dir |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13224](https://issues.apache.org/jira/browse/HBASE-13224) | Minor formatting issue when logging a namespace scope in AuthResult#toContextString |  Trivial | Coprocessors, security | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13172](https://issues.apache.org/jira/browse/HBASE-13172) | TestDistributedLogSplitting.testThreeRSAbort fails several times on branch-1 |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13139](https://issues.apache.org/jira/browse/HBASE-13139) | Clean up missing JAVA\_HOME message in bin/hbase-config.sh |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12969](https://issues.apache.org/jira/browse/HBASE-12969) | Parameter Validation is not there for shell script, local-master-backup.sh and local-regionservers.sh |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13386](https://issues.apache.org/jira/browse/HBASE-13386) | Backport HBASE-12601 to all active branches other than master |  Minor | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13335](https://issues.apache.org/jira/browse/HBASE-13335) | Update ClientSmallScanner and ClientSmallReversedScanner |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-13303](https://issues.apache.org/jira/browse/HBASE-13303) | Fix size calculation of results on the region server |  Major | Client | Lars Hofhansl | Andrew Purtell |
| [HBASE-13207](https://issues.apache.org/jira/browse/HBASE-13207) | Backport to 0.98 "[PERF] Reuse the IPC buffers..." |  Major | Performance | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


