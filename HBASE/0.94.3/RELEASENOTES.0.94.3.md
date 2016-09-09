
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
# Apache HBase  0.94.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-6942](https://issues.apache.org/jira/browse/HBASE-6942) | *Major* | **Endpoint implementation for bulk deletion of data**

This issue gives an example Endpoint implementation for efficiently deleting bulk data from tables. Which  data to be deleted can be controlled using a Scan object passed to the endpoint.
We can delete rows, column families, column qualifiers or cell versions based on delete type passed.
Optionally timestamp also can be passed. When timestamp is passed for ROW, FAMILY and COLUMN delete types, all the versions before that time(specified time inclusive) will get deleted.
When the type is VERSION, if a timestamp is passed, only one version(with ts as given value) of all the cells which the Scan selected will be deleted. When no timestamp value passed for VERSION type delete it will delete all the cell versions which the Scan selected. Using appropriate Scan with Timerange etc user can control which versions to be deleted.
The API returns the number of rows deleted (In types other than ROW it is not entire row deleted) and when type is VERSION it will return total number of versions deleted also.
The Scan can be created with a rowkey range, with some filters, with Timerange etc based on the delete usecase.


---

* [HBASE-6728](https://issues.apache.org/jira/browse/HBASE-6728) | *Major* | **[89-fb] prevent OOM possibility due to per connection responseQueue being unbounded**

This issue adds config parameter, ipc.server.response.queue.maxsize, to control the maximum size of response queue.
Default response queue max size is 1GB.


---

* [HBASE-6846](https://issues.apache.org/jira/browse/HBASE-6846) | *Major* | **BitComparator bug - ArrayIndexOutOfBoundsException**

BitComparator bug - ArrayIndexOutOfBoundsException corrected


---

* [HBASE-6925](https://issues.apache.org/jira/browse/HBASE-6925) | *Critical* | **Change socket write size from 8K to 64K for HBaseServer**

Up RPC base buffer size from 8k to 64k.  Improves scanner throughput.


---

* [HBASE-6389](https://issues.apache.org/jira/browse/HBASE-6389) | *Critical* | **Modify the conditions to ensure that Master waits for sufficient number of Region Servers before starting region assignments**

Reverts the cluster startup behavior to pre 0.94.0.

With this, Master will wait until "hbase.master.wait.on.regionservers.mintostart" number of Region Servers have registered with it before it starts region assignment. The default value of this setting is 1.

In large clusters with thousands of regions you may want to increase this to a higher number which is sufficient to handle the task of opening those region in parallel.

If left to the default, at times, the Master could assign all regions to a single Region Server which will result in slow startup and in worst case could OOM the Region Server (some time resulting in META inconsistency).

Here is how it works now (from the javadoc):

We wait until one of these condition is met:
 - the master is stopped
 - the 'hbase.master.wait.on.regionservers.maxtostart' number of region servers is reached
 - the 'hbase.master.wait.on.regionservers.mintostart' is reached AND there have been no new region server in for 'hbase.master.wait.on.regionservers.interval' time AND the 'hbase.master.wait.on.regionservers.timeout' is reached



