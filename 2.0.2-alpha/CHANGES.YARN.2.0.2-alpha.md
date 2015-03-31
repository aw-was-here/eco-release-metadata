# Hadoop Changelog

## Release 2.0.2-alpha - 2012-10-09

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-420](https://issues.apache.org/jira/browse/YARN-420) | Enable the RM to work with AM's that are not managed by it |  Major | . | Bikas Saha | Bikas Saha |
| [YARN-137](https://issues.apache.org/jira/browse/YARN-137) | Change the default scheduler to the CapacityScheduler |  Major | scheduler | Siddharth Seth | Siddharth Seth |
| [YARN-80](https://issues.apache.org/jira/browse/YARN-80) | Support delay scheduling for node locality in MR2's capacity scheduler |  Major | capacityscheduler | Todd Lipcon | Arun C Murthy |
| [YARN-10](https://issues.apache.org/jira/browse/YARN-10) | dist-shell shouldn't have a (test) dependency on hadoop-mapreduce-client-core |  Major | . | Arun C Murthy | Hitesh Shah |
| [YARN-9](https://issues.apache.org/jira/browse/YARN-9) | Rename YARN\_HOME to HADOOP\_YARN\_HOME |  Major | . | Arun C Murthy | Vinod Kumar Vavilapalli |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-174](https://issues.apache.org/jira/browse/YARN-174) | TestNodeStatusUpdater is failing in trunk |  Major | nodemanager | Robert Joseph Evans | Vinod Kumar Vavilapalli |
| [YARN-138](https://issues.apache.org/jira/browse/YARN-138) | Improve default config values for YARN |  Major | resourcemanager, scheduler | Arun C Murthy | Harsh J |
| [YARN-108](https://issues.apache.org/jira/browse/YARN-108) | FSDownload can create cache directories with the wrong permissions |  Critical | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-106](https://issues.apache.org/jira/browse/YARN-106) | Nodemanager needs to set permissions of local directories |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-88](https://issues.apache.org/jira/browse/YARN-88) | DefaultContainerExecutor can fail to set proper permissions |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-87](https://issues.apache.org/jira/browse/YARN-87) | NM ResourceLocalizationService does not set permissions of local cache directories |  Critical | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-83](https://issues.apache.org/jira/browse/YARN-83) | Change package of YarnClient to include apache |  Major | client | Bikas Saha | Bikas Saha |
| [YARN-79](https://issues.apache.org/jira/browse/YARN-79) | Calling YarnClientImpl.close throws Exception |  Major | client | Bikas Saha | Vinod Kumar Vavilapalli |
| [YARN-75](https://issues.apache.org/jira/browse/YARN-75) | RMContainer should handle a RELEASE event while RUNNING |  Major | . | Siddharth Seth | Siddharth Seth |
| [YARN-68](https://issues.apache.org/jira/browse/YARN-68) | NodeManager will refuse to shutdown indefinitely due to container log aggregation |  Major | nodemanager | patrick white | Daryn Sharp |
| [YARN-66](https://issues.apache.org/jira/browse/YARN-66) | aggregated logs permissions not set properly |  Critical | nodemanager | Thomas Graves | Thomas Graves |
| [YARN-63](https://issues.apache.org/jira/browse/YARN-63) | RMNodeImpl is missing valid transitions from the UNHEALTHY state |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-58](https://issues.apache.org/jira/browse/YARN-58) | NM leaks filesystems |  Critical | nodemanager | Daryn Sharp | Jason Lowe |
| [YARN-42](https://issues.apache.org/jira/browse/YARN-42) | Node Manager throws NPE on startup |  Major | nodemanager | Devaraj K | Devaraj K |
| [YARN-37](https://issues.apache.org/jira/browse/YARN-37) | TestRMAppTransitions.testAppSubmittedKilled passes for the wrong reason |  Minor | resourcemanager | Jason Lowe | Mayank Bansal |
| [YARN-36](https://issues.apache.org/jira/browse/YARN-36) | branch-2.1.0-alpha doesn't build |  Blocker | . | Eli Collins | Radim Kolar |
| [YARN-31](https://issues.apache.org/jira/browse/YARN-31) | TestDelegationTokenRenewer fails on jdk7 |  Major | . | Thomas Graves | Thomas Graves |
| [YARN-27](https://issues.apache.org/jira/browse/YARN-27) | Failed refreshQueues due to misconfiguration prevents further refreshing of queues |  Major | . | Ramya Sunil | Arun C Murthy |
| [YARN-25](https://issues.apache.org/jira/browse/YARN-25) | remove old aggregated logs |  Major | . | Thomas Graves | Robert Joseph Evans |
| [YARN-22](https://issues.apache.org/jira/browse/YARN-22) | Using URI for yarn.nodemanager log dirs fails |  Minor | . | Eli Collins | Mayank Bansal |
| [YARN-15](https://issues.apache.org/jira/browse/YARN-15) | YarnConfiguration DEFAULT\_YARN\_APPLICATION\_CLASSPATH should be updated |  Critical | nodemanager | Alejandro Abdelnur | Arun C Murthy |
| [YARN-14](https://issues.apache.org/jira/browse/YARN-14) | Symlinks to peer distributed cache files no longer work |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-13](https://issues.apache.org/jira/browse/YARN-13) | Merge of yarn reorg into branch-2 copied trunk tree |  Critical | . | Todd Lipcon |  |
| [YARN-12](https://issues.apache.org/jira/browse/YARN-12) | Several Findbugs issues with new FairScheduler in YARN |  Major | scheduler | Junping Du | Junping Du |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-60](https://issues.apache.org/jira/browse/YARN-60) | NMs rejects all container tokens after secret key rolls |  Blocker | nodemanager | Daryn Sharp | Vinod Kumar Vavilapalli |
| [YARN-39](https://issues.apache.org/jira/browse/YARN-39) | RM-NM secret-keys should be randomly generated and rolled every so often |  Critical | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-29](https://issues.apache.org/jira/browse/YARN-29) | Add a yarn-client module |  Major | client | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-154](https://issues.apache.org/jira/browse/YARN-154) | Create Yarn trunk and commit jobs |  Major | . | Eli Collins | Robert Joseph Evans |
| [YARN-1](https://issues.apache.org/jira/browse/YARN-1) | Move YARN out of hadoop-mapreduce |  Major | . | Arun C Murthy | Arun C Murthy |


