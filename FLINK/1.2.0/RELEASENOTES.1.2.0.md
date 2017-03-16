
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
# Apache Flink  1.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-5221](https://issues.apache.org/jira/browse/FLINK-5221) | *Major* | **Checkpointed workless in Window Operator**

When window OPERATOR making checkpoint like this:

class WindowStatistic extends WindowFunction[Event, Int, Tuple, TimeWindow] with Checkpointed[Option[List[Event]]] {
    override def appley().... 

    override def snapshotState()...

    override def restoreState()

}

Window Operator couldn't invoke user defined function "snapshotState()". In debug model, line 123 in AbstractUdfStreamOperator.java returns false and can't make user defined state when checking the window whether is a Checkpointed instance. I think there is something wrong in userFunction var, it's a ScalaWindowFunctionWrapper object and it couldn't reflect if the user defined window extend Checkpointed Interface. Actually, the user defined window is kept in "func" var of userFunction.



