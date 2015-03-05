# Hadoop Changelog

## Release 3.0.0 - 2015-03-04

### INCOMPATIBLE CHANGES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| MAPREDUCE-6234 | TestHighRamJob fails due to the change in MAPREDUCE-5785 | Masatake Iwasaki |
| MAPREDUCE-6223 | TestJobConf#testNegativeValueForTaskVmem failures | Varun Saxena |
| MAPREDUCE-5972 | Fix typo 'programatically' in job.xml (and a few other places) | Akira AJISAKA |
| MAPREDUCE-5785 | Derive heap size or mapreduce.*.memory.mb automatically | Gera Shegalov |
| MAPREDUCE-5653 | DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb | Ratandeep Ratti |
### NEW FEATURES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| MAPREDUCE-4887 | Rehashing partitioner for better distribution | Radim Kolar |
### IMPROVEMENTS:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| MAPREDUCE-6260 | Convert site documentation to markdown | Masatake Iwasaki |
| MAPREDUCE-6250 | deprecate sbin/mr-jobhistory-daemon.sh | Allen Wittenauer |
| MAPREDUCE-6013 | mapred version is missing | Akira AJISAKA |
| MAPREDUCE-5232 | log classpath and other key properties on child JVM start | Sangjin Lee |
| MAPREDUCE-5197 | Checkpoint Service: a library component to facilitate checkpoint of task state | Carlo Curino |
| MAPREDUCE-5196 | CheckpointAMPreemptionPolicy implements preemption in MR AM via checkpointing  | Carlo Curino |
| MAPREDUCE-4735 | Make arguments in TestDFSIO case insensitive | Brandon Li |
| MAPREDUCE-4686 | hadoop-mapreduce-client-core fails compilation in Eclipse due to missing Avro-generated classes | Chris Nauroth |
| MAPREDUCE-4371 | Check for cyclic dependencies in Jobcontrol job DAG | madhukara phatak |
| MAPREDUCE-3956 | Remove the use of the deprecated Syncable.sync() method | Tsz Wo Nicholas Sze |
| MAPREDUCE-3302 | Remove the last dependency call from org.apache.hadoop.record package in MR. | Harsh J |
| MAPREDUCE-2944 | Improve checking of input for Api displayTasks()  | XieXianshan |
| MAPREDUCE-2841 | Task level native optimization | Sean Zhong |
| MAPREDUCE-2384 | The job submitter should make sure to validate jobs before creation of necessary files | Harsh J |
### BUG FIXES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| MAPREDUCE-6161 | mapred hsadmin command missing from trunk | Allen Wittenauer |
| MAPREDUCE-5912 | Task.calculateOutputSize does not handle Windows files after MAPREDUCE-5196 | Remus Rusanu |
| MAPREDUCE-5717 | Task pings are interpreted as task progress | Jason Lowe |
| MAPREDUCE-5012 | Typo in javadoc for IdentityMapper class | Adam Monsen |
| MAPREDUCE-4695 | Fix LocalRunner on trunk after MAPREDUCE-3223 broke it | Harsh J |
| MAPREDUCE-4685 | DBCount should not use ACCESS  | Viji |
| MAPREDUCE-4574 | Fix TotalOrderParitioner to work with non-WritableComparable key types | Harsh J |
| MAPREDUCE-4413 | MR lib dir contains jdiff (which is gpl) | Nemon Lou |
| MAPREDUCE-3990 | MRBench allows Long-sized input-lines value but parses CLI argument as an Integer | Harsh J |
| MAPREDUCE-3223 | Remove MR1 configs from mapred-default.xml | Todd Lipcon |
| MAPREDUCE-3149 | add a test to verify that buildDTAuthority works for cases with no authority. | John George |
| MAPREDUCE-2978 | hudson findbugs not reporting properly | Tom White |
### OTHER:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| MAPREDUCE-2669 | Some new examples and test cases for them. | Plamen Jeliazkov |


