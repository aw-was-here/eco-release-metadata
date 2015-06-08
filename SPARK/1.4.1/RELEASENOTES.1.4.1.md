
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
#  1.4.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-8146](https://issues.apache.org/jira/browse/SPARK-8146) | *Major* | **DataFrame Python API: Alias replace in DataFrameNaFunctions**

We missed aliasing it in na.replace.


---

* [SPARK-8141](https://issues.apache.org/jira/browse/SPARK-8141) | *Major* | **Precompute datatypes for partition columns and reuse it**

spec.partitionColumns.map(\_.dataType) re-runs for each Partition in HadoopFsRelation. When there are many partitions, it costs too much unnecessary time.


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

* [SPARK-7980](https://issues.apache.org/jira/browse/SPARK-7980) | *Major* | **Support SQLContext.range(end)**

SQLContext.range should also allow only specifying the end position, similar to Python's own range.


---

* [SPARK-7969](https://issues.apache.org/jira/browse/SPARK-7969) | *Minor* | **Drop method on Dataframes should handle Column**

For now the drop method available on Dataframe since Spark 1.4.0 only accepts a column name (as a string), it should also accept a Column as input.


---

* [SPARK-7705](https://issues.apache.org/jira/browse/SPARK-7705) | *Minor* | **Cleanup of .sparkStaging directory fails if application is killed**

When a streaming application is killed while running on YARN the .sparkStaging directory is not cleaned up. Setting spark.yarn.preserve.staging.files=false does not help and still leaves the files around.

The changes in SPARK-7503 do not catch this case since there is no exception in the shutdown. When the application gets killed the AM gets told to shutdown and the shutdown hook is run but the clean up is not triggered.


---

* [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | *Major* | **Log test name when starting and finishing each test**

Right now it's really tough to interpret testing output because logs for different tests are interspersed in the same unit-tests.log file. This makes it particularly hard to diagnose flaky tests. This would be much easier if we logged the test name before and after every test (e.g. "Starting test XX", "Finished test XX"). Then you could get right to the logs.

I think one way to do this might be to create a custom test fixture that logs the test class name and then mix that into every test suite /cc [~joshrosen] for his superb knowledge of Scalatest.


---

* [SPARK-7387](https://issues.apache.org/jira/browse/SPARK-7387) | *Minor* | **CrossValidator example code in Python**

We should add example code for CrossValidator after SPARK-6940 is merged. This should be similar to the CrossValidator example in Scala/Java.



