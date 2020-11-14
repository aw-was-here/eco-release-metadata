
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
# Apache Orc  1.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [ORC-595](https://issues.apache.org/jira/browse/ORC-595) | *Critical* | **Optimize Decimal64 scale calculation**

Currently Decimal64 is using an inner loop to apply the correct scale to each read Long value [https://github.com/apache/orc/blob/master/java/core/src/java/org/apache/orc/impl/TreeReaderFactory.java#L1294]

A more efficient way would be to apply the scale using a single array access and by multiplying by 10 in the power of (scale - scratchScaleVector[r]).

An extra optimization would be to keep all powers of 10 (up to 18) in a static array and reuse it across runtime instead of calculating each time.

cc: [~rameshkumar] [~gopalv]


---

* [ORC-606](https://issues.apache.org/jira/browse/ORC-606) | *Major* | **Optimize Timestamp parseNanos calculation**

TimestampTreeReader currently uses a loop to calculate the scale of nanoseconds.

We can avoid the loop using array of pre-calculated powers of 10.



