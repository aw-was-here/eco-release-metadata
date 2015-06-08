
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
#  0.14.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [PIG-4156](https://issues.apache.org/jira/browse/PIG-4156) | *Major* | **[PATCH] fix NPE when running scripts stored on hdfs://**

I will also post one for trunk


---

* [PIG-4062](https://issues.apache.org/jira/browse/PIG-4062) | *Minor* | **Add ascending order option to builtin TOP function**

Changes
1. Added option to configure sorting order
2. Moved test cases from piggybank to builtin test folder
3. Updated function documentation.


---

* [PIG-4047](https://issues.apache.org/jira/browse/PIG-4047) | *Major* | **Break up pig withouthadoop and fat jar**

**WARNING: No release note provided for this incompatible change.**


---

* [PIG-4038](https://issues.apache.org/jira/browse/PIG-4038) | *Minor* | **SPRINTF should return NULL on any NULL input**

SPRINTF returns null on any null argument


---

* [PIG-3996](https://issues.apache.org/jira/browse/PIG-3996) | *Major* | **Delete zebra from svn**

Zebra is deleted in 0.13.


---

* [PIG-3985](https://issues.apache.org/jira/browse/PIG-3985) | *Major* | **Multiquery execution of RANK with RANK BY causes NPE JobCreationException "ERROR 2017: Internal error creating job configuration"**

Multiquery execution of RANK with RANK BY causes NPE


---

* [PIG-3939](https://issues.apache.org/jira/browse/PIG-3939) | *Major* | **SPRINTF function to format strings using a printf-style template**

The SPRINTF function formats strings with printf-style templates: SPRINTF('%6s|%-8s|%2$,10d %2$8x %3$1TFT%<tT%<tz', 'yay', 1234567, ToMilliSeconds(CurrentTime())) => '   yay|1234567 | 1,234,567   12d687 2014-05-15T08:22:26-0500'.


---

* [PIG-3870](https://issues.apache.org/jira/browse/PIG-3870) | *Major* | **STRSPLITTOBAG UDF**

Patch committed to trunk. thanks Karan!


---

* [PIG-2834](https://issues.apache.org/jira/browse/PIG-2834) | *Trivial* | **MultiStorage requires unused constructor argument**

MultiStorage no longer requires parentPathStr as at constructor argument.



