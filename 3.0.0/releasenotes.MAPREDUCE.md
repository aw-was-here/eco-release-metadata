# Hadoop MAPREDUCE 3.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [MAPREDUCE-6260](https://issues.apache.org/jira/browse/MAPREDUCE-6260) | *Major* | **Convert site documentation to markdown**
---

* [MAPREDUCE-6250](https://issues.apache.org/jira/browse/MAPREDUCE-6250) | *Major* | **deprecate sbin/mr-jobhistory-daemon.sh**
---

* [MAPREDUCE-6234](https://issues.apache.org/jira/browse/MAPREDUCE-6234) | *Major* | **TestHighRamJob fails due to the change in MAPREDUCE-5785**
---

* [MAPREDUCE-6223](https://issues.apache.org/jira/browse/MAPREDUCE-6223) | *Major* | **TestJobConf#testNegativeValueForTaskVmem failures**
---

* [MAPREDUCE-6161](https://issues.apache.org/jira/browse/MAPREDUCE-6161) | *Major* | **mapred hsadmin command missing from trunk**
---

* [MAPREDUCE-6078](https://issues.apache.org/jira/browse/MAPREDUCE-6078) | *Trivial* | **native-task: fix gtest build on macosx**
---

* [MAPREDUCE-6013](https://issues.apache.org/jira/browse/MAPREDUCE-6013) | *Major* | **mapred version is missing**
---

* [MAPREDUCE-5972](https://issues.apache.org/jira/browse/MAPREDUCE-5972) | *Trivial* | **Fix typo 'programatically' in job.xml (and a few other places)**

Fix a typo. If a configuration is set through program, the source of the configuration is set to 'programmatically' instead of 'programatically' now.

---

* [MAPREDUCE-5912](https://issues.apache.org/jira/browse/MAPREDUCE-5912) | *Major* | **Task.calculateOutputSize does not handle Windows files after MAPREDUCE-5196**
---

* [MAPREDUCE-5867](https://issues.apache.org/jira/browse/MAPREDUCE-5867) | *Major* | **Possible NPE in KillAMPreemptionPolicy related to ProportionalCapacityPreemptionPolicy**
---

* [MAPREDUCE-5785](https://issues.apache.org/jira/browse/MAPREDUCE-5785) | *Major* | **Derive heap size or mapreduce.*.memory.mb automatically**
---

* [MAPREDUCE-5717](https://issues.apache.org/jira/browse/MAPREDUCE-5717) | *Major* | **Task pings are interpreted as task progress**
---

* [MAPREDUCE-5653](https://issues.apache.org/jira/browse/MAPREDUCE-5653) | *Major* | **DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb**

Prior to this change, distcp had hard-coded values for memory usage.  Now distcp will honor memory settings in a way compatible with the rest of MapReduce.

---

* [MAPREDUCE-5232](https://issues.apache.org/jira/browse/MAPREDUCE-5232) | *Major* | **log classpath and other key properties on child JVM start**
---

* [MAPREDUCE-5197](https://issues.apache.org/jira/browse/MAPREDUCE-5197) | *Major* | **Checkpoint Service: a library component to facilitate checkpoint of task state**
---

* [MAPREDUCE-5196](https://issues.apache.org/jira/browse/MAPREDUCE-5196) | *Major* | **CheckpointAMPreemptionPolicy implements preemption in MR AM via checkpointing**
---

* [MAPREDUCE-5189](https://issues.apache.org/jira/browse/MAPREDUCE-5189) | *Major* | **Basic AM changes to support preemption requests (per YARN-45)**
---

* [MAPREDUCE-5012](https://issues.apache.org/jira/browse/MAPREDUCE-5012) | *Trivial* | **Typo in javadoc for IdentityMapper class**
---

* [MAPREDUCE-4887](https://issues.apache.org/jira/browse/MAPREDUCE-4887) | *Major* | **Rehashing partitioner for better distribution**
---

* [MAPREDUCE-4735](https://issues.apache.org/jira/browse/MAPREDUCE-4735) | *Trivial* | **Make arguments in TestDFSIO case insensitive**
---

* [MAPREDUCE-4695](https://issues.apache.org/jira/browse/MAPREDUCE-4695) | *Blocker* | **Fix LocalRunner on trunk after MAPREDUCE-3223 broke it**
---

* [MAPREDUCE-4686](https://issues.apache.org/jira/browse/MAPREDUCE-4686) | *Major* | **hadoop-mapreduce-client-core fails compilation in Eclipse due to missing Avro-generated classes**
---

* [MAPREDUCE-4685](https://issues.apache.org/jira/browse/MAPREDUCE-4685) | *Major* | **DBCount should not use ACCESS**
---

* [MAPREDUCE-4574](https://issues.apache.org/jira/browse/MAPREDUCE-4574) | *Trivial* | **Fix TotalOrderParitioner to work with non-WritableComparable key types**
---

* [MAPREDUCE-4424](https://issues.apache.org/jira/browse/MAPREDUCE-4424) | *Minor* | **'mapred job -list' command should show the job name as well**

Now "mapred job -list" command displays the Job Name as well.

---

* [MAPREDUCE-4413](https://issues.apache.org/jira/browse/MAPREDUCE-4413) | *Critical* | **MR lib dir contains jdiff (which is gpl)**
---

* [MAPREDUCE-4371](https://issues.apache.org/jira/browse/MAPREDUCE-4371) | *Major* | **Check for cyclic dependencies in Jobcontrol job DAG**
---

* [MAPREDUCE-3990](https://issues.apache.org/jira/browse/MAPREDUCE-3990) | *Trivial* | **MRBench allows Long-sized input-lines value but parses CLI argument as an Integer**
---

* [MAPREDUCE-3956](https://issues.apache.org/jira/browse/MAPREDUCE-3956) | *Minor* | **Remove the use of the deprecated Syncable.sync() method**
---

* [MAPREDUCE-3302](https://issues.apache.org/jira/browse/MAPREDUCE-3302) | *Minor* | **Remove the last dependency call from org.apache.hadoop.record package in MR.**
---

* [MAPREDUCE-3223](https://issues.apache.org/jira/browse/MAPREDUCE-3223) | *Major* | **Remove MR1 configs from mapred-default.xml**
---

* [MAPREDUCE-3149](https://issues.apache.org/jira/browse/MAPREDUCE-3149) | *Major* | **add a test to verify that buildDTAuthority works for cases with no authority.**
---

* [MAPREDUCE-2978](https://issues.apache.org/jira/browse/MAPREDUCE-2978) | *Major* | **hudson findbugs not reporting properly**
---

* [MAPREDUCE-2944](https://issues.apache.org/jira/browse/MAPREDUCE-2944) | *Trivial* | **Improve checking of input for Api displayTasks()**
---

* [MAPREDUCE-2841](https://issues.apache.org/jira/browse/MAPREDUCE-2841) | *Major* | **Task level native optimization**

Adds a native implementation of the map output collector. The native library will build automatically with -Pnative. Users may choose the new collector on a job-by-job basis by setting mapreduce.job.map.output.collector.class=org.apache.hadoop.mapred.
nativetask.NativeMapOutputCollectorDelegator in their job configuration. For shuffle-intensive jobs this may provide speed-ups of 30% or more.

---

* [MAPREDUCE-2669](https://issues.apache.org/jira/browse/MAPREDUCE-2669) | *Minor* | **Some new examples and test cases for them.**
---

* [MAPREDUCE-2384](https://issues.apache.org/jira/browse/MAPREDUCE-2384) | *Major* | **The job submitter should make sure to validate jobs before creation of necessary files**


