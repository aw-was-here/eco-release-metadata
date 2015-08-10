
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
# Apache Orc  1.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [ORC-24](https://issues.apache.org/jira/browse/ORC-24) | *Major* | **C++ reader for direct string encodings occasionally skips bytes**

The ORC C++ direct string column reader can occasionally skip bytes in the blob stream.

The necessary conditions are:
* The column is a string column and is directly encoded.
* The blob stream for the row batch crosses a compression block boundary.
* There is a null value toward the end of the block boundary.
* The value in the length value of the null value crosses the block boundary, but the length value of the following value does not.


---

* [ORC-23](https://issues.apache.org/jira/browse/ORC-23) | *Major* | **Simplify the C++ directory structure a bit**

I want to simplify the directory structure a bit:
* c++/src/orc -> c++/src
* c++/test/orc -> c++/test
* tools-c++ -> tools


---

* [ORC-22](https://issues.apache.org/jira/browse/ORC-22) | *Major* | **Make buffer block size configurable**

The current implementation of seekable file input stream reads files, by default, in 256K chunks. This parameter should be configurable via ReaderOptions.


---

* [ORC-9](https://issues.apache.org/jira/browse/ORC-9) | *Major* | **Create a ColumnVectorBatch for Timestamps**

Create a TimestampVectorBatch that uses time\_t and the number of nanoseconds.


---

* [ORC-3](https://issues.apache.org/jira/browse/ORC-3) | *Major* | **Import native code from github**

Import C++ implementation from

https://github.com/hortonworks/orc/releases/tag/apache-import-4



