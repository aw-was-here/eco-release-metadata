
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
# Apache Spark  2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-20945](https://issues.apache.org/jira/browse/SPARK-20945) | *Minor* | **NoSuchElementException key not found in TaskSchedulerImpl**

We started spark ThriftServer, however when a job fails it caused the thriftserver also shutted down.
{quote}
2017-05-27,10:34:27,272 INFO org.apache.spark.scheduler.cluster.YarnScheduler: Cancelling stage 21
2017-05-27,10:34:27,274 ERROR org.apache.spark.scheduler.DAGSchedulerEventProcessLoop: DAGSchedulerEventProcessLoop failed; shutting down SparkContext
java.util.NoSuchElementException: key not found: 14100
at scala.collection.MapLike$class.default(MapLike.scala:228)
at scala.collection.AbstractMap.default(Map.scala:59)
at scala.collection.mutable.HashMap.apply(HashMap.scala:65)
at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$2$$anonfun$apply$3$$anonfun$apply$1.apply$mcVJ$sp(TaskSchedulerImpl.scala:226)
at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$2$$anonfun$apply$3$$anonfun$apply$1.apply(TaskSchedulerImpl.scala:225)
at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$2$$anonfun$apply$3$$anonfun$apply$1.apply(TaskSchedulerImpl.scala:225)
at scala.collection.mutable.HashSet.foreach(HashSet.scala:78)
at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$2$$anonfun$apply$3.apply(TaskSchedulerImpl.scala:225)
at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$2$$anonfun$apply$3.apply(TaskSchedulerImpl.scala:218)
at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:99)
at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:99)
at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:230)
at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:40)
at scala.collection.mutable.HashMap.foreach(HashMap.scala:99)
at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$2.apply(TaskSchedulerImpl.scala:218)
at org.apache.spark.scheduler.TaskSchedulerImpl$$anonfun$cancelTasks$2.apply(TaskSchedulerImpl.scala:217)
at scala.Option.foreach(Option.scala:257)
at org.apache.spark.scheduler.TaskSchedulerImpl.cancelTasks(TaskSchedulerImpl.scala:217)
at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages$1.apply$mcVI$sp(DAGScheduler.scala:1461)
at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages$1.apply(DAGScheduler.scala:1447)
at org.apache.spark.scheduler.DAGScheduler$$anonfun$org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages$1.apply(DAGScheduler.scala:1447)
at scala.collection.mutable.HashSet.foreach(HashSet.scala:78)
at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1447)
at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1423)
at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1422)
at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:48)
at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1422)
at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:802)
at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:802)
at scala.Option.foreach(Option.scala:257)
at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:802)
at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.doOnReceive(DAGScheduler.scala:1650)
at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1605)
at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1594)
at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
{quote}



