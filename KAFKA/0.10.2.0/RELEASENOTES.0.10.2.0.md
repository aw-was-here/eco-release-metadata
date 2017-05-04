
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
# Apache Kafka  0.10.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-4233](https://issues.apache.org/jira/browse/KAFKA-4233) | *Major* | **StateDirectory fails to create directory if any parent directory does not exist**

The method {{directoryForTask}} attempts to create a task directory but will silently fail to do so as it calls {{taskDir.mkdir();}} which will only create the leaf directory. 

Calling {{taskDir.mkdirs();}} (note the \'s\') will create the entire path if any parent directory is missing.

The constructor also attempts to create a bunch of directories using the former method and should be reviewed as part of any fix.


---

* [KAFKA-4360](https://issues.apache.org/jira/browse/KAFKA-4360) | *Major* | **Controller may deadLock when autoLeaderRebalance encounter zk expired**

when controller has checkAndTriggerPartitionRebalance task in autoRebalanceScheduler，and then zk expired at that time. It will
run into deadlock.

we can restore the scene as below，when zk session expired，zk thread will call handleNewSession which defined in SessionExpirationListener, and it will get controllerContext.controllerLock，and then it will autoRebalanceScheduler.shutdown()，which need complete all the task in the autoRebalanceScheduler，but that threadPoll also need get controllerContext.controllerLock，but it has already owned by zk callback thread，which will then run into deadlock.

because of that，it will cause two problems at least, first is the broker’s id is cannot register to the zookeeper，and it will be considered as dead by new controller，second this procedure can not be stop by kafka-server-stop.sh, because shutdown function
can not get controllerContext.controllerLock also, we cannot shutdown kafka except using kill -9.

In my attachment, I upload a jstack file, which was created when my kafka procedure cannot shutdown by kafka-server-stop.sh.

I have met this scenes for several times，I think this may be a bug that not solved in kafka.



