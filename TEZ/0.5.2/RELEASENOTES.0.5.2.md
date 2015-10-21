
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
# Apache Tez  0.5.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [TEZ-1700](https://issues.apache.org/jira/browse/TEZ-1700) | *Major* | **Replace containerId from TaskLocationHint with [TaskIndex+Vertex] based affinity**

Today 1-1 dependencies are affinitized by creating a task location hint with the producer task container id. It can be created by affinitizing to the producer task-index+vertexname combination instead and internally Tez can map it to the container. This also allows this dependency to be specified before the container is assigned. This allows the dependency to be generic.


---

* [TEZ-1699](https://issues.apache.org/jira/browse/TEZ-1699) | *Critical* | **Vertex.setParallelism should throw an exception for invalid invocations**

There is a return value of false when setParallelism is not successful. However that may be ignored and in some cases the invocation is actually incorrect and its better to throw an exception than return false. Throwing an unchecked exception can allow doing this compatibly.


---

* [TEZ-1666](https://issues.apache.org/jira/browse/TEZ-1666) | *Critical* | **UserPayload should be null if the payload is not specified**

As an example in the ProcessorDescriptor - if no payload is specified, context.getUserPayload should return null.

SleepProcessor has an explicit check for a null payload, to enable default sleep value - which fails.

Marking as critical since this is an API behaviour inconsistency.



