
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
# Apache HBase  0.94.8 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-8389](https://issues.apache.org/jira/browse/HBASE-8389) | *Critical* | **HBASE-8354 forces Namenode into loop with lease recovery requests**

A new config param, hbase.lease.recovery.waiting.period, is introduced for FSHDFSUtils#recoverFileLease().
It represents the amount of time, in milliseconds, that we wait after issuing recoverLease() request. The default value is 4 seconds.


---

* [HBASE-5930](https://issues.apache.org/jira/browse/HBASE-5930) | *Major* | **Limits the amount of time an edit can live in the memstore.**

This feature limits the time that unflushed data will stay in the memstore.
By default a memstore will flush if data older than 1h (3600000ms) is present.

This can be configured via hbase.regionserver.optionalcacheflushinterval (default value is 3600000).


---

* [HBASE-8355](https://issues.apache.org/jira/browse/HBASE-8355) | *Major* | **BaseRegionObserver#pre(Compact\|Flush\|Store)ScannerOpen returns null**

As pointed out in https://github.com/forcedotcom/phoenix/pull/131, BaseRegionObserver#preCompactScannerOpen returns null by default, which hoses any coprocessors down the line, making override of this method mandatory in all subclasses of BaseRegionObserver, when there are multiple levels of coprocessor stacking - this same behavior is present in preFlushScannerOpen and preStoreScannerOpen. 

Instead, we default to returning the passed scanner so earlier coprocessor changes are preserved and still support the default "no custom scanner" by returning null (default scanner passed to each hook).



