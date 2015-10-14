
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

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-72](https://issues.apache.org/jira/browse/YETUS-72) | *Major* | **Unassigned variable ${STARTDIR}?**

It seems a typo for $\{STARTINGDIR}, but I'm not certain it can be simply rewritten.

{code}
[sekikn@mobile yetus]$ grep -r STARTDIR dev-support
dev-support/test-patch.sh:  if [[ ${STARTDIR} == ${PATCH\_DIR}/precommit ]]; then
[sekikn@mobile yetus]$ grep -r STARTINGDIR dev-support
dev-support/test-patch.sh:STARTINGDIR=$(pwd)
dev-support/test-patch.sh:  cd "${STARTINGDIR}"
dev-support/test-patch.sh:  cd "${STARTINGDIR}"
dev-support/test-patch.sh:  pushd "${STARTINGDIR}" \>/dev/null
{code}


---

* [YETUS-68](https://issues.apache.org/jira/browse/YETUS-68) | *Major* | **Shellcheck plugin shows a warning against a removed file**

Same as YETUS-67. It checks file existence in shellcheck\_preapply, but not in shellcheck\_postapply.

{code}
[sekikn@mobile yetus]$ dev-support/test-patch.sh --basedir=/Users/sekikn/bigtop --project=bigtop BIGTOP-2084

(snip)

============================================================================
============================================================================
                       shellcheck plugin: postpatch
============================================================================
============================================================================


Running shellcheck against all identifiable shell scripts
./bigtop-deploy/puppet/modules/hadoop-hbase/templates/hbase-env.sh: ./bigtop-deploy/puppet/modules/hadoop-hbase/templates/hbase-env.sh: openFile: does not exist (No such file or directory)

(snip)
{code}


---

* [YETUS-67](https://issues.apache.org/jira/browse/YETUS-67) | *Major* | **XML plugin raises a false alarm against a removed file**

Because it doesn't check if the file exists. Example:

{code}
[sekikn@mobile yetus]$ dev-support/test-patch.sh --basedir=/Users/sekikn/bigtop --project=bigtop BIGTOP-2084

(snip)

\| Vote \|      Subsystem \|  Runtime   \| Comment
============================================================================
\|  +1  \|       @author  \|  0m 00s    \| The patch does not contain any @author 
\|      \|                \|            \| tags.
\|  +1  \|    gradleboot  \|  1m 08s    \| master passed 
\|  +1  \|    gradleboot  \|  0m 57s    \| the patch passed 
\|  +1  \|    shellcheck  \|  0m 02s    \| There were no new shellcheck issues. 
\|  -1  \|    whitespace  \|  0m 00s    \| The patch has 45 line(s) that end in 
\|      \|                \|            \| whitespace. Use git apply
\|      \|                \|            \| --whitespace=fix.
\|  -1  \|    whitespace  \|  0m 04s    \| The patch has 5 line(s) with tabs. 
\|  -1  \|           xml  \|  3m 04s    \| The patch has 11 ill-formed XML file(s). 
\|  +1  \|    asflicense  \|  0m 46s    \| Patch does not generate ASF License 
\|      \|                \|            \| warnings.
\|      \|                \|  8m 23s    \| 


\|\| Subsystem \|\| Report/Notes \|\|
============================================================================
\| JIRA Patch URL \| https://issues.apache.org/jira/secure/attachment/12765770/BIGTOP-2084.2.patch \|
\| JIRA Issue \| BIGTOP-2084 \|
\| Optional Tests \| asflicense shellcheck  xml  \|
\| uname \| Darwin mobile.local 14.5.0 Darwin Kernel Version 14.5.0: Wed Jul 29 02:26:53 PDT 2015; root:xnu-2782.40.9~1/RELEASE\_X86\_64 x86\_64 \|
\| Build tool \| gradle \|
\| Personality \| /Users/sekikn/dev/yetus/dev-support/personality/bigtop.sh \|
\| git revision \| master / 2a6fa3a \|
\| Default Java \| 1.7.0\_80 \|
\| shellcheck \| v0.4.1 \|
\| whitespace \| /private/tmp/yetus-22660.15373/whitespace-eol.txt \|
\| whitespace \| /private/tmp/yetus-22660.15373/whitespace-tabs.txt \|
\| xml \| /private/tmp/yetus-22660.15373/xml.txt \|


============================================================================
============================================================================
                              Finished build.
============================================================================
============================================================================


[sekikn@mobile yetus]$ cat /private/tmp/yetus-22660.15373/xml.txt
script error: sun.org.mozilla.javascript.internal.WrappedException: Wrapped java.io.FileNotFoundException: /Users/sekikn/bigtop/bigtop-deploy/puppet/modules/hadoop-hbase/templates/hbase-site.xml (No such file or directory) (\<system-init\>#714) in \<system-init\> at line number 714
script error: sun.org.mozilla.javascript.internal.WrappedException: Wrapped java.io.FileNotFoundException: /Users/sekikn/bigtop/bigtop-deploy/puppet/modules/hadoop-hive/templates/hive-site.xml (No such file or directory) (\<system-init\>#714) in \<system-init\> at line number 714
script error: sun.org.mozilla.javascript.internal.WrappedException: Wrapped java.io.FileNotFoundException: /Users/sekikn/bigtop/bigtop-deploy/puppet/modules/hadoop-oozie/templates/oozie-site.xml (No such file or directory) (\<system-init\>#714) in \<system-init\> at line number 714

(snip)
{code}


---

* [YETUS-66](https://issues.apache.org/jira/browse/YETUS-66) | *Blocker* | **Update apache license on all files**

Almost all of the files have the old license header.  We need to update this to the new one.


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

* [YETUS-41](https://issues.apache.org/jira/browse/YETUS-41) | *Major* | **github\_find\_jira\_title in test-patch github plugin returns 0 even if jira\_determine\_issue failed**

So the following check for $\{GITHUB\_ISSUE} seems to be skipped and github\_determine\_issue seems to succeed almost always.


---

* [YETUS-40](https://issues.apache.org/jira/browse/YETUS-40) | *Blocker* | **patch file confuses test-patch (date format problems)**

This was attached to HADOOP-12326 .


---

* [YETUS-33](https://issues.apache.org/jira/browse/YETUS-33) | *Major* | **committer mode for smart-apply-patch**

It'd be nice if smart-apply-patch had a committer mode that:

a) always stripped whitespace
b) always added new files


---

* [YETUS-31](https://issues.apache.org/jira/browse/YETUS-31) | *Major* | **releasedocmaker should use the Important flag in jira**

Apache JIRA has an Important flag in certain projects.  We should pick it up and treat it similarly to incompatible changes (special section in changes, always in release notes, etc)


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


---

* [YETUS-1](https://issues.apache.org/jira/browse/YETUS-1) | *Blocker* | **Migration of repo history from Hadoop**

filter out the unrelated parts of the code base from the hadoop HADOOP-12111 branch and import into our repo maintaining history.



