
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

* [SPARK-8154](https://issues.apache.org/jira/browse/SPARK-8154) | *Major* | **Remove Term/Code type aliases in code generation**

From my perspective as a code reviewer, I find them more confusing than using String directly.


---

* [SPARK-8149](https://issues.apache.org/jira/browse/SPARK-8149) | *Major* | **Break ExpressionEvaluationSuite down to multiple files**

We need to substantially improve unit test coverage for expressions, and as a result it is not possible to have all expression tests in a single file.


---

* [SPARK-8146](https://issues.apache.org/jira/browse/SPARK-8146) | *Major* | **DataFrame Python API: Alias replace in DataFrameNaFunctions**

We missed aliasing it in na.replace.


---

* [SPARK-8141](https://issues.apache.org/jira/browse/SPARK-8141) | *Major* | **Precompute datatypes for partition columns and reuse it**

spec.partitionColumns.map(\_.dataType) re-runs for each Partition in HadoopFsRelation. When there are many partitions, it costs too much unnecessary time.


---

* [SPARK-8140](https://issues.apache.org/jira/browse/SPARK-8140) | *Trivial* | **Remove empty model check in StreamingLinearAlgorithm**

1. Prevent creating a map of data to find numFeatures
2. If model is empty, then initialize with a zero vector of numFeatures


---

* [SPARK-8136](https://issues.apache.org/jira/browse/SPARK-8136) | *Major* | **AM link download test can be flaky**

Sometimes YARN does not replace the link (or replaces it too soon) causing the YarnClusterSuite to fail. On a real cluster, the NM automatically redirects once the app is complete. So we should make the test less strict and have it only check the link's format rather than try to download the logs.


---

* [SPARK-8118](https://issues.apache.org/jira/browse/SPARK-8118) | *Minor* | **Turn off noisy log output produced by Parquet 1.7.0**

Parquet 1.7.0 renames package name to "org.apache.parquet", need to adjust {{ParquetRelation.enableLogForwarding}} accordingly to avoid noisy log output.


---

* [SPARK-8117](https://issues.apache.org/jira/browse/SPARK-8117) | *Major* | **Push codegen into Expression**

Push the codegen implementation of expression into Expression itself, make it easy to manage and extend.


---

* [SPARK-8106](https://issues.apache.org/jira/browse/SPARK-8106) | *Major* | **Set derby.system.durability=test in order to speed up Hive compatibility tests**

Derby has a configuration property named {{derby.system.durability}} that disables I/O synchronization calls for many writes.  This sacrifices durability but can result in large performance gains, which is appropriate for tests.

We should enable this in our test system properties in order to speed up the Hive compatibility tests.  I saw 2-3x speedups locally with this change.


---

* [SPARK-8099](https://issues.apache.org/jira/browse/SPARK-8099) | *Major* | **In yarn-cluster mode, "--executor-cores" can't be setted into SparkConf**

While testing dynamic executor allocation function, I set the executor cores with *--executor-cores 4* in spark-submit command. But in *ExecutorAllocationManager*, the *private val tasksPerExecutor =conf.getInt("spark.executor.cores", 1) / conf.getInt("spark.task.cpus", 1)* is still to be 1.


---

* [SPARK-8098](https://issues.apache.org/jira/browse/SPARK-8098) | *Minor* | **Show correct length of bytes on log page**

The log page should only show desired length of bytes. Currently it shows bytes from the startIndex to the end of the file. The "Next" button on the page is always disabled.


---

* [SPARK-8088](https://issues.apache.org/jira/browse/SPARK-8088) | *Major* | **ExecutionAllocationManager spamming INFO logs about "Lowering target number of executors"**

I am running a {{spark-shell}} built at 1.4.0-rc4, with:

{code}
  --conf spark.dynamicAllocation.enabled=true \
  --conf spark.dynamicAllocation.minExecutors=5 \
  --conf spark.dynamicAllocation.maxExecutors=300 \
  --conf spark.dynamicAllocation.schedulerBacklogTimeout=3 \
  --conf spark.dynamicAllocation.executorIdleTimeout=600 \
{code}

I can't really type any commands because I am getting 10 of these per second:

{code}
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
15/06/03 20:49:09 INFO spark.ExecutorAllocationManager: Lowering target number of executors to 5 because not all requests are actually needed (previously 5)
{code}

It should not print anything if it is not in fact lowering the number of executors / is already at the minimum, right?


---

* [SPARK-8085](https://issues.apache.org/jira/browse/SPARK-8085) | *Major* | **Pass in user-specified schema in read.df**

This will help cases where we use the CSV reader and want each column to be of a specific type


---

* [SPARK-8084](https://issues.apache.org/jira/browse/SPARK-8084) | *Major* | **SparkR install script should fail with error if any packages required are not found**

This is to avoid cases where the script fails but the build is green

https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Package/73/console


---

* [SPARK-8083](https://issues.apache.org/jira/browse/SPARK-8083) | *Major* | **Fix return to drivers link in Mesos driver page**

The current path is set to "/" but this doesn't work with a proxy. We need to prepend the proxy base uri if it's set.


---

* [SPARK-8079](https://issues.apache.org/jira/browse/SPARK-8079) | *Major* | **NPE when HadoopFsRelation.prepareForWriteJob throws exception**

Take {{ParquetRelation2}} as an example, the following Spark shell code may cause an unexpected NPE:
{code}
import sqlContext.\_
import sqlContext.implicits.\_

range(1, 3).select($"id" as "a b").write.format("parquet").save("file:///tmp/foo")
{code}
Exceptions thrown:
{noformat}
import sqlContext.\_
import sqlContext.implicits.\_

range(1, 3).select($"id" as "a b").write.format("parquet").save("file:///tmp/foo")

java.lang.RuntimeException: Attribute name "a b" contains invalid character(s) among " ,;{}()   =". Please use alias to rename it.
        at scala.sys.package$.error(package.scala:27)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$checkSpecialCharacters$2.apply(ParquetTypes.scala:414)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$checkSpecialCharacters$2.apply(ParquetTypes.scala:412)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$.checkSpecialCharacters(ParquetTypes.scala:412)
        at org.apache.spark.sql.parquet.ParquetTypesConverter$.convertToString(ParquetTypes.scala:423)
        at org.apache.spark.sql.parquet.RowWriteSupport$.setSchema(ParquetTableSupport.scala:383)
        at org.apache.spark.sql.parquet.ParquetRelation2.prepareJobForWrite(newParquet.scala:230)
        ...
java.lang.NullPointerException
        at org.apache.spark.sql.sources.BaseWriterContainer.abortJob(commands.scala:372)
        at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.insert(commands.scala:137)
        at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.run(commands.scala:114)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:57)
        at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:57)
        ...
{noformat}
Note that the first {{RuntimeException}} is expected, while the following NPE is not.

The reason of the NPE is that, {{BaseWriterContainer.driverSideSetup()}} calls {{relation.prepareForWriteJob()}} AND initializes the {{OutputCommitter}} used for the subsequent write job. However, if the former throws an exception, the latter is not properly initialized, thus an NPE is thrown when aborting the job because the {{OutputCommitter}} is still null.


---

* [SPARK-8074](https://issues.apache.org/jira/browse/SPARK-8074) | *Major* | **Parquet should throw AnalysisException during setup for data type/name related failures**

Change sys.error/RuntimeException to AnalysisException.


---

* [SPARK-8063](https://issues.apache.org/jira/browse/SPARK-8063) | *Major* | **Spark master URL conflict between MASTER env variable and --master command line option**

Currently, Spark supports several ways to specify the Spark master URL, like --master option for spark-submit, spark.master configuration option, MASTER env variable. They have different precedences, for example, --master overrides MASTER if both are specified.

However, for SparkR shell, it always use the master URL specified by MASTER, not honoring --master.


---

* [SPARK-8059](https://issues.apache.org/jira/browse/SPARK-8059) | *Minor* | **Reduce latency between executor requests and RM heartbeat**

This is a follow up to SPARK-7533. On top of the changes done as part of that issue, we could reduce allocation latency by waking up the allocation thread when the driver send new requests.


---

* [SPARK-8054](https://issues.apache.org/jira/browse/SPARK-8054) | *Major* | **Java compatibility fixes for MLlib 1.4**

See [SPARK-7529]


---

* [SPARK-8053](https://issues.apache.org/jira/browse/SPARK-8053) | *Minor* | **ElementwiseProduct scalingVec param name should match between ml,mllib**

spark.mllib's ElementwiseProduct uses "scalingVector"

spark.ml's ElementwiseProduct uses "scalingVec"

We should make them match.


---

* [SPARK-8051](https://issues.apache.org/jira/browse/SPARK-8051) | *Major* | **StringIndexerModel (and other models) shouldn't complain if the input column is missing.**

If a transformer is not used during transformation, it should keep silent if the input column is missing.


---

* [SPARK-8043](https://issues.apache.org/jira/browse/SPARK-8043) | *Minor* | **update NaiveBayes and SVM examples in doc**

I found some issues during testing the save/load examples in markdown Documents, as a part of 1.4 QA plan


---

* [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | *Major* | **Make NumPy version checking in mllib/\_\_init\_\_.py**

The current checking does version `1.x' is less than `1.4' this will fail if x has greater than 1 digit, since x > 4, however `1.x` < `1.4`


---

* [SPARK-8004](https://issues.apache.org/jira/browse/SPARK-8004) | *Major* | **Spark does not enclose column names when fetchting from jdbc sources**

Spark failes to load tables that have a keyword as column names

Sample error:
{code}

org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 157.0 failed 1 times, most recent failure: Lost task 0.0 in stage 157.0 (TID 4322, localhost): com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key,value FROM [XXXXXX]'
{code}

A correct query would have been
{code}
SELECT `key`.`value` FROM ....
{code}


---

* [SPARK-8001](https://issues.apache.org/jira/browse/SPARK-8001) | *Minor* | **Make AsynchronousListenerBus.waitUntilEmpty throw TimeoutException if timeout**

TimeoutException is a more explicit failure. In addition, the caller may forget to call {{assert}} to check the return value of {{AsynchronousListenerBus.waitUntilEmpty}}.


---

* [SPARK-7991](https://issues.apache.org/jira/browse/SPARK-7991) | *Major* | **Python DataFrame: support passing a list into describe**

DataFrame.describe in Python takes a vararg, i.e. it can be invoked this way:
{code}
df.describe('col1', 'col2', 'col3')
{code}

Most of our DataFrame functions accept a list in addition to varargs. describe should do the same, i.e. it should also accept a Python list:
{code}
df.describe(['col1', 'col2', 'col3'])
{code}


---

* [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | *Major* | **Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite**

The flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite will fail if there are not enough executors up before running the jobs.


---

* [SPARK-7986](https://issues.apache.org/jira/browse/SPARK-7986) | *Major* | **Refactor scalastyle-config.xml to divide it into 3 sections**

This file should be divided into 3 sections:
 (1) rules that we enforce.
 (2) rules that we would like to enforce, but haven't cleaned up the codebase to turn on yet  (or we need to make the scalastyle rule more configurable).
 (3) rules that we don't want to enforce.


---

* [SPARK-7983](https://issues.apache.org/jira/browse/SPARK-7983) | *Minor* | **Add require for one-based indices in loadLibSVMFile**

Add require for one-based indices in loadLibSVMFile

Customers frequently use zero-based indices in their LIBSVM files. No warnings or errors from Spark will be reported during their computation afterwards, and usually it will lead to wired result for many algorithms (like GBDT).

add a quick check.


---

* [SPARK-7980](https://issues.apache.org/jira/browse/SPARK-7980) | *Major* | **Support SQLContext.range(end)**

SQLContext.range should also allow only specifying the end position, similar to Python's own range.


---

* [SPARK-7969](https://issues.apache.org/jira/browse/SPARK-7969) | *Minor* | **Drop method on Dataframes should handle Column**

For now the drop method available on Dataframe since Spark 1.4.0 only accepts a column name (as a string), it should also accept a Column as input.


---

* [SPARK-7956](https://issues.apache.org/jira/browse/SPARK-7956) | *Major* | **Use Janino to compile SQL expression**

The overhead of current implementation of codegen is to high (50ms - 500ms), which blocks us from turning it on by default.

We should try to investigate using Janino to compile the SQL expressions into JVM bytecode, which should be much faster to compile (about 10ms).


---

* [SPARK-7952](https://issues.apache.org/jira/browse/SPARK-7952) | *Major* | **equality check between boolean type and numeric type is broken.**

Currently we only support literal numeric values.


---

* [SPARK-7945](https://issues.apache.org/jira/browse/SPARK-7945) | *Minor* | **Do trim to values of properties**

Now applications submited by org.apache.spark.launcher.Main read properties file without doing trim to values in it. 

If user left a space after a value(say spark.driver.extraClassPath) then it probably affect global functions(like some jar could not be included in the classpath), so we should do it like Utils.getPropertiesFromFile.


---

* [SPARK-7939](https://issues.apache.org/jira/browse/SPARK-7939) | *Major* | **Make URL partition recognition return String by default for all partition column types and values**

Imagine the following HDFS paths:

/data/split=00
/data/split=01
...
/data/split=FF

If I have less than or equal to 10 partitions (00, 01, ... 09), currently partition recognition will treat column 'split' as integer column. 

If I have more than 10 partitions, column 'split' will be recognized as String...

This is very confusing. *So I'm suggesting to treat partition columns as String by default*, and allow user to specify types if needed.

Another example is date:
/data/date=2015-04-01 => 'date' is String
/data/date=20150401 => 'date' is Int

Jianshi


---

* [SPARK-7910](https://issues.apache.org/jira/browse/SPARK-7910) | *Minor* | **Expose partitioner information in JavaRDD**

It would be useful to expose the partitioner info in the Java & Python APIs for RDDs.


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

* [SPARK-7743](https://issues.apache.org/jira/browse/SPARK-7743) | *Major* | **Upgrade Parquet to 1.7**

There are many outstanding issues with the parquet format that have been resolved between the version depended on by spark (1.6.0rc3 as of spark 1.3.1) and the most recent parquet release (1.6.0).

Some of these are things include not supporting schema migration when using parquet with avro, not supporting summary metadata in the parquet footers causing null pointer exceptions reading, and many others.

See https://github.com/apache/parquet-mr/blob/master/CHANGES.md#version-160 for the full list of fixes.


---

* [SPARK-7733](https://issues.apache.org/jira/browse/SPARK-7733) | *Minor* | **Update build, code to use Java 7 for 1.5.0+**

Following the announced intention to drop Java 6 support in Spark 1.5, we should go ahead and switch master to Java 7 for Spark 1.5. We can also then remove a few checks and comments that were specific to supporting Java 6.

I think we might also usefully use the try-with-resources feature to improve / tighten up resource management in Java code, and look at replacing some uses of Guava functions with new JDK equivalents.

It's probably not quite worth replacing {{List<String> foo = new ArrayList<String>()}} with {{List<String> foo = new ArrayList<>()}} everywhere but that simplification might be useful to apply over time as the Java code is otherwise changed.


---

* [SPARK-7717](https://issues.apache.org/jira/browse/SPARK-7717) | *Minor* | **Spark Standalone Web UI showing incorrect total memory, workers and cores**

I launched a Spark master in standalone mode in one of my host and then launched 3 workers on three different hosts. The workers successfully connected to my master and the Web UI showed the correct details. Specifically, the Web UI correctly shows that the total memory and the total cores available for the cluster.

However on one of the worker, I did a "kill -9 <worker process id>" and restarted the worker again. This time though, the master's Web UI shows incorrect total memory and number of cores. The total memory is shown to be 4*n, where "n" is the memory in each worker. Also the total workers is shown as 4 and the total number of cores shown is incorrect, it shows 4*c, where "c" is the number of cores on each worker.


---

* [SPARK-7705](https://issues.apache.org/jira/browse/SPARK-7705) | *Minor* | **Cleanup of .sparkStaging directory fails if application is killed**

When a streaming application is killed while running on YARN the .sparkStaging directory is not cleaned up. Setting spark.yarn.preserve.staging.files=false does not help and still leaves the files around.

The changes in SPARK-7503 do not catch this case since there is no exception in the shutdown. When the application gets killed the AM gets told to shutdown and the shutdown hook is run but the clean up is not triggered.


---

* [SPARK-7699](https://issues.apache.org/jira/browse/SPARK-7699) | *Major* | **Dynamic allocation: initial executors may be canceled before first job**

spark.dynamicAllocation.minExecutors 2
spark.dynamicAllocation.initialExecutors  3
spark.dynamicAllocation.maxExecutors 4

Just run the spark-shell with above configurations, the initial executor number is 2.


---

* [SPARK-7691](https://issues.apache.org/jira/browse/SPARK-7691) | *Major* | **Use type-specific row accessor functions in CatalystTypeConverters' toScala functions**

CatalystTypeConverters's Catalyst row to Scala row converters access columns' values via the generic {{Row.get()}} call rather than using type-specific accessor methods.  If we refactor the internal converter interfaces slightly, we can pass the row and column number into the converter function and allow it to do its own type-specific field extraction, similar to what we do in UnsafeRowConverter.  This is a blocker for being able to unit test new operators that I'm developing as part of Project Tungsten, since those operators may output {{UnsafeRow}} instances which don't support the generic {{get()}}.


---

* [SPARK-7663](https://issues.apache.org/jira/browse/SPARK-7663) | *Minor* | **[MLLIB] feature.Word2Vec throws empty iterator error when the vocabulary size is zero**

mllib.feature.Word2Vec at line 442: https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/mllib/feature/Word2Vec.scala#L442 uses `.head` to get the vector size. But it would throw an empty iterator error if the `minCount` is large enough to remove all words in the dataset.

But due to this is not a common scenario, so maybe we can ignore it. If so, we can close the issue directly. If not, I can add some code to print more elegant error hits.


---

* [SPARK-7657](https://issues.apache.org/jira/browse/SPARK-7657) | *Minor* | **[YARN] Show driver link in Spark UI**

Currently, the driver link does not show up in the application UI. It is painful to debug apps running in cluster mode if the link does not show up. Client mode is fine since the links are local to the client machine.

In YARN mode, it is possible to just get this from the YARN container report.


---

* [SPARK-7639](https://issues.apache.org/jira/browse/SPARK-7639) | *Major* | **Add Python API for Statistics.kernelDensity**

Add Python API for org.apache.spark.mllib.stat.Statistics.kernelDensity


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

* [SPARK-7562](https://issues.apache.org/jira/browse/SPARK-7562) | *Major* | **Improve error reporting for expression data type mismatch**

There is currently no error reporting for expression data types in analysis (we rely on "resolved" for that, which doesn't provide great error messages for types). It would be great to have that in checkAnalysis.

Ideally, it should be the responsibility of each Expression itself to specify the types it requires, and report errors that way. We would need to define a simple interface for that so each Expression can implement. The default implementation can just use the information provided by ExpectsInputTypes.expectedChildTypes. 

cc [~marmbrus] what we discussed offline today.


---

* [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | *Major* | **Log test name when starting and finishing each test**

Right now it's really tough to interpret testing output because logs for different tests are interspersed in the same unit-tests.log file. This makes it particularly hard to diagnose flaky tests. This would be much easier if we logged the test name before and after every test (e.g. "Starting test XX", "Finished test XX"). Then you could get right to the logs.

I think one way to do this might be to create a custom test fixture that logs the test class name and then mix that into every test suite /cc [~joshrosen] for his superb knowledge of Scalatest.


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

* [SPARK-7440](https://issues.apache.org/jira/browse/SPARK-7440) | *Major* | **Remove physical Distinct operator in favor of Aggregate**

We can just rewrite distinct using groupby (i.e. aggregate operator).


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

* [SPARK-7387](https://issues.apache.org/jira/browse/SPARK-7387) | *Minor* | **CrossValidator example code in Python**

We should add example code for CrossValidator after SPARK-6940 is merged. This should be similar to the CrossValidator example in Scala/Java.


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

* [SPARK-7161](https://issues.apache.org/jira/browse/SPARK-7161) | *Minor* | **Provide REST api to download event logs from History Server**

The idea is to tar up the logs and return the tar.gz file using a REST api. This can be used for debugging even after the app is done.

I am planning to take a look at this.


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

* [SPARK-7042](https://issues.apache.org/jira/browse/SPARK-7042) | *Minor* | **Spark version of akka-actor\_2.11 is not compatible with the official akka-actor\_2.11 2.3.x**

When connecting to a remote Spark cluster (that runs Spark branch-1.3 built with Scala 2.11) from an application that uses akka 2.3.9 I get the following error:

{noformat}
2015-04-22 09:01:38,924 - [WARN] - [akka.remote.ReliableDeliverySupervisor] [sparkDriver-akka.actor.default-dispatcher-5] -
Association with remote system [akka.tcp://sparkExecutor@server:59007] has failed, address is now gated for [5000] ms.
Reason is: [akka.actor.Identify; local class incompatible: stream classdesc serialVersionUID = -213377755528332889, local class serialVersionUID = 1].
{noformat}

It looks like akka-actor\_2.11 2.3.4-spark that is used by Spark has been built using Scala compiler 2.11.0 that ignores SerialVersionUID annotations (see https://issues.scala-lang.org/browse/SI-8549).

The following steps can resolve the issue:
- re-build the custom akka library that is used by Spark with the more recent version of Scala compiler (e.g. 2.11.6) 
- deploy a new version (e.g. 2.3.4.1-spark) to a maven repo
- update version of akka used by spark (master and 1.3 branch)

I would also suggest to upgrade to the latest version of akka 2.3.9 (or 2.3.10 that should be released soon).


---

* [SPARK-6973](https://issues.apache.org/jira/browse/SPARK-6973) | *Minor* | **The total stages on the allJobsPage is wrong**

The job has two stages,  map and collect stage. Both two retried two times. The first and second time of map stage is successful, and the third time skipped. Of collect stage, the first and second time is failed, and the third time is successful.
On the allJobs page, the number of total stages is allStages-skippedStages. Mostly it's wright, but here I think total stages should be 2.

The example:
Stage 0: Map Stage
Stage 1: Collect Stage

Stage:     Stage 0 -> Stage 1 -> Stage 0(retry 1) -> Stage 1(retry 1) -> Stage 0(retry 2) -> Stage 1(retry 2)
Status：  Success ->     Fail     ->        Success       ->             Fail      ->                Skipped     ->             Success

Though one of Stage 0 is skipped, actually it's executed. So I think it should be included in the total number.


---

* [SPARK-6964](https://issues.apache.org/jira/browse/SPARK-6964) | *Critical* | **Support Cancellation in the Thrift Server**

There is already a hook in {{ExecuteStatementOperation}}, we just need to connect it to the job group cancellation support we already have and make sure the various drivers support it.


---

* [SPARK-6444](https://issues.apache.org/jira/browse/SPARK-6444) | *Major* | **SQL functions (either built-in or UDF) should check for data types of their arguments**

SQL functions should remain unresolved if their arguments don't satisfy their argument type requirements. Take {{Sum}} as an example, the data type of {{Sum(Literal("1"))}} is {{StringType}}, and now it's considered resolved, which may cause problems.

Here is a simplified version of a problematic query reported by [~cenyuhai]. Spark shell session for reproducing this issue:
{code}
import sqlContext.\_

sql("""
    CREATE TABLE IF NOT EXISTS ut (
        c1 STRING,
        c2 STRING
    )
    """)

sql("""
    SELECT SUM(c3) FROM (
        SELECT SUM(c1) AS c3, 0 AS c4 FROM ut     -- (1)
        UNION ALL
        SELECT 0 AS c3, COUNT(c2) AS c4 FROM ut   -- (2)
    ) t
    """).queryExecution.optimizedPlan
{code}
Exception thrown:
{noformat}
java.util.NoSuchElementException: key not found: c3#10
        at scala.collection.MapLike$class.default(MapLike.scala:228)
        at org.apache.spark.sql.catalyst.expressions.AttributeMap.default(AttributeMap.scala:29)
        at scala.collection.MapLike$class.apply(MapLike.scala:141)
        at org.apache.spark.sql.catalyst.expressions.AttributeMap.apply(AttributeMap.scala:29)
        at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$1.applyOrElse(Optimizer.scala:80)
        at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$1.applyOrElse(Optimizer.scala:79)
        at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$3.apply(TreeNode.scala:187)
        at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$3.apply(TreeNode.scala:187)
        at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:50)
        at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:186)
        at org.apache.spark.sql.catalyst.trees.TreeNode.transform(TreeNode.scala:177)
        at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$.pushToRight(Optimizer.scala:79)
        at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$apply$1$$anonfun$applyOrElse$6.apply(Optimizer.scala:101)
        at org.apache.spark.sql.catalyst.optimizer.UnionPushdown$$anonfun$apply$1$$anonfun$applyOrElse$6.apply(Optimizer.scala:101)
        ...
{noformat}
The analyzed plan of the query is:
{noformat}
== Analyzed Logical Plan ==
!Aggregate [], [SUM(CAST(c3#153, DoubleType)) AS \_c0#157]                   (c)
 Union
  Project [CAST(c3#153, StringType) AS c3#164,c4#163L]                      (d)
   Project [c3#153,CAST(c4#154, LongType) AS c4#163L]
    Aggregate [], [SUM(CAST(c1#158, DoubleType)) AS c3#153,0 AS c4#154]     (b)
     MetastoreRelation default, ut, None
  Project [CAST(c3#155, StringType) AS c3#162,c4#156L]                      (a)
   Aggregate [], [0 AS c3#155,COUNT(c2#161) AS c4#156L]
    MetastoreRelation default, ut, None
{noformat}
This case is very interesting. It involves 2 analysis rules, {{WidenTypes}} and {{PromoteStrings}}, and 1 optimizer rule, {{UnionPushdown}}. To see the details, we can turn on TRACE level log and check detailed rule execution process. The TL;DR is:
# Since {{c1}} is STRING, {{SUM(c1)}} is also STRING (which is the root cause of the whole issue).
# {{c3}} in {{(1)}} is STRING, while the one in {{(2)}} is INT. Thus {{WidenTypes}} casts the latter to STRING to ensure both sides of the UNION have the same schema.  See {{(a)}}.
# {{PromoteStrings}} casts {{c1}} in {{SUM(c1)}} to DOUBLE, which consequently changes data type of {{SUM(c1)}} and {{c3}} to DOUBLE.  See {{(b)}}.
# {{c3}} in the top level {{Aggregate}} is resolved as DOUBLE (c)
# Since schemas of the two sides of the UNION are different again, {{WidenTypes}} casts {{SUM(c1) AS c3}} to STRING.  See {{(d)}}.
# Int the top level {{Aggregate}}, {{c3#153}} becomes a missing input attribute because it is hidden by {{(d)}} now.
# In the optimizing phase, {{UnionPushdown}} throws because the top level {{Aggregate}} has missing input attribute.


---

* [SPARK-6324](https://issues.apache.org/jira/browse/SPARK-6324) | *Minor* | **Clean up usage code in command-line scripts**

With SPARK-4924, most of the logic to launch Spark classes is in a new Java library. Pretty much the only thing left in scripts are the usage strings for each command; that uses some rather ugly and hacky code to handle, since it requires the library communicating back with the scripts that they should print a usage string instead of executing a command.

The scripts have to process that special command (differently on bash and Windows), and do filtering of the actual output of usage strings to account for different commands.

Instead, the library itself should handle all this by executing the classes with a "help" argument; and the classes should be able to handle that argument to do the right thing. So this would require both changes in the launcher library, and in all the main entry points to make sure they properly respond to the "help" by printing the correct help message.

This would make things a lot cleaner and a lot easier to maintain.


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

* [SPARK-6164](https://issues.apache.org/jira/browse/SPARK-6164) | *Minor* | **CrossValidatorModel should keep stats from fitting**

CrossValidator computes stats for each (model, fold) pair, but they are thrown out by the created model.  CrossValidatorModel should keep this info and expose it to users.


---

* [SPARK-5451](https://issues.apache.org/jira/browse/SPARK-5451) | *Critical* | **And predicates are not properly pushed down**

This issue is actually caused by PARQUET-173.

The following {{spark-shell}} session can be used to reproduce this bug:
{code}
import org.apache.spark.sql.SQLContext

val sqlContext = new SQLContext(sc)
import sc.\_
import sqlContext.\_

case class KeyValue(key: Int, value: String)

parallelize(1 to 1024 * 1024 * 20).
  flatMap(i => Seq.fill(10)(KeyValue(i, i.toString))).
  saveAsParquetFile("large.parquet")

parquetFile("large.parquet").registerTempTable("large")

hadoopConfiguration.set("parquet.task.side.metadata", "false")
sql("SET spark.sql.parquet.filterPushdown=true")

sql("SELECT value FROM large WHERE 1024 < value AND value < 2048").collect()
{code}
From the log we can find:
{code}
There were no row groups that could be dropped due to filter predicates
{code}


---

* [SPARK-5090](https://issues.apache.org/jira/browse/SPARK-5090) | *Major* | **The improvement of python converter for hbase**

The python converter `HBaseResultToStringConverter` provided in the HBaseConverter.scala returns only the value of first column in the result. It limits the utility of this converter, because it returns only one value per row(perhaps there are several version in hbase) and moreover it loses the other information of record, such as column:cell, timestamp. 

Here we would like to propose an improvement about python converter which returns all the records in the results (in a single string) with more complete information. We would like also make some improvements for hbase\_inputformat.py


---

* [SPARK-4258](https://issues.apache.org/jira/browse/SPARK-4258) | *Critical* | **NPE with new Parquet Filters**

{code}
Caused by: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 21.0 failed 4 times, most recent failure: Lost task 0.3 in stage 21.0 (TID 160, ip-10-0-247-144.us-west-2.compute.internal): java.lang.NullPointerException: 
        parquet.io.api.Binary$ByteArrayBackedBinary.compareTo(Binary.java:206)
        parquet.io.api.Binary$ByteArrayBackedBinary.compareTo(Binary.java:162)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:100)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:47)
        parquet.filter2.predicate.Operators$Eq.accept(Operators.java:162)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:210)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:47)
        parquet.filter2.predicate.Operators$Or.accept(Operators.java:302)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:201)
        parquet.filter2.statisticslevel.StatisticsFilter.visit(StatisticsFilter.java:47)
        parquet.filter2.predicate.Operators$And.accept(Operators.java:290)
        parquet.filter2.statisticslevel.StatisticsFilter.canDrop(StatisticsFilter.java:52)
        parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:46)
        parquet.filter2.compat.RowGroupFilter.visit(RowGroupFilter.java:22)
        parquet.filter2.compat.FilterCompat$FilterPredicateCompat.accept(FilterCompat.java:108)
        parquet.filter2.compat.RowGroupFilter.filterRowGroups(RowGroupFilter.java:28)
        parquet.hadoop.ParquetRecordReader.initializeInternalReader(ParquetRecordReader.java:158)
        parquet.hadoop.ParquetRecordReader.initialize(ParquetRecordReader.java:138)
{code}

This occurs when reading parquet data encoded with the older version of the library for TPC-DS query 34.  Will work on coming up with a smaller reproduction


---

* [SPARK-3850](https://issues.apache.org/jira/browse/SPARK-3850) | *Minor* | **Scala style: disallow trailing spaces**

Background discussions:
* https://github.com/apache/spark/pull/2619
* http://apache-spark-developers-list.1001551.n3.nabble.com/Extending-Scala-style-checks-td8624.html

If you look at [the PR Cheng opened|https://github.com/apache/spark/pull/2619], you'll see a trailing white space seemed to mess up some SQL test. That's what spurred the creation of this issue.

[Ted Yu on the dev list|http://mail-archives.apache.org/mod\_mbox/spark-dev/201410.mbox/%3CCALte62y7a6WyBDUFDcGUwbf8WCpttViE+PAo4pZOR+\_-nB2UTw@mail.gmail.com%3E] suggested using this [{{WhitespaceEndOfLineChecker}}|http://www.scalastyle.org/rules-0.1.0.html].



