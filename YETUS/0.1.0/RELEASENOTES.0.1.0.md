
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
# Apache Yetus  0.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [YETUS-63](https://issues.apache.org/jira/browse/YETUS-63) | *Minor* | **The menu button on Yetus website is invisible when viewed from mobile devices**

It works, but is not visible.


---

* [YETUS-55](https://issues.apache.org/jira/browse/YETUS-55) | *Major* | **fix recovery of broken rebase code**

The fix for HADOOP-12244 is incorrect.


---

* [YETUS-50](https://issues.apache.org/jira/browse/YETUS-50) | *Major* | **asflicense is easily tricked**

asflicense needs to make sure that it gets at least one report file instead of assuming nothing is wrong.


---

* [YETUS-40](https://issues.apache.org/jira/browse/YETUS-40) | *Blocker* | **patch file confuses test-patch (date format problems)**

This was attached to HADOOP-12326 .


---

* [YETUS-28](https://issues.apache.org/jira/browse/YETUS-28) | *Major* | **if CHANGED\_FILES is corrupt, find\_changed\_modules never returns**

In building some unit tests, did a negative tests and hit this condition.  We should put a limit on how many times we loop in the find\_x\_dirs code.


---

* [YETUS-9](https://issues.apache.org/jira/browse/YETUS-9) | *Major* | **Update .gitignore to reflect Yetus instead of Hadoop**

.gitignore has a lot of extraneous stuff in it.


---

* [YETUS-7](https://issues.apache.org/jira/browse/YETUS-7) | *Blocker* | **update top level LICENSE and NOTICE**

\* Name them LICENSE and NOTICE, per current policy preference
\* Update LICENSE to reflect any bundled 3rd party works
\* Update NOTICE with our project and any bundled 3rd party works


---

* [YETUS-5](https://issues.apache.org/jira/browse/YETUS-5) | *Major* | **Support per-instance maven repos**

On busy jenkins servers, it only takes one bad apple doing a dependency:purge-local-repository to wreak havoc on other projects. In order to protect against this, test-patch should have some way to overlay the .m2 directory with something that is (minimally) per-project and maximally per run.


---

* [YETUS-2](https://issues.apache.org/jira/browse/YETUS-2) | *Critical* | **Build website**

the gitpubsub set up only serves static content directly to browsers. We need some means to build our markdown (or whatever) source into html, and a workflow to push it into hte gitpubsub branch.



