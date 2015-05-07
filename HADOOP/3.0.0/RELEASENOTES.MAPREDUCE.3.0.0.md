
<!---
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
-->
# Hadoop MAPREDUCE 3.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [MAPREDUCE-6234](https://issues.apache.org/jira/browse/MAPREDUCE-6234) | *Major* | **TestHighRamJob fails due to the change in MAPREDUCE-5785**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-6223](https://issues.apache.org/jira/browse/MAPREDUCE-6223) | *Major* | **TestJobConf#testNegativeValueForTaskVmem failures**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-5972](https://issues.apache.org/jira/browse/MAPREDUCE-5972) | *Trivial* | **Fix typo 'programatically' in job.xml (and a few other places)**

Fix a typo. If a configuration is set through program, the source of the configuration is set to 'programmatically' instead of 'programatically' now.


---

* [MAPREDUCE-5785](https://issues.apache.org/jira/browse/MAPREDUCE-5785) | *Major* | **Derive heap size or mapreduce.\*.memory.mb automatically**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-5653](https://issues.apache.org/jira/browse/MAPREDUCE-5653) | *Major* | **DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb**

Prior to this change, distcp had hard-coded values for memory usage.  Now distcp will honor memory settings in a way compatible with the rest of MapReduce.


---

* [MAPREDUCE-4424](https://issues.apache.org/jira/browse/MAPREDUCE-4424) | *Minor* | **'mapred job -list' command should show the job name as well**

Now "mapred job -list" command displays the Job Name as well.


---

* [MAPREDUCE-2841](https://issues.apache.org/jira/browse/MAPREDUCE-2841) | *Major* | **Task level native optimization**

Adds a native implementation of the map output collector. The native library will build automatically with -Pnative. Users may choose the new collector on a job-by-job basis by setting mapreduce.job.map.output.collector.class=org.apache.hadoop.mapred.
nativetask.NativeMapOutputCollectorDelegator in their job configuration. For shuffle-intensive jobs this may provide speed-ups of 30% or more.



