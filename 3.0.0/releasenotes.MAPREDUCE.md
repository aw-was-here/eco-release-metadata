# Hadoop MAPREDUCE 3.0.0 Release Notes

These release notes cover  new developer and user-facing incompatibilities, features, and major improvements.

## Changes since Hadoop 2.7.0

---

* [MAPREDUCE-6234](https://issues.apache.org/jira/browse/MAPREDUCE-6234) | *Major* | **TestHighRamJob fails due to the change in MAPREDUCE-5785**

No release note provided for this incompatible change.

---

* [MAPREDUCE-6223](https://issues.apache.org/jira/browse/MAPREDUCE-6223) | *Major* | **TestJobConf#testNegativeValueForTaskVmem failures**

No release note provided for this incompatible change.

---

* [MAPREDUCE-5972](https://issues.apache.org/jira/browse/MAPREDUCE-5972) | Trivial | Fix typo 'programatically' in job.xml (and a few other places)

Fix a typo. If a configuration is set through program, the source of the configuration is set to 'programmatically' instead of 'programatically' now.

---

* [MAPREDUCE-5785](https://issues.apache.org/jira/browse/MAPREDUCE-5785) | *Major* | **Derive heap size or mapreduce.*.memory.mb automatically**

No release note provided for this incompatible change.

---

* [MAPREDUCE-5653](https://issues.apache.org/jira/browse/MAPREDUCE-5653) | Major | DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb

Prior to this change, distcp had hard-coded values for memory usage.  Now distcp will honor memory settings in a way compatible with the rest of MapReduce.

---

* [MAPREDUCE-2841](https://issues.apache.org/jira/browse/MAPREDUCE-2841) | Major | Task level native optimization

Adds a native implementation of the map output collector. The native library will build automatically with -Pnative. Users may choose the new collector on a job-by-job basis by setting mapreduce.job.map.output.collector.class=org.apache.hadoop.mapred.
nativetask.NativeMapOutputCollectorDelegator in their job configuration. For shuffle-intensive jobs this may provide speed-ups of 30% or more.



