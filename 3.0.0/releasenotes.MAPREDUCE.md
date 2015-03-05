# Hadoop MAPREDUCE 3.0.0 Release Notes

These release notes include new developer and user-facing incompatibilities, features, and major improvements.

## Changes since Hadoop 2.7.0

* [MAPREDUCE-6260](https://issues.apache.org/jira/browse/MAPREDUCE-6260) | Major |  (documentation) | Convert site documentation to markdown
* [MAPREDUCE-6250](https://issues.apache.org/jira/browse/MAPREDUCE-6250) | Major |  (scripts) | deprecate sbin/mr-jobhistory-daemon.sh
* [MAPREDUCE-6234](https://issues.apache.org/jira/browse/MAPREDUCE-6234) | Major |  (contrib/gridmix , mrv2) | TestHighRamJob fails due to the change in MAPREDUCE-5785
* [MAPREDUCE-6223](https://issues.apache.org/jira/browse/MAPREDUCE-6223) | Major |  (test) | TestJobConf#testNegativeValueForTaskVmem failures
* [MAPREDUCE-6161](https://issues.apache.org/jira/browse/MAPREDUCE-6161) | Major |  (scripts) | mapred hsadmin command missing from trunk
* [MAPREDUCE-6078](https://issues.apache.org/jira/browse/MAPREDUCE-6078) | Trivial |  (task) | native-task: fix gtest build on macosx
* [MAPREDUCE-6013](https://issues.apache.org/jira/browse/MAPREDUCE-6013) | Major |  (scripts) | mapred version is missing
* [MAPREDUCE-5972](https://issues.apache.org/jira/browse/MAPREDUCE-5972) | Trivial |   | Fix typo 'programatically' in job.xml (and a few other places)

Fix a typo. If a configuration is set through program, the source of the configuration is set to 'programmatically' instead of 'programatically' now.

* [MAPREDUCE-5912](https://issues.apache.org/jira/browse/MAPREDUCE-5912) | Major |  (client) | Task.calculateOutputSize does not handle Windows files after MAPREDUCE-5196
* [MAPREDUCE-5867](https://issues.apache.org/jira/browse/MAPREDUCE-5867) | Major |  (resourcemanager) | Possible NPE in KillAMPreemptionPolicy related to ProportionalCapacityPreemptionPolicy
* [MAPREDUCE-5785](https://issues.apache.org/jira/browse/MAPREDUCE-5785) | Major |  (mr-am , task) | Derive heap size or mapreduce.*.memory.mb automatically
* [MAPREDUCE-5717](https://issues.apache.org/jira/browse/MAPREDUCE-5717) | Major |   | Task pings are interpreted as task progress
* [MAPREDUCE-5653](https://issues.apache.org/jira/browse/MAPREDUCE-5653) | Major |  (distcp) | DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb

Prior to this change, distcp had hard-coded values for memory usage.  Now distcp will honor memory settings in a way compatible with the rest of MapReduce.

* [MAPREDUCE-5232](https://issues.apache.org/jira/browse/MAPREDUCE-5232) | Major |  (mrv1 , mrv2) | log classpath and other key properties on child JVM start
* [MAPREDUCE-5197](https://issues.apache.org/jira/browse/MAPREDUCE-5197) | Major |  (mrv2) | Checkpoint Service: a library component to facilitate checkpoint of task state
* [MAPREDUCE-5196](https://issues.apache.org/jira/browse/MAPREDUCE-5196) | Major |  (mr-am , mrv2) | CheckpointAMPreemptionPolicy implements preemption in MR AM via checkpointing 
* [MAPREDUCE-5189](https://issues.apache.org/jira/browse/MAPREDUCE-5189) | Major |  (mr-am , mrv2) | Basic AM changes to support preemption requests (per YARN-45)
* [MAPREDUCE-5012](https://issues.apache.org/jira/browse/MAPREDUCE-5012) | Trivial |  (documentation) | Typo in javadoc for IdentityMapper class
* [MAPREDUCE-4887](https://issues.apache.org/jira/browse/MAPREDUCE-4887) | Major |   | Rehashing partitioner for better distribution
* [MAPREDUCE-4735](https://issues.apache.org/jira/browse/MAPREDUCE-4735) | Trivial |  (test) | Make arguments in TestDFSIO case insensitive
* [MAPREDUCE-4695](https://issues.apache.org/jira/browse/MAPREDUCE-4695) | Blocker |   | Fix LocalRunner on trunk after MAPREDUCE-3223 broke it
* [MAPREDUCE-4686](https://issues.apache.org/jira/browse/MAPREDUCE-4686) | Major |  (build) | hadoop-mapreduce-client-core fails compilation in Eclipse due to missing Avro-generated classes
* [MAPREDUCE-4685](https://issues.apache.org/jira/browse/MAPREDUCE-4685) | Major |  (examples) | DBCount should not use ACCESS 
* [MAPREDUCE-4574](https://issues.apache.org/jira/browse/MAPREDUCE-4574) | Trivial |  (client) | Fix TotalOrderParitioner to work with non-WritableComparable key types
* [MAPREDUCE-4413](https://issues.apache.org/jira/browse/MAPREDUCE-4413) | Critical |  (build) | MR lib dir contains jdiff (which is gpl)
* [MAPREDUCE-4371](https://issues.apache.org/jira/browse/MAPREDUCE-4371) | Major |  (mrv1) | Check for cyclic dependencies in Jobcontrol job DAG
* [MAPREDUCE-3990](https://issues.apache.org/jira/browse/MAPREDUCE-3990) | Trivial |  (benchmarks) | MRBench allows Long-sized input-lines value but parses CLI argument as an Integer
* [MAPREDUCE-3956](https://issues.apache.org/jira/browse/MAPREDUCE-3956) | Minor |  (examples) | Remove the use of the deprecated Syncable.sync() method
* [MAPREDUCE-3302](https://issues.apache.org/jira/browse/MAPREDUCE-3302) | Minor |  (client) | Remove the last dependency call from org.apache.hadoop.record package in MR.
* [MAPREDUCE-3223](https://issues.apache.org/jira/browse/MAPREDUCE-3223) | Major |  (documentation , mrv2) | Remove MR1 configs from mapred-default.xml
* [MAPREDUCE-3149](https://issues.apache.org/jira/browse/MAPREDUCE-3149) | Major |   | add a test to verify that buildDTAuthority works for cases with no authority.
* [MAPREDUCE-2978](https://issues.apache.org/jira/browse/MAPREDUCE-2978) | Major |  (mrv2) | hudson findbugs not reporting properly
* [MAPREDUCE-2944](https://issues.apache.org/jira/browse/MAPREDUCE-2944) | Trivial |  (client) | Improve checking of input for Api displayTasks() 
* [MAPREDUCE-2841](https://issues.apache.org/jira/browse/MAPREDUCE-2841) | Major |  (task) | Task level native optimization

Adds a native implementation of the map output collector. The native library will build automatically with -Pnative. Users may choose the new collector on a job-by-job basis by setting mapreduce.job.map.output.collector.class=org.apache.hadoop.mapred.
nativetask.NativeMapOutputCollectorDelegator in their job configuration. For shuffle-intensive jobs this may provide speed-ups of 30% or more.


* [MAPREDUCE-2669](https://issues.apache.org/jira/browse/MAPREDUCE-2669) | Minor |  (examples) | Some new examples and test cases for them.
* [MAPREDUCE-2384](https://issues.apache.org/jira/browse/MAPREDUCE-2384) | Major |  (job submission , test) | The job submitter should make sure to validate jobs before creation of necessary files


