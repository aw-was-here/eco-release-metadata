
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
# Apache Parquet  1.11.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [PARQUET-1485](https://issues.apache.org/jira/browse/PARQUET-1485) | *Major* | **Snappy Decompressor/Compressor may cause direct memory leak**

In out production environment, we encountered a direct memory oom issues caused by the direct buffer not released in time.

After carefully checked the code, it seems that the some methods of SnappyDecompressor/SnappyCompressor would not release the direct buffer manually. If too much direct memory allocated and no GC happens, this bug may result in direct memory oom.

Moreover, if the \`-XX:+DisableImplicitGC\` jvm option is specified, the direct memory oom would happen easily for large datasets.

Seems that the problem still exist in the latest code.



