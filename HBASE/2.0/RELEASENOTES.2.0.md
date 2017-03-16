
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
# Apache HBase  2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-17707](https://issues.apache.org/jira/browse/HBASE-17707) | *Minor* | **New More Accurate Table Skew cost function/generator**

There are now new table skew cost functions and table skew candidate generators in the stochastic load balancer to more evenly spread tables across the cluster. Table skew cost is computed per table, and the final table skew cost number is a weighted average of the maximum skew cost for a given table with the average skew cost across all tables. To configure how much weight the maximum skew cost for a single table should get, you can change "hbase.master.balancer.stochastic.maxTableSkewWeight" to a float between 0.0 and 1.0, where 0.0 means the max table skew gets 0% of the weight and 1.0 means max table skew gets 100% of the weight. This value is useful if you want to strongly penalize any one table being skewed (even if all others are evenly balanced). We default this value to 0.0 because this works best for most cases in practice.



