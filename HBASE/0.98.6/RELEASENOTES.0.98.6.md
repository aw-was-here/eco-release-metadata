
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
# Apache HBase  0.98.6 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-11878](https://issues.apache.org/jira/browse/HBASE-11878) | *Major* | **TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController not yet initialized**

A new exception, VisibilityControllerNotReadyException, is introduced for the case where VisibilityController is being initialized. Client can respond to this exception by retrying prior operation.
VisibilityControllerNotReadyException isn't a DoNotRetryIOException.


---

* [HBASE-11821](https://issues.apache.org/jira/browse/HBASE-11821) | *Major* | **[ImportTSV] Abstract labels tags creation into pluggable Interface**

Added a facade org.apache.hadoop.hbase.mapreduce.CellCreator to create Cells for HFileOutputFormat. When working with HFileOutputFormat (with or with out visibility labels) in bulk load one can  use this facade to make Cells with visibility tags.
Also we allow plugin an implementation of org.apache.hadoop.hbase.mapreduce.VisibilityExpressionResolver by configuring the the FQCN with key "hbase.mapreduce.visibility.expression.resolver.class". The default implementation will tag Cells with visibility label ordinal.


---

* [HBASE-11610](https://issues.apache.org/jira/browse/HBASE-11610) | *Major* | **Enhance remote meta updates**

Adds "hbase.regionstatestore.meta.connection" configuration and new MultiHConnection class.  Is set to 1 by default.  Set it higher if you want to run with more than one connection to the meta table.  Useful if you have a very large meta table -- e.g. 1M regions -- otherwise, stick to the default.


---

* [HBASE-11059](https://issues.apache.org/jira/browse/HBASE-11059) | *Major* | **ZK-less region assignment**

This patch makes it possible to do region assignment without ZK. By default, it is off (i.e. ZK is used for region assignment as before).

Two setting "hbase.assignment.usezk", "hbase.assignment.usezk.migrating" are introduced to control migration from using ZK for assignment to not using
ZK for assignment.

For rolling upgrade from using ZK to not using ZK, it can be done in two steps:

1. Set both hbase.assignment.usezk and hbase.assignment.usezk.migrating to true, do a rolling upgrade so that both masters and regionservers have
the new code. Either master or regionserver can be upgraded at first. The order is not important for this step. If you want to keep using ZK for assignment, you'd better set hbase.assignment.usezk to true, and hbase.assignment.usezk.migrating to false so that region states are not persisted in meta table.

2. Set hbase.assignment.usezk to false, do a rolling restart so that region assignments don't use ZK any more. For this step, masters should be restarted after regionservers have all restarted at first so that they won't update meta table directly and master doesn't know about it.



