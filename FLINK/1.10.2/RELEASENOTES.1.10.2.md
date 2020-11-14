
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
# Apache Flink  1.10.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-18242](https://issues.apache.org/jira/browse/FLINK-18242) | *Major* | **Custom OptionsFactory settings seem to have no effect on RocksDB**

After FLINK-18242, the deprecated \`OptionsFactory\` and \`ConfigurableOptionsFactory\` classes are removed (not applicable for release-1.10), please use \`RocksDBOptionsFactory\` and \`ConfigurableRocksDBOptionsFactory\` instead. Please also recompile your application codes if any class extending \`DefaultConfigurableOptionsFactory\`.


---

* [FLINK-17800](https://issues.apache.org/jira/browse/FLINK-17800) | *Critical* | **RocksDB optimizeForPointLookup results in missing time windows**

After FLINK-17800 by default we will set \`setTotalOrderSeek\` to true for RocksDB's \`ReadOptions\`, to prevent user from miss using \`optimizeForPointLookup\`. Meantime we support customizing \`ReadOptions\` through \`RocksDBOptionsFactory\`. Please set \`setTotalOrderSeek\` back to false if any performance regression observed (normally won't happen according to our testing).



