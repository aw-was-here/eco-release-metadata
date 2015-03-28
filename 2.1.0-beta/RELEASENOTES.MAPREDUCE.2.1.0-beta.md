# Hadoop MAPREDUCE 2.1.0-beta Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [MAPREDUCE-5399](https://issues.apache.org/jira/browse/MAPREDUCE-5399) | *Blocker* | **Unnecessary Configuration instantiation in IFileInputStream slows down merge**

Fixes blank Configuration object creation overhead by reusing the Job configuration in InMemoryReader.


---

* [MAPREDUCE-5304](https://issues.apache.org/jira/browse/MAPREDUCE-5304) | *Blocker* | **mapreduce.Job killTask/failTask/getTaskCompletionEvents methods have incompatible signature changes**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-5300](https://issues.apache.org/jira/browse/MAPREDUCE-5300) | *Major* | **Two function signature changes in filecache.DistributedCache**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-5237](https://issues.apache.org/jira/browse/MAPREDUCE-5237) | *Major* | **ClusterStatus incompatiblity issues with MR1**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-5234](https://issues.apache.org/jira/browse/MAPREDUCE-5234) | *Major* | **Signature changes for getTaskId of TaskReport in mapred**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-5233](https://issues.apache.org/jira/browse/MAPREDUCE-5233) | *Major* | **Functions are changed or removed from Job in jobcontrol**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-5184](https://issues.apache.org/jira/browse/MAPREDUCE-5184) | *Major* | **Document MR Binary Compatibility vis-a-vis hadoop-1 and hadoop-2**

Document MR Binary Compatibility vis-a-vis hadoop-1 and hadoop-2 for end-users.


---

* [MAPREDUCE-5176](https://issues.apache.org/jira/browse/MAPREDUCE-5176) | *Major* | **Preemptable annotations (to support preemption in MR)**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-5156](https://issues.apache.org/jira/browse/MAPREDUCE-5156) | *Blocker* | **Hadoop-examples-1.x.x.jar cannot run on Yarn**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-4942](https://issues.apache.org/jira/browse/MAPREDUCE-4942) | *Major* | **mapreduce.Job has a bunch of methods that throw InterruptedException so its incompatible with MR1**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-4737](https://issues.apache.org/jira/browse/MAPREDUCE-4737) | *Major* | ** Hadoop does not close output file / does not call Mapper.cleanup if exception in map**

Ensure that mapreduce APIs are semantically consistent with mapred API w.r.t Mapper.cleanup and Reducer.cleanup; in the sense that cleanup is now called even if there is an error. The old mapred API already ensures that Mapper.close and Reducer.close are invoked during error handling. Note that it is an incompatible change, however end-users can override Mapper.run and Reducer.run to get the old (inconsistent) behaviour.


---

* [MAPREDUCE-4356](https://issues.apache.org/jira/browse/MAPREDUCE-4356) | *Major* | **Provide access to ParsedTask.obtainTaskAttempts()**

Made the method ParsedTask.obtainTaskAttempts() public.


---

* [MAPREDUCE-4149](https://issues.apache.org/jira/browse/MAPREDUCE-4149) | *Major* | **Rumen fails to parse certain counter strings**

Fixes Rumen to parse counter strings containing the special characters "{" and "}".


---

* [MAPREDUCE-4100](https://issues.apache.org/jira/browse/MAPREDUCE-4100) | *Minor* | **Sometimes gridmix emulates data larger much larger then acutal counter for map only jobs**

Bug fixed in compression emulation feature for map only jobs.


---

* [MAPREDUCE-4083](https://issues.apache.org/jira/browse/MAPREDUCE-4083) | *Major* | **GridMix emulated job tasks.resource-usage emulator for CPU usage throws NPE when Trace contains cumulativeCpuUsage value of 0 at attempt level**

Fixes NPE in cpu emulation in Gridmix


---

* [MAPREDUCE-4067](https://issues.apache.org/jira/browse/MAPREDUCE-4067) | *Critical* | **Replace YarnRemoteException with IOException in MRv2 APIs**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-3953](https://issues.apache.org/jira/browse/MAPREDUCE-3953) | *Major* | **Gridmix throws NPE and does not simulate a job if the trace contains null taskStatus for a task**

Fixes NPE and makes Gridmix simulate succeeded-jobs-with-failed-tasks. All tasks of such simulated jobs(including the failed ones of original job) will succeed.


---

* [MAPREDUCE-3829](https://issues.apache.org/jira/browse/MAPREDUCE-3829) | *Major* | **[Gridmix] Gridmix should give better error message when input-data directory already exists and -generate option is given**

Makes Gridmix emit out correct error message when the input data directory already exists and -generate option is used. Makes Gridmix exit with proper exit codes when Gridmix fails in args-processing, startup/setup.


---

* [MAPREDUCE-3787](https://issues.apache.org/jira/browse/MAPREDUCE-3787) | *Major* | **[Gridmix] Improve STRESS mode**

JobMonitor can now deploy multiple threads for faster job-status polling. Use 'gridmix.job-monitor.thread-count' to set the number of threads. Stress mode now relies on the updates from the job monitor instead of polling for job status. Failures in job submission now get reported to the statistics module and ultimately reported to the user via summary.


---

* [MAPREDUCE-3757](https://issues.apache.org/jira/browse/MAPREDUCE-3757) | *Major* | **Rumen Folder is not adjusting the shuffleFinished and sortFinished times of reduce task attempts**

Fixed the sortFinishTime and shuffleFinishTime adjustments in Rumen Folder.


---

* [MAPREDUCE-2722](https://issues.apache.org/jira/browse/MAPREDUCE-2722) | *Major* | **Gridmix simulated job's map's hdfsBytesRead counter is wrong when compressed input is used**

Makes Gridmix use the uncompressed input data size while simulating map tasks in the case where compressed input data was used in original job.



