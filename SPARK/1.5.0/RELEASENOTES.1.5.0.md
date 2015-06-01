
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
#  1.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-7986](https://issues.apache.org/jira/browse/SPARK-7986) | *Major* | **Refactor scalastyle-config.xml to divide it into 3 sections**

This file should be divided into 3 sections:
 (1) rules that we enforce.
 (2) rules that we would like to enforce, but haven't cleaned up the codebase to turn on yet  (or we need to make the scalastyle rule more configurable).
 (3) rules that we don't want to enforce.


---

* [SPARK-7976](https://issues.apache.org/jira/browse/SPARK-7976) | *Major* | **Add style checker to disallow overriding finalize**

finalize() is called when the object is garbage collected, and garbage collection is not guaranteed to happen. It is therefore unwise to rely on code in finalize() method.


See http://www.scalastyle.org/rules-0.7.0.html#org\_scalastyle\_scalariform\_NoFinalizeChecker


---

* [SPARK-7957](https://issues.apache.org/jira/browse/SPARK-7957) | *Major* | **Preserve partitioning in randomSplit in RDD.scala**

The randomSplit method in RDD.scala used to preserve partitioning, but with a change I made, to make it re-usable with Spark SQL, it doesn't preserve partitioning anymore (forgot to add the argument)


---

* [SPARK-7954](https://issues.apache.org/jira/browse/SPARK-7954) | *Major* | **Implicitly create SparkContext in sparkRSQL.init**

Right now SparkR users need to first create a SparkContext with sparkR.init and a SQLContext with sparkRSQL.init -- As users will only use DataFrames in the first release we can save them one step by implicitly creating a SparkContext in sparkRSQL.init


---

* [SPARK-7952](https://issues.apache.org/jira/browse/SPARK-7952) | *Major* | **equality check between boolean type and numeric type is broken.**

Currently we only support literal numeric values.


---

* [SPARK-7945](https://issues.apache.org/jira/browse/SPARK-7945) | *Minor* | **Do trim to values of properties**

Now applications submited by org.apache.spark.launcher.Main read properties file without doing trim to values in it. 

If user left a space after a value(say spark.driver.extraClassPath) then it probably affect global functions(like some jar could not be included in the classpath), so we should do it like Utils.getPropertiesFromFile.


---

* [SPARK-7910](https://issues.apache.org/jira/browse/SPARK-7910) | *Minor* | **Expose partitioner information in JavaRDD**

It would be useful to expose the partitioner info in the Java & Python APIs for RDDs.


---

* [SPARK-7899](https://issues.apache.org/jira/browse/SPARK-7899) | *Major* | **PySpark sql/tests breaks pylint validation**

The pyspark.sql.types module is dynamically named {{types}} from {{\_types}} which messes up pylint validation

From [~justin.uang] below:

In commit 04e44b37, the migration to Python 3, {{pyspark/sql/types.py}} was renamed to {{pyspark/sql/\\_types.py}} and then some magic in {{pyspark/sql/\\_\\_init\\_\\_.py}} dynamically renamed the module back to {{types}}. I imagine that this is some naming conflict with Python 3, but what was the error that showed up?

The reason why I'm asking about this is because it's messing with pylint, since pylint cannot now statically find the module. I tried also importing the package so that {{\\_\\_init\\_\\_}} would be run in a init-hook, but that isn't what the discovery mechanism is using. I imagine it's probably just crawling the directory structure.

One way to work around this would be something akin to this (http://stackoverflow.com/questions/9602811/how-to-tell-pylint-to-ignore-certain-imports), where I would have to create a fake module, but I would probably be missing a ton of pylint features on users of that module, and it's pretty hacky.


---

* [SPARK-7890](https://issues.apache.org/jira/browse/SPARK-7890) | *Critical* | **Document that Spark 2.11 now supports Kafka**

The building-spark.html page needs to be updated. It's a simple fix, just remove the caveat about Kafka.


---

* [SPARK-7887](https://issues.apache.org/jira/browse/SPARK-7887) | *Major* | **Remove EvaluatedType from SQL Expression**

It's not a very useful type to use. We can just remove it to simplify expressions slightly.


---

* [SPARK-7878](https://issues.apache.org/jira/browse/SPARK-7878) | *Minor* | **Rename Stage.jobId to Stage.earliestJobId**

The jobId field in stage refers to the earliest job that uses that job; there is another field, jobIds, that lists all jobs for the stage. We should rename this field to avoid future bugs where people think jobId refers to the one and only job for the stage (e.g., SPARK-6880).


---

* [SPARK-7855](https://issues.apache.org/jira/browse/SPARK-7855) | *Major* | **Move hash-style shuffle code out of ExternalSorter and into own file**

ExternalSorter contains a bunch of code for handling the bypassMergeThreshold / hash-style shuffle path.  I think that it would significantly simplify the code to move this functionality out of ExternalSorter and into a separate class which shares a common interface (insertAll / writePartitionedFile()).  This is a stepping-stone towards eventually removing this bypass path (see SPARK-6026)


---

* [SPARK-7854](https://issues.apache.org/jira/browse/SPARK-7854) | *Minor* | **refine Kryo configuration limits test**

refine the code style, make it more abstraction.


---

* [SPARK-7846](https://issues.apache.org/jira/browse/SPARK-7846) | *Major* | **Use different way to pass spark.yarn.keytab and spark.yarn.principal in different modes**

--principal and --keytabl options are passed to client but when we started thrift server or spark-shell these two are also passed into the Main class (org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 and org.apache.spark.repl.Main).

In these two main class, arguments passed in will be processed with some 3rd libraries, which will lead to some error: "Invalid option: --principal" or "Unrecgnised option: --principal".

We should pass these command args in different forms, say system properties.


---

* [SPARK-7826](https://issues.apache.org/jira/browse/SPARK-7826) | *Major* | **Suppress extra calling getCacheLocs.**

There are too many extra call method {{getCacheLocs}} for {{DAGScheduler}}, which includes Akka communication.
To improve {{DAGScheduler}} performance, suppress extra calling the method.

In my application with over 1200 stages, the execution time became 3.8 min from 8.5 min with my patch.


---

* [SPARK-7811](https://issues.apache.org/jira/browse/SPARK-7811) | *Trivial* | **Fix typo on slf4j configuration on metrics.properties.template**

There are a minor typo on slf4jsink configuration at metrics.properties.template. 

slf4j is mispelled as sl4j on 2 of the configuration. 

Correcting the typo so users' custom settings will be loaded correctly.


---

* [SPARK-7795](https://issues.apache.org/jira/browse/SPARK-7795) | *Major* | **Speed up task serialization in standalone mode**

My experiments with scheduling very short tasks in standalone cluster mode indicated that a significant amount of time was being spent in scheduling the tasks (>500ms for 256 tasks). I found that most of the time was being spent in creating a new instance of serializer for each task. Changing this to just one serializer brought down the scheduling time to 8ms.


---

* [SPARK-7775](https://issues.apache.org/jira/browse/SPARK-7775) | *Critical* | **YARN AM tried to sleep negative milliseconds**

{code}
SLF4J: See http://www.slf4j.org/codes.html#multiple\_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
Exception in thread "Reporter" java.lang.IllegalArgumentException: timeout value is negative
  at java.lang.Thread.sleep(Native Method)
  at org.apache.spark.deploy.yarn.ApplicationMaster$$anon$1.run(ApplicationMaster.scala:356)
{code}

This kills the "reporter thread", which does some allocating too.


---

* [SPARK-7717](https://issues.apache.org/jira/browse/SPARK-7717) | *Minor* | **Spark Standalone Web UI showing incorrect total memory, workers and cores**

I launched a Spark master in standalone mode in one of my host and then launched 3 workers on three different hosts. The workers successfully connected to my master and the Web UI showed the correct details. Specifically, the Web UI correctly shows that the total memory and the total cores available for the cluster.

However on one of the worker, I did a "kill -9 <worker process id>" and restarted the worker again. This time though, the master's Web UI shows incorrect total memory and number of cores. The total memory is shown to be 4*n, where "n" is the memory in each worker. Also the total workers is shown as 4 and the total number of cores shown is incorrect, it shows 4*c, where "c" is the number of cores on each worker.


---

* [SPARK-7663](https://issues.apache.org/jira/browse/SPARK-7663) | *Minor* | **[MLLIB] feature.Word2Vec throws empty iterator error when the vocabulary size is zero**

mllib.feature.Word2Vec at line 442: https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/mllib/feature/Word2Vec.scala#L442 uses `.head` to get the vector size. But it would throw an empty iterator error if the `minCount` is large enough to remove all words in the dataset.

But due to this is not a common scenario, so maybe we can ignore it. If so, we can close the issue directly. If not, I can add some code to print more elegant error hits.


---

* [SPARK-7657](https://issues.apache.org/jira/browse/SPARK-7657) | *Minor* | **[YARN] Show driver link in Spark UI**

Currently, the driver link does not show up in the application UI. It is painful to debug apps running in cluster mode if the link does not show up. Client mode is fine since the links are local to the client machine.

In YARN mode, it is possible to just get this from the YARN container report.


---

* [SPARK-7637](https://issues.apache.org/jira/browse/SPARK-7637) | *Minor* | **StructType.merge slow with large nenormalised tables O(N2)**

StructType.merge does a linear scan through the left schema and for each element scans the right schema. This results in a O(N2) algorithm. 
I have found this to be very slow when dealing with large denormalised parquet files.
I would like to make a small change to this function to map the fields of both the left and right schemas resulting in O(N).
This has a sizable increase in performance for large denormalised schemas.

10000x10000 column merge 
2891ms Original  
32ms with mapped field approach.

This merge can be called many times depending upon the number of files that you need to merge the schemas for, compounding the performance.


---

* [SPARK-7635](https://issues.apache.org/jira/browse/SPARK-7635) | *Minor* | **SparkContextSchedulerCreationSuite tests may fail due to unrecognized UnsatisfiedLinkError message.**

When mesos is not available, these tests fail due to the difference in the UnsatisfiedLinkError message with IBM Java vs OpenJDK:

- mesos fine-grained *** FAILED ***
  "mesos (Not found in java.library.path)" did not contain "no mesos in" (SparkContextSchedulerCreationSuite.scala:162)
- mesos coarse-grained *** FAILED ***
  "mesos (Not found in java.library.path)" did not contain "no mesos in" (SparkContextSchedulerCreationSuite.scala:162)
- mesos with zookeeper *** FAILED ***
  "mesos (Not found in java.library.path)" did not contain "no mesos in" (SparkContextSchedulerCreationSuite.scala:162)

PR to be submitted shortly.


---

* [SPARK-7533](https://issues.apache.org/jira/browse/SPARK-7533) | *Major* | **Decrease spacing between AM-RM heartbeats.**

The current default of spark.yarn.scheduler.heartbeat.interval-ms is 5 seconds.  This is really long.  For reference, the MR equivalent is 1 second.

To avoid noise and unnecessary communication, we could have a fast rate for when we're waiting for executors and a slow rate for when we're just heartbeating.


---

* [SPARK-7524](https://issues.apache.org/jira/browse/SPARK-7524) | *Major* | **add configs for keytab and principal, move originals to internal**

As spark now supports long running service by updating tokens for namenode, but only accept parameters passed with "--k=v" format which is not very convinient.

I wanna add spark.* configs in properties file and system property


---

* [SPARK-7515](https://issues.apache.org/jira/browse/SPARK-7515) | *Minor* | **Update documentation for PySpark on YARN with cluster mode**

Now PySpark on YARN with cluster mode is supported so let's update doc.


---

* [SPARK-7389](https://issues.apache.org/jira/browse/SPARK-7389) | *Major* | **Tachyon integration improvement**

Two main changes:

1. Add two functions in ExternalBlockManager, which are putValues and getValues, because the implementation may not rely on the putBytes and getBytes

2. improve Tachyon integration.
Currently, when putting data into Tachyon, Spark first serialize all data in one partition into a ByteBuffer, and then write into Tachyon, this will use much memory and increase GC overhead

when getting data from Tachyon, getValues depends on getBytes, which also read all data into On heap byte arry, and result in much memory usage.
This PR changes the approach of the two functions, make them read / write data by stream to reduce memory usage.

In our testing, when data size is huge, this patch reduces about 30% GC time and 70% full GC time, and total execution time reduces about 10%


---

* [SPARK-7357](https://issues.apache.org/jira/browse/SPARK-7357) | *Minor* | **Improving HBaseTest example**

Minor improvement to HBaseTest example, when Hbase related configurations e.g: zookeeper quorum, zookeeper client port or zookeeper.znode.parent are not set to default (localhost:2181), connection to zookeeper might hang as shown in following stack

15/03/26 18:31:20 INFO zookeeper.ZooKeeper: Initiating client connection, connectString=xxx.xxx.xxx:2181 sessionTimeout=90000 watcher=hconnection-0x322a4437, quorum=xxx.xxx.xxx:2181, baseZNode=/hbase
15/03/26 18:31:21 INFO zookeeper.ClientCnxn: Opening socket connection to server 9.30.94.121:2181. Will not attempt to authenticate using SASL (unknown error)
15/03/26 18:31:21 INFO zookeeper.ClientCnxn: Socket connection established to xxx.xxx.xxx/9.30.94.121:2181, initiating session
15/03/26 18:31:21 INFO zookeeper.ClientCnxn: Session establishment complete on server xxx.xxx.xxx/9.30.94.121:2181, sessionid = 0x14c53cd311e004b, negotiated timeout = 40000
15/03/26 18:31:21 INFO client.ZooKeeperRegistry: ClusterId read in ZooKeeper is null

this is due to hbase-site.xml is not placed on spark class path.


---

* [SPARK-7063](https://issues.apache.org/jira/browse/SPARK-7063) | *Minor* | **Update lz4 for Java 7 to avoid: when lz4 compression is used, it causes core dump**

this issue is initially noticed by using IBM JDK, below please find the stack track of this issue, caused by violating the rule in critical section. 

#0 0x000000314340f3cb in raise () from /service/pmrs/45638/20/lib64/libpthread.so.0
#1 0x00007f795b0323be in j9dump\_create () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9prt27.so
#2 0x00007f795a88ba2a in doSystemDump () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9dmp27.so
#3 0x00007f795b0405d5 in j9sig\_protect () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9prt27.so
#4 0x00007f795a88a1fd in runDumpFunction () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9dmp27.so
#5 0x00007f795a88dbab in runDumpAgent () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9dmp27.so
#6 0x00007f795a8a1c49 in triggerDumpAgents () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9dmp27.so
#7 0x00007f795a4518fe in doTracePoint () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9trc27.so
#8 0x00007f795a45210e in j9Trace () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9trc27.so
#9 0x00007f79590e46e1 in MM\_StandardAccessBarrier::jniReleasePrimitiveArrayCritical(J9VMThread*, \_jarray*, void*, int) ()
from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9gc27.so
#10 0x00007f7938bc397c in Java\_net\_jpountz\_lz4\_LZ4JNI\_LZ4\_1compress\_1limitedOutput () from /service/pmrs/45638/20/tmp/liblz4-java7155003924599399415.so
#11 0x00007f795b707149 in VMprJavaSendNative () from /service/pmrs/45638/20/opt/ibm/biginsights/jdk/jre/lib/amd64/compressedrefs/libj9vm27.so
#12 0x0000000000000000 in ?? ()

this is an issue introduced by a bug in net.jpountz.lz4.lz4-1.2.0.jar, and fixed in 1.3.0 version.  Sun JDK /Open JDK doesn't complain this issue, but this issue will trigger assertion failure when IBM JDK is used. here is the link to the fix 
https://github.com/jpountz/lz4-java/commit/07229aa2f788229ab4f50379308297f428e3d2d2


---

* [SPARK-6246](https://issues.apache.org/jira/browse/SPARK-6246) | *Minor* | **spark-ec2 can't handle clusters with \> 100 nodes**

This appears to be a new restriction, perhaps resulting from our upgrade of boto. Maybe it's a new restriction from EC2. Not sure yet.

We didn't have this issue around the Spark 1.1.0 time frame from what I can remember. I'll track down where the issue is and when it started.

Attempting to launch a cluster with 100 slaves yields the following:

{code}
Spark AMI: ami-35b1885c
Launching instances...
Launched 100 slaves in us-east-1c, regid = r-9c408776
Launched master in us-east-1c, regid = r-92408778
Waiting for AWS to propagate instance metadata...
Waiting for cluster to enter 'ssh-ready' state.ERROR:boto:400 Bad Request
ERROR:boto:<?xml version="1.0" encoding="UTF-8"?>
<Response><Errors><Error><Code>InvalidRequest</Code><Message>101 exceeds the maximum number of instance IDs that can be specificied (100). Please specify fewer than 100 instance IDs.</Message></Error></Errors><RequestID>217fd6ff-9afa-4e91-86bc-ab16fcc442d8</RequestID></Response>
Traceback (most recent call last):
  File "./ec2/spark\_ec2.py", line 1338, in <module>
    main()
  File "./ec2/spark\_ec2.py", line 1330, in main
    real\_main()
  File "./ec2/spark\_ec2.py", line 1170, in real\_main
    cluster\_state='ssh-ready'
  File "./ec2/spark\_ec2.py", line 795, in wait\_for\_cluster\_state
    statuses = conn.get\_all\_instance\_status(instance\_ids=[i.id for i in cluster\_instances])
  File "/path/apache/spark/ec2/lib/boto-2.34.0/boto/ec2/connection.py", line 737, in get\_all\_instance\_status
    InstanceStatusSet, verb='POST')
  File "/path/apache/spark/ec2/lib/boto-2.34.0/boto/connection.py", line 1204, in get\_object
    raise self.ResponseError(response.status, response.reason, body)
boto.exception.EC2ResponseError: EC2ResponseError: 400 Bad Request
<?xml version="1.0" encoding="UTF-8"?>
<Response><Errors><Error><Code>InvalidRequest</Code><Message>101 exceeds the maximum number of instance IDs that can be specificied (100). Please specify fewer than 100 instance IDs.</Message></Error></Errors><RequestID>217fd6ff-9afa-4e91-86bc-ab16fcc442d8</RequestID></Response>
{code}

This problem seems to be with {{get\_all\_instance\_status()}}, though I am not sure if other methods are affected too.


---

* [SPARK-5090](https://issues.apache.org/jira/browse/SPARK-5090) | *Major* | **The improvement of python converter for hbase**

The python converter `HBaseResultToStringConverter` provided in the HBaseConverter.scala returns only the value of first column in the result. It limits the utility of this converter, because it returns only one value per row(perhaps there are several version in hbase) and moreover it loses the other information of record, such as column:cell, timestamp. 

Here we would like to propose an improvement about python converter which returns all the records in the results (in a single string) with more complete information. We would like also make some improvements for hbase\_inputformat.py


---

* [SPARK-3850](https://issues.apache.org/jira/browse/SPARK-3850) | *Minor* | **Scala style: disallow trailing spaces**

Background discussions:
* https://github.com/apache/spark/pull/2619
* http://apache-spark-developers-list.1001551.n3.nabble.com/Extending-Scala-style-checks-td8624.html

If you look at [the PR Cheng opened|https://github.com/apache/spark/pull/2619], you'll see a trailing white space seemed to mess up some SQL test. That's what spurred the creation of this issue.

[Ted Yu on the dev list|http://mail-archives.apache.org/mod\_mbox/spark-dev/201410.mbox/%3CCALte62y7a6WyBDUFDcGUwbf8WCpttViE+PAo4pZOR+\_-nB2UTw@mail.gmail.com%3E] suggested using this [{{WhitespaceEndOfLineChecker}}|http://www.scalastyle.org/rules-0.1.0.html].



