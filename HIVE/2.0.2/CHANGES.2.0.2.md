
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
# Apache Hive Changelog

## Release 2.0.2 - Unreleased (as of 2016-08-25)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13870](https://issues.apache.org/jira/browse/HIVE-13870) | Decimal vector is not resized correctly |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13948](https://issues.apache.org/jira/browse/HIVE-13948) | Incorrect timezone handling in Writable results in wrong dates in queries |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13957](https://issues.apache.org/jira/browse/HIVE-13957) | vectorized IN is inconsistent with non-vectorized (at least for decimal in (string)) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14024](https://issues.apache.org/jira/browse/HIVE-14024) | setAllColumns is called incorrectly after some changes |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14012](https://issues.apache.org/jira/browse/HIVE-14012) | some ColumnVector-s are missing ensureSize |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14222](https://issues.apache.org/jira/browse/HIVE-14222) | PTF: Operator initialization does not clean state |  Major | PTF-Windowing | Gopal V | Wei Zheng |
| [HIVE-14322](https://issues.apache.org/jira/browse/HIVE-14322) | Postgres db issues after Datanucleus 4.x upgrade |  Major | . | Thejas M Nair | Sergey Shelukhin |
| [HIVE-14408](https://issues.apache.org/jira/browse/HIVE-14408) | thread safety issue in fast hashtable |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14483](https://issues.apache.org/jira/browse/HIVE-14483) |  java.lang.ArrayIndexOutOfBoundsException org.apache.orc.impl.TreeReaderFactory$BytesColumnVectorUtil.commonReadByteArrays |  Critical | ORC | Sergey Zadoroshnyak | Sergey Zadoroshnyak |


