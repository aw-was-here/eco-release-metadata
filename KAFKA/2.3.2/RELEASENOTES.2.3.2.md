
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
# Apache Kafka  2.3.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-9156](https://issues.apache.org/jira/browse/KAFKA-9156) | *Blocker* | **LazyTimeIndex & LazyOffsetIndex may cause niobufferoverflow in concurrent state**

!image-2019-11-07-17-42-13-852.png!

this timeindex get function is not thread safe ,may cause create some timeindex.

!image-2019-11-07-17-44-05-357.png!

When create timeindex not exactly one ,may cause mappedbytebuffer position to end. Then write index entry to this mmap file will cause java.nio.BufferOverflowException.

 

!image-2019-11-07-17-46-53-650.png!



