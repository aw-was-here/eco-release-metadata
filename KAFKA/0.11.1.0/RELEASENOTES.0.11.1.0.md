
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
# Apache Kafka  0.11.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-5289](https://issues.apache.org/jira/browse/KAFKA-5289) | *Critical* | **One StopReplicaRequest will caused two Responses**

After discussed with my friend markTC，we find a bug.
One StopReplicaRequest will caused two Responses.

At core/src/main/scala/kafka/server/KafkaApi.class 175 and 176 lines.

When an exception caused at 'replicaManager.replicaFetcherManager.shutdownIdleFetcherThreads()', 
will also return two responses.

one is at 175 lines 'requestChannel.sendResponse(new RequestChannel.Response(request, new ResponseSend(request.connectionId, responseHeader, response)))' and another at 111 lines 'requestChannel.sendResponse(new Response(request, new ResponseSend(request.connectionId, respHeader, response)))'.



