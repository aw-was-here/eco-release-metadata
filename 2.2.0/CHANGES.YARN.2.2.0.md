# Hadoop Changelog

## Release 2.2.0 - 2013-10-15

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1229](https://issues.apache.org/jira/browse/YARN-1229) | Define constraints on Auxiliary Service names. Change ShuffleHandler service name from mapreduce.shuffle to mapreduce\_shuffle. |  Blocker | nodemanager | Tassapol Athiapinya | Xuan Gong |
| [YARN-1228](https://issues.apache.org/jira/browse/YARN-1228) | Clean up Fair Scheduler configuration loading |  Major | scheduler | Sandy Ryza | Sandy Ryza |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1246](https://issues.apache.org/jira/browse/YARN-1246) | Log application status in the rm log when app is done running |  Minor | . | Arpit Gupta | Arpit Gupta |
| [YARN-1213](https://issues.apache.org/jira/browse/YARN-1213) | Restore config to ban submitting to undeclared pools in the Fair Scheduler |  Major | scheduler | Sandy Ryza | Sandy Ryza |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1278](https://issues.apache.org/jira/browse/YARN-1278) | New AM does not start after rm restart |  Blocker | . | Yesha Vora | Hitesh Shah |
| [YARN-1274](https://issues.apache.org/jira/browse/YARN-1274) | LCE fails to run containers that don't have resources to localize |  Blocker | nodemanager | Alejandro Abdelnur | Siddharth Seth |
| [YARN-1273](https://issues.apache.org/jira/browse/YARN-1273) | Distributed shell does not account for start container failures reported asynchronously. |  Major | . | Hitesh Shah | Hitesh Shah |
| [YARN-1271](https://issues.apache.org/jira/browse/YARN-1271) | "Text file busy" errors launching containers again |  Major | nodemanager | Sandy Ryza | Sandy Ryza |
| [YARN-1262](https://issues.apache.org/jira/browse/YARN-1262) | TestApplicationCleanup relies on all containers assigned in a single heartbeat |  Major | . | Sandy Ryza | Karthik Kambatla |
| [YARN-1251](https://issues.apache.org/jira/browse/YARN-1251) | TestDistributedShell#TestDSShell failed with timeout |  Major | applications/distributed-shell | Junping Du | Xuan Gong |
| [YARN-1247](https://issues.apache.org/jira/browse/YARN-1247) | test-container-executor has gotten out of sync with the changes to container-executor |  Major | nodemanager | Roman Shaposhnik | Roman Shaposhnik |
| [YARN-1236](https://issues.apache.org/jira/browse/YARN-1236) | FairScheduler setting queue name in RMApp is not working |  Major | resourcemanager | Sandy Ryza | Sandy Ryza |
| [YARN-1221](https://issues.apache.org/jira/browse/YARN-1221) | With Fair Scheduler, reserved MB reported in RM web UI increases indefinitely |  Major | resourcemanager, scheduler | Sandy Ryza | Siqi Li |
| [YARN-1219](https://issues.apache.org/jira/browse/YARN-1219) | FSDownload changes file suffix making FileUtil.unTar() throw exception |  Major | nodemanager | shanyu zhao | shanyu zhao |
| [YARN-1215](https://issues.apache.org/jira/browse/YARN-1215) | Yarn URL should include userinfo |  Major | api | Chuan Liu | Chuan Liu |
| [YARN-1167](https://issues.apache.org/jira/browse/YARN-1167) | Submitted distributed shell application shows appMasterHost = empty |  Major | applications/distributed-shell | Tassapol Athiapinya | Xuan Gong |
| [YARN-1157](https://issues.apache.org/jira/browse/YARN-1157) | ResourceManager UI has invalid tracking URL link for distributed shell application |  Major | resourcemanager | Tassapol Athiapinya | Xuan Gong |
| [YARN-1149](https://issues.apache.org/jira/browse/YARN-1149) | NM throws InvalidStateTransitonException: Invalid event: APPLICATION\_LOG\_HANDLING\_FINISHED at RUNNING |  Major | . | Ramya Sunil | Xuan Gong |
| [YARN-1141](https://issues.apache.org/jira/browse/YARN-1141) | Updating resource requests should be decoupled with updating blacklist |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1128](https://issues.apache.org/jira/browse/YARN-1128) | FifoPolicy.computeShares throws NPE on empty list of Schedulables |  Major | scheduler | Sandy Ryza | Karthik Kambatla |
| [YARN-1090](https://issues.apache.org/jira/browse/YARN-1090) | Job does not get into Pending State |  Major | . | Yesha Vora | Jian He |
| [YARN-1032](https://issues.apache.org/jira/browse/YARN-1032) | NPE in RackResolve |  Critical | . | Lohit Vijayarenu | Lohit Vijayarenu |
| [YARN-890](https://issues.apache.org/jira/browse/YARN-890) | The roundup for memory values on resource manager UI is misleading |  Major | resourcemanager | Trupti Dhavle | Xuan Gong |
| [YARN-876](https://issues.apache.org/jira/browse/YARN-876) | Node resource is added twice when node comes back from unhealthy to healthy |  Major | resourcemanager | Peng Zhang | Peng Zhang |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1277](https://issues.apache.org/jira/browse/YARN-1277) | Add http policy support for YARN daemons |  Major | . | Suresh Srinivas | Omkar Vinit Joshi |
| [YARN-1260](https://issues.apache.org/jira/browse/YARN-1260) | RM\_HOME link breaks when webapp.https.address related properties are not specified |  Major | . | Yesha Vora | Omkar Vinit Joshi |
| [YARN-1256](https://issues.apache.org/jira/browse/YARN-1256) | NM silently ignores non-existent service in StartContainerRequest |  Critical | . | Bikas Saha | Xuan Gong |
| [YARN-1254](https://issues.apache.org/jira/browse/YARN-1254) | NM is polluting container's credentials |  Major | . | Vinod Kumar Vavilapalli | Omkar Vinit Joshi |
| [YARN-1214](https://issues.apache.org/jira/browse/YARN-1214) | Register ClientToken MasterKey in SecretManager after it is saved |  Critical | resourcemanager | Jian He | Jian He |
| [YARN-1204](https://issues.apache.org/jira/browse/YARN-1204) | Need to add https port related property in Yarn |  Major | . | Yesha Vora | Omkar Vinit Joshi |
| [YARN-1203](https://issues.apache.org/jira/browse/YARN-1203) | Application Manager UI does not appear with Https enabled |  Major | . | Yesha Vora | Omkar Vinit Joshi |
| [YARN-1131](https://issues.apache.org/jira/browse/YARN-1131) | $yarn logs command should return an appropriate error message if YARN application is still running |  Minor | client | Tassapol Athiapinya | Siddharth Seth |
| [YARN-1070](https://issues.apache.org/jira/browse/YARN-1070) | ContainerImpl State Machine: Invalid event: CONTAINER\_KILLED\_ON\_REQUEST at CONTAINER\_CLEANEDUP\_AFTER\_KILL |  Major | nodemanager | Hitesh Shah | Zhijie Shen |
| [YARN-899](https://issues.apache.org/jira/browse/YARN-899) | Get queue administration ACLs working |  Major | scheduler | Sandy Ryza | Xuan Gong |
| [YARN-621](https://issues.apache.org/jira/browse/YARN-621) | RM triggers web auth failure before first job |  Critical | resourcemanager | Allen Wittenauer | Omkar Vinit Joshi |
| [YARN-49](https://issues.apache.org/jira/browse/YARN-49) | Improve distributed shell application to work on a secure cluster |  Major | applications/distributed-shell | Hitesh Shah | Vinod Kumar Vavilapalli |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


