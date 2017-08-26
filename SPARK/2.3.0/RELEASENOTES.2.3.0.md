
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


---

* [SPARK-21339](https://issues.apache.org/jira/browse/SPARK-21339) | *Major* | **spark-shell --packages option does not add jars to classpath on windows**

I am unable to import symbols from dependencies specified with the packages option:

{code}
spark-shell --packages "com.datastax.spark:spark-cassandra-connector\_2.11:2.0.2" --conf spark.jars.ivy="c:/tmp/ivy2" --verbose
{code}

This results in:

{code}
scala\> import com.datastax.spark.connector.\_
\<console\>:23: error: object datastax is not a member of package com
       import com.datastax.spark.connector.\_
                  ^
{code}

NOTE: It is working as expected when running on Linux but not on Windows.

Complete verbose output:

{code}
\> spark-shell --packages "com.datastax.spark:spark-cassandra-connector\_2.11:2.0.2" --conf spark.jars.ivy="c:/tmp/ivy2" --
verbose
Using properties file: null
Parsed arguments:
  master                  local[\*]
  deployMode              null
  executorMemory          null
  executorCores           null
  totalExecutorCores      null
  propertiesFile          null
  driverMemory            null
  driverCores             null
  driverExtraClassPath    null
  driverExtraLibraryPath  null
  driverExtraJavaOptions  null
  supervise               false
  queue                   null
  numExecutors            null
  files                   null
  pyFiles                 null
  archives                null
  mainClass               org.apache.spark.repl.Main
  primaryResource         spark-shell
  name                    Spark shell
  childArgs               []
  jars                    null
  packages                com.datastax.spark:spark-cassandra-connector\_2.11:2.0.2
  packagesExclusions      null
  repositories            null
  verbose                 true

Spark properties used, including those specified through
 --conf and those from the properties file null:
  spark.jars.ivy -\> c:/tmp/ivy2


Ivy Default Cache set to: c:\\tmp\\ivy2\\cache
The jars for the packages stored in: c:\\tmp\\ivy2\\jars
:: loading settings :: url = jar:file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/jars/ivy-2.4.0.jar!/org/apache/ivy/core/settings/ivysettings.xml
com.datastax.spark#spark-cassandra-connector\_2.11 added as a dependency
:: resolving dependencies :: org.apache.spark#spark-submit-parent;1.0
        confs: [default]
        found com.datastax.spark#spark-cassandra-connector\_2.11;2.0.2 in local-m2-cache
        found com.twitter#jsr166e;1.1.0 in local-m2-cache
        found commons-beanutils#commons-beanutils;1.9.3 in central
        found commons-collections#commons-collections;3.2.2 in local-m2-cache
        found org.joda#joda-convert;1.2 in local-m2-cache
        found joda-time#joda-time;2.3 in central
        found io.netty#netty-all;4.0.33.Final in local-m2-cache
        found org.scala-lang#scala-reflect;2.11.8 in local-m2-cache
:: resolution report :: resolve 378ms :: artifacts dl 8ms
        :: modules in use:
        com.datastax.spark#spark-cassandra-connector\_2.11;2.0.2 from local-m2-cache in [default]
        com.twitter#jsr166e;1.1.0 from local-m2-cache in [default]
        commons-beanutils#commons-beanutils;1.9.3 from central in [default]
        commons-collections#commons-collections;3.2.2 from local-m2-cache in [default]
        io.netty#netty-all;4.0.33.Final from local-m2-cache in [default]
        joda-time#joda-time;2.3 from central in [default]
        org.joda#joda-convert;1.2 from local-m2-cache in [default]
        org.scala-lang#scala-reflect;2.11.8 from local-m2-cache in [default]
        ---------------------------------------------------------------------
        \|                  \|            modules            \|\|   artifacts   \|
        \|       conf       \| number\| search\|dwnlded\|evicted\|\| number\|dwnlded\|
        ---------------------------------------------------------------------
        \|      default     \|   8   \|   0   \|   0   \|   0   \|\|   8   \|   0   \|
        ---------------------------------------------------------------------
:: retrieving :: org.apache.spark#spark-submit-parent
        confs: [default]
        0 artifacts copied, 8 already retrieved (0kB/11ms)
Main class:
org.apache.spark.repl.Main
Arguments:

System properties:
spark.jars.ivy -\> c:/tmp/ivy2
SPARK\_SUBMIT -\> true
spark.app.name -\> Spark shell
spark.jars -\> file:/c:/tmp/ivy2/jars/com.datastax.spark\_spark-cassandra-connector\_2.11-2.0.2.jar,file:/c:/tmp/ivy2/jars/com.twitter\_jsr166e-1.1.0.jar,file:/c:/tmp/ivy2/jars/commons-beanutils\_commons-beanutils-1.9.3.jar,file:/c:/tmp/ivy2/jars/org.joda\_joda-convert-1.2.jar,file:/c:/tmp/ivy2/jars/joda-time\_joda-time-2.3.jar,file:/c:/tmp/ivy2/jars/io.netty\_netty-all-4.0.33.Final.jar,file:/c:/tmp/ivy2/jars/org.scala-lang\_scala-reflect-2.11.8.jar,file:/c:/tmp/ivy2/jars/commons-collections\_commons-collections-3.2.2.jar
spark.submit.deployMode -\> client
spark.master -\> local[\*]
Classpath elements:
c:\\tmp\\ivy2\\jars\\com.datastax.spark\_spark-cassandra-connector\_2.11-2.0.2.jar
c:\\tmp\\ivy2\\jars\\com.twitter\_jsr166e-1.1.0.jar
c:\\tmp\\ivy2\\jars\\commons-beanutils\_commons-beanutils-1.9.3.jar
c:\\tmp\\ivy2\\jars\\org.joda\_joda-convert-1.2.jar
c:\\tmp\\ivy2\\jars\\joda-time\_joda-time-2.3.jar
c:\\tmp\\ivy2\\jars\\io.netty\_netty-all-4.0.33.Final.jar
c:\\tmp\\ivy2\\jars\\org.scala-lang\_scala-reflect-2.11.8.jar
c:\\tmp\\ivy2\\jars\\commons-collections\_commons-collections-3.2.2.jar


Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
Setting default log level to "WARN".
To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
17/07/07 15:45:20 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
17/07/07 15:45:28 WARN General: Plugin (Bundle) "org.datanucleus" is already registered. Ensure you dont have multiple JAR versions of the same plugin in the classpath. The URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/bin/../jars/datanucleus-core-3.2.10.jar" is already registered, and you are trying to register an identical plugin located at URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/jars/datanucleus-core-3.2.10.jar."
17/07/07 15:45:28 WARN General: Plugin (Bundle) "org.datanucleus.api.jdo" is already registered. Ensure you dont have multiple JAR versions of the same plugin in the classpath. The URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/bin/../jars/datanucleus-api-jdo-3.2.6.jar" is already registered, and you are trying to register an identical plugin located at URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/jars/datanucleus-api-jdo-3.2.6.jar."
17/07/07 15:45:28 WARN General: Plugin (Bundle) "org.datanucleus.store.rdbms" is already registered. Ensure you dont have multiple JAR versions of the same plugin in the classpath. The URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/jars/datanucleus-rdbms-3.2.9.jar" is already registered, and you are trying to register an identical plugin located at URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/bin/../jars/datanucleus-rdbms-3.2.9.jar."
17/07/07 15:45:31 WARN ObjectStore: Failed to get database global\_temp, returning NoSuchObjectException
Spark context Web UI available at http://192.168.56.1:4040
Spark context available as 'sc' (master = local[\*], app id = local-1499435127578).
Spark session available as 'spark'.
Welcome to
      \_\_\_\_              \_\_
     / \_\_/\_\_  \_\_\_ \_\_\_\_\_/ /\_\_
    \_\\ \\/ \_ \\/ \_ \`/ \_\_/  '\_/
   /\_\_\_/ .\_\_/\\\_,\_/\_/ /\_/\\\_\\   version 2.1.1
      /\_/

Using Scala version 2.11.8 (Java HotSpot(TM) 64-Bit Server VM, Java 1.8.0\_121)
Type in expressions to have them evaluated.
Type :help for more information.

scala\>

scala\> import com.datastax.spark.connector.\_
\<console\>:23: error: object datastax is not a member of package com
       import com.datastax.spark.connector.\_
                  ^
{code}

The behaviour is different when we add the downloaded jar explicitly to the classpath with spark.driver.extraClassPath

{code}
spark-shell --conf spark.driver.extraClassPath="c:\\tmp\\ivy2\\jars\\com.datastax.spark\_spark-cassandra-connector\_2.11-2.0.2.jar" --verbose
{code}

Complete output:
{code}
spark-shell --conf spark.driver.extraClassPath="c:\\tmp\\ivy2\\jars\\com.data
stax.spark\_spark-cassandra-connector\_2.11-2.0.2.jar" --verbose
Using properties file: null
Parsed arguments:
  master                  local[\*]
  deployMode              null
  executorMemory          null
  executorCores           null
  totalExecutorCores      null
  propertiesFile          null
  driverMemory            null
  driverCores             null
  driverExtraClassPath    c:\\tmp\\ivy2\\jars\\com.datastax.spark\_spark-cassandra-connector\_2.11-2.0.2.jar
  driverExtraLibraryPath  null
  driverExtraJavaOptions  null
  supervise               false
  queue                   null
  numExecutors            null
  files                   null
  pyFiles                 null
  archives                null
  mainClass               org.apache.spark.repl.Main
  primaryResource         spark-shell
  name                    Spark shell
  childArgs               []
  jars                    null
  packages                null
  packagesExclusions      null
  repositories            null
  verbose                 true

Spark properties used, including those specified through
 --conf and those from the properties file null:
  spark.driver.extraClassPath -\> c:\\tmp\\ivy2\\jars\\com.datastax.spark\_spark-cassandra-connector\_2.11-2.0.2.jar


Main class:
org.apache.spark.repl.Main
Arguments:

System properties:
SPARK\_SUBMIT -\> true
spark.app.name -\> Spark shell
spark.jars -\>
spark.submit.deployMode -\> client
spark.master -\> local[\*]
spark.driver.extraClassPath -\> c:\\tmp\\ivy2\\jars\\com.datastax.spark\_spark-cassandra-connector\_2.11-2.0.2.jar
Classpath elements:



Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
Setting default log level to "WARN".
To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
17/07/07 16:05:16 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
17/07/07 16:05:18 WARN General: Plugin (Bundle) "org.datanucleus" is already registered. Ensure you dont have multiple JAR versions of the same plugin in the classpath. The URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/bin/../jars/datanucleus-core-3.2.10.jar" is already registered, and you are trying to register an identical plugin located at URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/jars/datanucleus-core-3.2.10.jar."
17/07/07 16:05:18 WARN General: Plugin (Bundle) "org.datanucleus.api.jdo" is already registered. Ensure you dont have multiple JAR versions of the same plugin in the classpath. The URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/bin/../jars/datanucleus-api-jdo-3.2.6.jar" is already registered, and you are trying to register an identical plugin located at URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/jars/datanucleus-api-jdo-3.2.6.jar."
17/07/07 16:05:18 WARN General: Plugin (Bundle) "org.datanucleus.store.rdbms" is already registered. Ensure you dont have multiple JAR versions of the same plugin in the classpath. The URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/jars/datanucleus-rdbms-3.2.9.jar" is already registered, and you are trying to register an identical plugin located at URL "file:/C:/hadoop/spark-2.1.1-bin-hadoop2.7/bin/../jars/datanucleus-rdbms-3.2.9.jar."
17/07/07 16:05:21 WARN ObjectStore: Failed to get database global\_temp, returning NoSuchObjectException
Spark context Web UI available at http://192.168.56.1:4040
Spark context available as 'sc' (master = local[\*], app id = local-1499436317287).
Spark session available as 'spark'.
Welcome to
      \_\_\_\_              \_\_
     / \_\_/\_\_  \_\_\_ \_\_\_\_\_/ /\_\_
    \_\\ \\/ \_ \\/ \_ \`/ \_\_/  '\_/
   /\_\_\_/ .\_\_/\\\_,\_/\_/ /\_/\\\_\\   version 2.1.1
      /\_/

Using Scala version 2.11.8 (Java HotSpot(TM) 64-Bit Server VM, Java 1.8.0\_121)
Type in expressions to have them evaluated.
Type :help for more information.

scala\> import com.datastax.spark.connector.\_
import com.datastax.spark.connector.\_

{code}



