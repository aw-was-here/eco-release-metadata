
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
# Apache HBase  0.19.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-1301](https://issues.apache.org/jira/browse/HBASE-1301) | *Minor* | **HTable.getRow() returns null if the row does no exist**

Fix API doc of HTable.getRow (non-existent row key returns null instead of empty RowResult)


---

* [HBASE-1292](https://issues.apache.org/jira/browse/HBASE-1292) | *Minor* | **php thrift's getRow() would throw an exception if the row does not exist**

thrift's getRow\*() now throws NotFound if the row key does not exist


---

* [HBASE-1279](https://issues.apache.org/jira/browse/HBASE-1279) | *Major* | **Fix the way hostnames and IPs are handled**

To tell HBase how to use your DNS configuration, set hbase.regionserver.dns.interface and hbase.regionserver.dns.nameserver in hbase-site.xml just like in hadoop-site.xml


---

* [HBASE-1264](https://issues.apache.org/jira/browse/HBASE-1264) | *Minor* | **Wrong return values of comparators for ColumnValueFilter**

Patch fixes the return values of org.apache.hadoop.hbase.filter.RegexStringComparator.compareTo()



