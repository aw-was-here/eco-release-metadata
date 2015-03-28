# Hadoop MAPREDUCE 2.0.3-alpha Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [MAPREDUCE-4928](https://issues.apache.org/jira/browse/MAPREDUCE-4928) | *Major* | **Use token request messages defined in hadoop common**

Protobuf message GetDelegationTokenRequestProto field renewer is made requried from optional. This change is not wire compatible with the older releases.


---

* [MAPREDUCE-4637](https://issues.apache.org/jira/browse/MAPREDUCE-4637) | *Major* | **Killing an unassigned task attempt causes the job to fail**

Handle TaskAttempt diagnostic updates while in the NEW and UNASSIGNED states.


---

* [MAPREDUCE-4123](https://issues.apache.org/jira/browse/MAPREDUCE-4123) | *Critical* | **./mapred groups gives NoClassDefFoundError**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-4049](https://issues.apache.org/jira/browse/MAPREDUCE-4049) | *Major* | **plugin for generic shuffle service**

Allow ReduceTask loading a third party plugin for shuffle (and merge) instead of the default shuffle.


---

* [MAPREDUCE-3678](https://issues.apache.org/jira/browse/MAPREDUCE-3678) | *Major* | **The Map tasks logs should have the value of input split it processed**

A map-task's syslogs now carries basic info on the InputSplit it processed.


---

* [MAPREDUCE-2454](https://issues.apache.org/jira/browse/MAPREDUCE-2454) | *Minor* | **Allow external sorter plugin for MR**

MAPREDUCE-4807 Allow external implementations of the sort phase in a Map task



