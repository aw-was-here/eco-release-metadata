
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
# Apache HBase  0.94.7 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-8148](https://issues.apache.org/jira/browse/HBASE-8148) | *Major* | **Allow IPC to bind on a specific address**

hbase.master.ipc.address and hbase.regionserver.ipc.address can now be used to have HBase bind on specific IP addresses, 0.0.0.0 being the main use case. The default behavior still relies on hbase.regionserver.dns.interface/nameserver.


---

* [HBASE-8081](https://issues.apache.org/jira/browse/HBASE-8081) | *Major* | **Backport HBASE-7213 (separate hlog for meta tables) to 0.94**

The regionserver carrying .META. / -ROOT- region will now write two WALs; the usual one w/ all edits and then a special one with a .meta. suffix into which all edits for .META. / -ROOT- region go. These files will be recovered first on server crash. This feature is turned OFF by default. The configuration hbase.regionserver.separate.hlog.for.meta must be set to true to enable this behavior.


---

* [HBASE-8176](https://issues.apache.org/jira/browse/HBASE-8176) | *Minor* | **Backport HBASE-5335 "Dynamic Schema Configurations" to 0.94**

With HBASE-8176("Dynamic Schema Configurations"), we can define table/column family specific configuration by HColumnDescriptor.setValue() or HTableDescriptor.setValue(). We can also do this easily in hbase shell.

Change the table-scope by set attribute CONFIG like this:
alter 'test', METHOD =\> 'table\_att', CONFIG =\> {'hbase.hstore.compaction.min' =\> '5'}

Change the column family config by set attribute CONFIG like this: 
alter 'test',  NAME =\> 'f', CONFIG =\> {'hbase.hstore.compaction.min' =\> '5'}


---

* [HBASE-8276](https://issues.apache.org/jira/browse/HBASE-8276) | *Major* | **Backport hbase-6738 to 0.94 "Too aggressive task resubmission from the distributed log manager"**

The Split Log Manager now takes into account the state of the region server doing the split. If this region server is marked as dead (i.e. its ZooKeeper connection expires), its task is immediately resubmitted. If the region server is still in the "alive" state, then we wait for 5 minutes before resubmitting, instead of 25 seconds previously. This delay can be changed with the parameter "hbase.splitlog.manager.timeout" (milliseconds, new default: 300000).


---

* [HBASE-7824](https://issues.apache.org/jira/browse/HBASE-7824) | *Major* | **Improve master start up time when there is log splitting work**

Master now won't wait for existing or previously left log splitting work(except for ROOT and META region servers) finish before it can start up. Sometimes log splitting work could take more than minutes. In normal case, master node starts much faster than before when there is region server recovery work going on. The feature can be disabled by setting configuration value ""hbase.master.wait.for.log.splitting" to true.(default value is false)


---

* [HBASE-1936](https://issues.apache.org/jira/browse/HBASE-1936) | *Major* | **ClassLoader that loads from hdfs; useful adding filters to classpath without having to restart services**

With this patch, customer filters can be dropped into a pre-configured folder (hbase.dynamic.jars.dir), which can be in hdfs. Region servers can pick them up dynamically, no need to restart the cluster for the new filters to take effect.

However, if a filter class is already loaded, it won't be un-loaded. Therefore, we can't load a new version of an existing class.  Users have to have a proper way to do filter class versioning.


---

* [HBASE-7801](https://issues.apache.org/jira/browse/HBASE-7801) | *Major* | **Allow a deferred sync option per Mutation.**

HBase clients from 0.94.7 going forward support the following new API for Mutations (Put/Delete/Append/Increment).
Mutation.setDurability(Durability). Possible durability settings are: USE\_DEFAULT (use whatever the table has been configured with), SKIP\_WAL (do not write anything to the WAL), ASYNC\_WAL (write to the WAL asynchronously), SYNC (write to the WAL synchrously), FSYNC (write to the WAL synchronously and force to disc everywhere - currently not supported).

Regionservers prior to 0.94.7 with ignore anything but SKIP\_WAL and assume USE\_DEFAULT.


---

* [HBASE-8352](https://issues.apache.org/jira/browse/HBASE-8352) | *Blocker* | **Rename '.snapshot' directory**

In order to avoid name collision with hdfs snapshot, ".snapshot" under HBase root directory must be renamed as ".hbase-snapshot" before deployment of 0.94.7 or later release is started.

Don't do rolling upgrade between 0.94.6.1 and 0.94.7 if there're on-going snapshots activities.
Sequence of actions should be:

1. make sure all on-going snapshots activities have completed
2. shutdown all the masters
3. rename ".snapshot" under HBase root directory as ".hbase-snapshot"
4. upgrade the masters to 0.94.7+ release (You now can perform clone or restore, but not taking snapshots)
5. upgrade the region servers
(You should not take snapshots until all the regions server are aligned to 0.94.7+ release)

If you take a snapshot during the RS upgrades nothing critical happens. The ".snapshot" folder would appear again and the snapshot will fail since half of the data will be in ".hbase-snapshot" and the other half in ".snapshot"



