
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
# Apache Kafka  1.1.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-6982](https://issues.apache.org/jira/browse/KAFKA-6982) | *Major* | **java.lang.ArithmeticException: / by zero**

Producer keeps sending messages to Kafka, Kafka is down. 

Server.log shows: 

......

[2018-06-01 17:01:33,945] WARN [Log partition=\_\_consumer\_offsets-6, dir=D:\\data\\Kafka\\kafka-logs] Found a corrupted index file corresponding to log file D:\\data\\Kafka\\kafka-logs\_\_consumer\_offsets-6\\00000000000000000000.log due to Corrupt index found, index file (D:\\data\\Kafka\\kafka-logs\_\_consumer\_offsets-6\\00000000000000000000.index) has non-zero size but the last offset is 0 which is no greater than the base offset 0.}, recovering segment and rebuilding index files... (kafka.log.Log)
 [2018-06-01 17:01:33,945] WARN [Log partition=\_\_consumer\_offsets-6, dir=D:\\data\\Kafka\\kafka-logs] Found a corrupted index file corresponding to log file D:\\data\\Kafka\\kafka-logs\_\_consumer\_offsets-6\\00000000000000000000.log due to Corrupt index found, index file (D:\\data\\Kafka\\kafka-logs\_\_consumer\_offsets-6\\00000000000000000000.index) has non-zero size but the last offset is 0 which is no greater than the base offset 0.}, recovering segment and rebuilding index files... (kafka.log.Log)
 [2018-06-01 17:01:34,664] ERROR Error while accepting connection (kafka.network.Acceptor)
 java.lang.ArithmeticException: / by zero
 at kafka.network.Acceptor.run(SocketServer.scala:354)
 at java.lang.Thread.run(Thread.java:748)
 [2018-06-01 17:01:34,664] ERROR Error while accepting connection (kafka.network.Acceptor)
 java.lang.ArithmeticException: / by zero
 at kafka.network.Acceptor.run(SocketServer.scala:354)
 at java.lang.Thread.run(Thread.java:748)
 [2018-06-01 17:01:34,664] ERROR Error while accepting connection (kafka.network.Acceptor)
 java.lang.ArithmeticException: / by zero
 at kafka.network.Acceptor.run(SocketServer.scala:354)
 at java.lang.Thread.run(Thread.java:748)

......

 

This line of code in SocketServer.scala causing the error: 

                  {color:#333333} currentProcessor = currentProcessor{color:#d04437} % processors.size{color}{color}



