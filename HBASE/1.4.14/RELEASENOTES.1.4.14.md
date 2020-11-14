
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
# Apache HBase  1.4.14 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | *Minor* | **Move Jira-attached file precommit definition from script in Jenkins config to dev-support**

The Jira Precommit job (https://builds.apache.org/job/PreCommit-HBASE-Build/) will now look for a file within the source tree (dev-support/jenkins\_precommit\_jira\_yetus.sh) instead of depending on a script section embedded in the job.


---

* [HBASE-24017](https://issues.apache.org/jira/browse/HBASE-24017) | *Major* | **Turn down flakey rerun rate on all but hot branches**

Changed master, branch-2, and branch-2.1 to twice a day.
Left branch-2.3, branch-2.2, and branch-1 at every 4 hours.
Changed branch-1.4 and branch-1.3 to @daily (1.3 was running every hour).


---

* [HBASE-24032](https://issues.apache.org/jira/browse/HBASE-24032) | *Major* | **[RSGroup] Assign created tables to respective rsgroup automatically instead of manual operations**

Admin can determine which tables go to which rsgroup by script  (setting hbase.rsgroup.table.mapping.script with local filystem path) on Master side which aims to lighten the burden of admin operations.  Note, since HBase 3+, rsgroup can be specified in TableDescriptor as well, if clients specify this, master will skip the determination from script.

Here is a simple example of script:
{code}
# Input consists of two string, 1st is the namespace of the table, 2nd is the table name of the table
#!/bin/bash
namespace=$1
tablename=$2
if [[ $namespace == test ]]; then
  echo test
elif [[ $tablename == \*foo\* ]]; then
  echo other
else
  echo default
fi
{code}


---

* [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | *Major* | **Use a fair ReentrantReadWriteLock for the region close lock**

This change modifies the default acquisition policy for the region's close lock in order to prevent observed starvation of close requests. The new boolean configuration parameter 'hbase.regionserver.fair.region.close.lock' controls the lock acquisition policy: if true, the lock is created in fair mode (default); if false, the lock is created in nonfair mode (the old default).


---

* [HBASE-24121](https://issues.apache.org/jira/browse/HBASE-24121) | *Major* | **[Authorization] ServiceAuthorizationManager isn't dynamically updatable. And it should be.**

Master & RegionService now support refresh policy authorization defined in hbase-policy.xml without restarting service. To refresh policy, please execute hbase shell command: update\_config or update\_config\_all after policy file updated and synced on all nodes.


---

* [HBASE-24218](https://issues.apache.org/jira/browse/HBASE-24218) | *Major* | **Add hadoop 3.2.x in hadoop check**

Add hadoop-3.2.0 and hadoop-3.2.1 in hadoop check and when '--quick-hadoopcheck' we will only check hadoop-3.2.1.

Notice that, for aligning the personality scripts across all the active branches, we will commit the patch to all active branches, but the hadoop-3.2.x support in hadoopcheck is only applied to branch-2.2+.


---

* [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | *Major* | **Relocate test-only REST "client" from src/ to test/ and mark Private**

Relocate test-only REST RemoteHTable and RemoteAdmin from src/ to test/. And mark them as InterfaceAudience.Private.


---

* [HBASE-25154](https://issues.apache.org/jira/browse/HBASE-25154) | *Major* | **Set java.io.tmpdir to project build directory to avoid writing std\*deferred files to /tmp**

Change the java.io.tmpdir to project.build.directory in surefire-maven-plugin, to avoid writing std\*deferred files to /tmp which may blow up the /tmp disk on our jenkins build node.


---

* [HBASE-25163](https://issues.apache.org/jira/browse/HBASE-25163) | *Major* | **Increase the timeout value for nightly jobs**

Increase timeout value for nightly jobs to 16 hours since the new build machines are dedicated to hbase project, so we are allowed to use it all the time.



