
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
# Apache Spark  1.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-9179](https://issues.apache.org/jira/browse/SPARK-9179) | *Minor* | **Allow committers to specify the primary author of the PR to be merged**

It's a common case that some contributor contributes an initial version of a feature/bugfix, and later on some other people (mostly committers) fork and add more improvements. When merging these PRs, we probably want to specify the original author as the primary author. Currently we can only do this by running
{noformat}
git commit --amend --author="name <email>"
{noformat}
manually right before the merge script pushes to Apache Git repo. It would be nice if the script accepts user specified primary author information.


---

* [SPARK-9177](https://issues.apache.org/jira/browse/SPARK-9177) | *Major* | **Reuse Calendar instance in WeekOfYear**

Right now WeekOfYear creates a new Calendar instance for every record, both in code gen and in interpreted mode. We should just reuse the same Calendar instance (i.e. initialize it as a member variable in interpreted mode, and use mutable state in codegen mode).


---

* [SPARK-9172](https://issues.apache.org/jira/browse/SPARK-9172) | *Major* | **DecimalPrecision should also support Intersect and Except in addition to Union**

DecimalPrecision transforms only Union. It should also transform Intersect and Except.


---

* [SPARK-9166](https://issues.apache.org/jira/browse/SPARK-9166) | *Major* | **Hide JVM stack trace for IllegalArgumentException in Python**

We now hide stack trace for AnalysisException. We should also hide it for IllegalArgumentException.


See this ticket to see how to fix this problem: https://github.com/apache/spark/pull/7135


---

* [SPARK-9150](https://issues.apache.org/jira/browse/SPARK-9150) | *Critical* | **Create CodegenFallback and Unevaluable trait**

It is very hard to track which expression supports code generation or not. This patch removes the default gencode implementation from Expression, and moves the default fallback implementation into a new trait called CodegenFallback. Each concrete expression needs to either implement code generation, or mix in CodegenFallback. This makes it very easy to track which expressions have code generation implemented already.

Additionally, this patch creates an Unevaluable trait that can be used to track expressions that don't support evaluation (e.g. Star).


---

* [SPARK-9143](https://issues.apache.org/jira/browse/SPARK-9143) | *Major* | **Add planner rule for automatically inserting Unsafe \<-\> Safe row format converters**

Now that we have two different internal row formats, UnsafeRow and the old Java-object-based row format, we end up having to perform conversions between these two formats. These conversions should not be performed by the operators themselves; instead, the planner should be responsible for inserting appropriate format conversions when they are needed.


---

* [SPARK-9142](https://issues.apache.org/jira/browse/SPARK-9142) | *Major* | **Removing unnecessary self types in Catalyst**

A small change, based on code review and offline discussion with [~dragos].


---

* [SPARK-9138](https://issues.apache.org/jira/browse/SPARK-9138) | *Critical* | **Vectors.dense() in Python should accept numbers directly**

We already use this feature in doctests


---

* [SPARK-9126](https://issues.apache.org/jira/browse/SPARK-9126) | *Major* | **StopwatchSuite shouldn't use Thread.sleep()**

Thread.sleep() might run overtime if Jenkins is busy.


---

* [SPARK-9118](https://issues.apache.org/jira/browse/SPARK-9118) | *Minor* | **Implement integer array parameters for ml.param as IntArrayParam**

ml/param/params.scala lacks integer array parameter. It is needed for some models such as multilayer perceptron to specify the layer sizes. I suggest to implement it as IntArrayParam similarly to DoubleArrayParam.


---

* [SPARK-9115](https://issues.apache.org/jira/browse/SPARK-9115) | *Major* | **date/time function: dayInYear**

dayInyear(date): Int

Returns the number of the day in the year of a given date.
e.g. dayInYear("2015-01-01") == 1, dayInYear("2015-12-31") == 365


---

* [SPARK-9109](https://issues.apache.org/jira/browse/SPARK-9109) | *Minor* | **Unpersist a graph object does not work properly**

Unpersist a graph object does not work properly.

Here is the code to produce 

{code}
import org.apache.spark.graphx.\_
import org.apache.spark.rdd.RDD
import org.slf4j.LoggerFactory
import org.apache.spark.graphx.util.GraphGenerators

val graph: Graph[Long, Long] =
  GraphGenerators.logNormalGraph(sc, numVertices = 100).mapVertices( (id, \_) => id.toLong ).mapEdges( e => e.attr.toLong)
  
graph.cache().numEdges
graph.unpersist()
{code}

There should not be any cached RDDs in storage (http://localhost:4040/storage/).


---

* [SPARK-9094](https://issues.apache.org/jira/browse/SPARK-9094) | *Minor* | **Increase io.dropwizard.metrics dependency to 3.1.2**

This change is described in pull request:
https://github.com/apache/spark/pull/7493


---

* [SPARK-9093](https://issues.apache.org/jira/browse/SPARK-9093) | *Major* | **Fix single-quotes strings in SparkR**

We should get rid of the warnings about using single-quotes like that.

{noformat}
inst/tests/test\_sparkSQL.R:60:28: style: Only use double-quotes.
               list(type = 'array', elementType = "integer", containsNull = TRUE))
                           ^~~~~~~
{noformat}


---

* [SPARK-9090](https://issues.apache.org/jira/browse/SPARK-9090) | *Trivial* | **Fix definition of residual in LinearRegressionSummary**

Residual is defined as label - prediction (https://en.wikipedia.org/wiki/Least\_squares); we need to update {{LinearRegressionSummary}} to be consistent.


---

* [SPARK-9085](https://issues.apache.org/jira/browse/SPARK-9085) | *Major* | **Remove LeafNode, UnaryNode, BinaryNode from TreeNode**

They are not very useful, and cause problems with toString due to the order they are mixed in.


---

* [SPARK-9080](https://issues.apache.org/jira/browse/SPARK-9080) | *Critical* | **IsNaN expression**

Add IsNaN expression to return true if the input double/float value is NaN.


---

* [SPARK-9079](https://issues.apache.org/jira/browse/SPARK-9079) | *Major* | **Design NaN semantics**

1. What should NaN = NaN return?

NaN = NaN should return true.

2. If we see NaN in the group by key column, should we group NaN values into one group, or into different groups?

All NaN values should be grouped together.

3. What about NaN in join keys?

NaN should be treated as a normal value in join keys.

4. When aggregating over columns containing NaN, should the result be NaN, or should the result exclude NaN values (treating them like nulls)?

This is TO BE DECIDED. By default, the behavior is to return NaN.


5. Where should NaN go in sorting?

NaN should go last when in ascending order, larger than any other numeric value.


Note that 5 is much more important than the other 4 since right now the sorter throws exceptions on NaN values. See SPARK-8797.


---

* [SPARK-9071](https://issues.apache.org/jira/browse/SPARK-9071) | *Major* | **MonotonicallyIncreasingID and SparkPartitionID should be marked as nondeterministic**

They should override deterministic to return false.


---

* [SPARK-9070](https://issues.apache.org/jira/browse/SPARK-9070) | *Trivial* | **JavaDataFrameSuite teardown NPEs if setup failed**

The hive test {{JavaDataFrameSuite}} NPEs in teardown if setup failed.


---

* [SPARK-9068](https://issues.apache.org/jira/browse/SPARK-9068) | *Minor* | **refactor the implicit type cast code**

based on https://github.com/apache/spark/pull/7348


---

* [SPARK-9062](https://issues.apache.org/jira/browse/SPARK-9062) | *Minor* | **Change output type of Tokenizer to Array(String, true)**

Currently output type of Tokenizer is Array(String, false), which is not compatible with Word2Vec and Other transformers since their input type is Array(String, true). Seq[String] in udf will be treated as Array(String, true) by default. 

I'm also thinking for Nullable columns, maybe tokenizer should return Array(null) for null value in the input.


---

* [SPARK-9061](https://issues.apache.org/jira/browse/SPARK-9061) | *Blocker* | **Fix and re-enable ignored tests in ExpressionTypeCheckingSuite**

In SPARK-8993 we disabled couple tests in ExpressionTypeCheckingSuite. We should fix them and re-enable them.


---

* [SPARK-9060](https://issues.apache.org/jira/browse/SPARK-9060) | *Major* | **Revert SPARK-8359, SPARK-8800, and SPARK-8677**

Since it is hard to fix these problems without causing new issues, I'd say we should revert these changes and figure out the proper improvement of our decimal type support.


---

* [SPARK-9055](https://issues.apache.org/jira/browse/SPARK-9055) | *Major* | **WidenTypes should also support Intersect and Except in addition to Union**

HiveTypeCoercion.WidenTypes only supports Union right now. It should also support Intersect and Except.


---

* [SPARK-9050](https://issues.apache.org/jira/browse/SPARK-9050) | *Major* | **Remove out-of-date code in Exchange that was obsoleted by SPARK-8317**

SPARK-8317 changed the SQL Exchange operator so that it no longer pushed sorting into Spark's shuffle layer, a change which allowed more efficient SQL-specific sorters to be used.

There's still some leftover cleanup from that patch which needs to be performed: Exchange's constructor should no longer accept a {{newOrdering}} since it's no longer used.


---

* [SPARK-9049](https://issues.apache.org/jira/browse/SPARK-9049) | *Major* | **UnsafeExchange operator**

Create a version of Exchange that expects UnsafeRow as inputs.


---

* [SPARK-9048](https://issues.apache.org/jira/browse/SPARK-9048) | *Major* | **UnsafeSqlSerializer**

Create a UnsafeSqlSerializer that serializes UnsafeRows.


---

* [SPARK-9045](https://issues.apache.org/jira/browse/SPARK-9045) | *Blocker* | **Fix Scala 2.11 build break due in UnsafeExternalRowSorter**

{code}
[error] /home/jenkins/workspace/Spark-Master-Scala211-Compile/sql/catalyst/src/main/java/org/apache/spark/sql/execution/UnsafeExternalRowSorter.java:135: error: <anonymous org.apache.spark.sql.execution.UnsafeExternalRowSorter$1> is not abstract and does not override abstract method <B>minBy(Function1<InternalRow,B>,Ordering<B>) in TraversableOnce
[error]       return new AbstractScalaRowIterator() {
[error]                                             ^
[error]   where B,A are type-variables:
[error]     B extends Object declared in method <B>minBy(Function1<A,B>,Ordering<B>)
[error]     A extends Object declared in interface TraversableOnce
[error] 1 error
[error] Compile failed at Jul 14, 2015 2:26:25 PM [26.443s]
{code}

It turns out that this can be fixed by making AbstractScalaRowIterator into a concrete class instead of an abstract class.


---

* [SPARK-9031](https://issues.apache.org/jira/browse/SPARK-9031) | *Major* | **Merge BlockObjectWriter and DiskBlockObject writer to remove abstract class**

BlockObjectWriter has only one concrete non-test class, DiskBlockObjectWriter.  In order to simplify the code in preparation for other refactorings, I think that we should remove this base class and have only DiskBlockObjectWriter.


---

* [SPARK-9023](https://issues.apache.org/jira/browse/SPARK-9023) | *Major* | **UnsafeExchange**

Create a version of Exchange that accepts UnsafeRow and exploits the fact that data is passed in as bytes.


---

* [SPARK-9022](https://issues.apache.org/jira/browse/SPARK-9022) | *Major* | **UnsafeProject**

Create a version of Project that projects output out directly into serialized UnsafeRow.


---

* [SPARK-9021](https://issues.apache.org/jira/browse/SPARK-9021) | *Major* | ** Change RDD.aggregate() to do reduce(mapPartitions()) instead of mapPartitions.fold()**

Please see pull request for more information.

Currently, PySpark will run an unnecessary comboOp on each partition, combining zeroValue and the results of mapPartitions. Since the zeroValue used in this comboOp is the same reference as the zeroValue used for mapPartitions in each partition, unexpected behavior can happen if zeroValue is a mutable object.

Instead, RDD.aggregate() should do a reduction on the results of each mapPartitions task. This way, we remove the unnecessary initial comboOp on each partition and also correct the unexpected behavior for mutable zeroValues.


---

* [SPARK-9020](https://issues.apache.org/jira/browse/SPARK-9020) | *Major* | **Support mutable state in code gen expressions**

Some expressions have state in them (e.g. Rand, MonotonicallyIncreasingID). We currently don't support code-gen any expressions that have mutable states.


---

* [SPARK-9018](https://issues.apache.org/jira/browse/SPARK-9018) | *Major* | **Implement a generic Stopwatch utility for ML algorithms**

The Timer utility should be based on the one implemented in trees. In particular, we should offer two versions:

1. a global timer that is initialized on the driver and use accumulator to aggregate time
2. a local timer that is initialized on the worker, and only provide per task measurement.

1) needs some performance benchmark and guidance on the granularity.


---

* [SPARK-9015](https://issues.apache.org/jira/browse/SPARK-9015) | *Minor* | **Maven cleanup / Clean Project Import in scala-ide**

Cleanup maven for a clean import in scala-ide / eclipse.

The outstanging PR contains things like removal of groovy plugin and some more maven cleanup goes here.


In order to make it a seamless experience two more things have to be merged upstream:
1) ide automatically generate jva sources from idl - https://issues.apache.org/jira/browse/AVRO-1671
2) set scala version in ide based on maven config - https://github.com/sonatype/m2eclipse-scala/issues/30


---

* [SPARK-9012](https://issues.apache.org/jira/browse/SPARK-9012) | *Major* | **Accumulators in the task table should be escaped**

If running the following codes, the task table will be broken because accumulators aren't escaped.
{code}
val a = sc.accumulator(1, "<table>")
sc.parallelize(1 to 10).foreach(i => a += i)
{code}


---

* [SPARK-9010](https://issues.apache.org/jira/browse/SPARK-9010) | *Trivial* | **Improve the Spark Configuration document about `spark.kryoserializer.buffer`**

The meaning of spark.kryoserializer.buffer should be "Initial size of Kryo's serialization buffer. Note that there will be one buffer per core on each worker. This buffer will grow up to spark.kryoserializer.buffer.max if needed.".

The spark.kryoserializer.buffer.max.mb is out-of-date in spark 1.4.


---

* [SPARK-9006](https://issues.apache.org/jira/browse/SPARK-9006) | *Blocker* | **TimestampType may loss a microsecond after a round trip in Python DataFrame**

This bug causes SQLTests.test\_time\_with\_timezone flaky in Python 3.


---

* [SPARK-9005](https://issues.apache.org/jira/browse/SPARK-9005) | *Major* | **RegressionMetrics computing incorrect explainedVariance**

{{RegressionMetrics}} currently computes explainedVariance using {{summary.variance(1)}} (variance of the residuals) where the [Wikipedia definition|https://en.wikipedia.org/wiki/Fraction\_of\_variance\_unexplained] uses the residual sum of squares {{math.pow(summary.normL2(1), 2)}}. The two coincide only when the predictor is unbiased (e.g. an intercept term is included in a linear model), but this is not always the case. We should change to be consistent.


---

* [SPARK-9001](https://issues.apache.org/jira/browse/SPARK-9001) | *Minor* | **sbt doc fails due to javadoc errors**

Running `build/sbt doc` on master fails due to errors javadocs. 

This is an issues since `build/sbt publish-local` depends on building the docs.

Example error:

[info] Generating /spark/unsafe/target/scala-2.10/api/org/apache/spark/unsafe/bitset/BitSet.html...
[error] /spark/unsafe/src/main/java/org/apache/spark/unsafe/bitset/BitSet.java:93: error: bad use of '>'
[error]    *  for (long i = bs.nextSetBit(0); i >= 0; i = bs.nextSetBit(i + 1)) {
[error]                                         ^


---

* [SPARK-8997](https://issues.apache.org/jira/browse/SPARK-8997) | *Major* | **Improve LocalPrefixSpan performance**

We can improve the performance by:

1. run should output Iterator instead of Array
2. Local count shouldn't use groupBy, which creates too many arrays. We can use PrimitiveKeyOpenHashMap
3. We can use list to avoid materialize frequent sequences


---

* [SPARK-8996](https://issues.apache.org/jira/browse/SPARK-8996) | *Major* | **Add Python API for Kolmogorov-Smirnov Test**

Add Python API for the Kolmogorov-Smirnov test implemented in SPARK-8598. It should be similar to ChiSqTest in Python.


---

* [SPARK-8995](https://issues.apache.org/jira/browse/SPARK-8995) | *Major* | **Cast date strings with date, date and time and just time information to DateType and TimestampTzpe**

Tests of https://github.com/apache/spark/pull/6981 fail, because we can not cast strings like '13:18:08' to a valid date and extract the hours later. It's not possible to parse strings that contains date and time information to date, like '2015-03-18 12:25:49'


---

* [SPARK-8994](https://issues.apache.org/jira/browse/SPARK-8994) | *Trivial* | **Tiny cleanups to Params, Pipeline**

Small cleanups per remaining comments in [https://github.com/apache/spark/pull/5820] which resolved [SPARK-5956]


---

* [SPARK-8993](https://issues.apache.org/jira/browse/SPARK-8993) | *Major* | **More comprehensive type checking in expressions**

This patch makes the following changes:

1. ExpectsInputTypes only defines expected input types, but does not perform any implicit type casting.
2. ImplicitCastInputTypes is a new trait that defines both expected input types, as well as performs implicit type casting.
3. BinaryOperator has a new abstract function "inputType", which defines the expected input type for both left/right. Concrete BinaryOperator expressions no longer perform any implicit type casting.
4. For BinaryOperators, convert NullType (i.e. null literals) into some accepted type so BinaryOperators don't need to handle NullTypes.


---

* [SPARK-8991](https://issues.apache.org/jira/browse/SPARK-8991) | *Trivial* | **Update SharedParamsCodeGen's Generated Documentation**

We no longer need

Specifically, the [generated documentation in SharedParamsCodeGen|https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/ml/param/shared/SharedParamsCodeGen.scala#L137] should be modified from

{{code}}
      |/**
      | * (private[ml]) Trait for shared param $name$defaultValueDoc.
      | */
{{code}}

to

{{code}}
      |/**
      | * Trait for shared param $name$defaultValueDoc.
      | */
{{code}}


---

* [SPARK-8990](https://issues.apache.org/jira/browse/SPARK-8990) | *Major* | **DataFrameReader.parquet() ignores user specified data source options**

A bad consequence of this is that {{sqlContext.read.parquet(path)}} always do schema merging. For example:
{code}
import sqlContext.\_
import sqlContext.implicits.\_

val path = "s3n://my-bucket/parquet/tiny"
range(0, 10).coalesce(1).write.mode("overwrite").parquet(path)

// Explicitly disables schema merging
read.option("mergeSchema", "false").format("parquet").load(path)
{code}
However, we still see all files are opened for schema discovery:
{noformat}
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening 's3n://databricks-lian/parquet/tiny/\_metadata' for reading
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/\_metadata' for reading at position '314'
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening 's3n://databricks-lian/parquet/tiny/part-r-00000-da490c43-15e2-46b5-95ff-4863e6ab1cc4.gz.parquet' for reading
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening 's3n://databricks-lian/parquet/tiny/\_common\_metadata' for reading
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/part-r-00000-da490c43-15e2-46b5-95ff-4863e6ab1cc4.gz.parquet' for reading at position '345'
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/\_common\_metadata' for reading at position '191'
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/\_metadata' for reading at position '4'
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/part-r-00000-da490c43-15e2-46b5-95ff-4863e6ab1cc4.gz.parquet' for reading at position '97'
15/07/10 14:46:52 INFO s3native.NativeS3FileSystem: Opening key 'parquet/tiny/\_common\_metadata' for reading at position '4'
{noformat}
To workaround this issue, use the following instead:
{noformat}
sqlContext.read.option("mergeSchema", "false").format("parquet").load(path)
{noformat}


---

* [SPARK-8974](https://issues.apache.org/jira/browse/SPARK-8974) | *Minor* | **There is a bug in dynamicAllocation. When there is no running tasks, the number of executor a long time without running tasks, the number of executor does not reduce to the value of "spark.dynamicAllocation.minExecutors".**

In yarn-client mode and config option "spark.dynamicAllocation.enabled " is true, when the state of ApplicationMaster is dead or disconnected, if the tasks are submitted  before new ApplicationMaster start. The thread of spark-dynamic-executor-allocation will throw exception, When ApplicationMaster is running and not tasks are running, the number of executor is not zero. So feture of dynamicAllocation are not  supported.


---

* [SPARK-8972](https://issues.apache.org/jira/browse/SPARK-8972) | *Critical* | **Incorrect result for rollup**

{code:java}
import sqlContext.implicits.\_
case class KeyValue(key: Int, value: String)
val df = sc.parallelize(1 to 5).map(i=>KeyValue(i, i.toString)).toDF
df.registerTempTable("foo")
sqlContext.sql("select count(*) as cnt, key % 100,GROUPING\_\_ID from foo group by key%100 with rollup").show(100)
// output
+---+---+------------+
|cnt|\_c1|GROUPING\_\_ID|
+---+---+------------+
|  1|  4|           0|
|  1|  4|           1|
|  1|  5|           0|
|  1|  5|           1|
|  1|  1|           0|
|  1|  1|           1|
|  1|  2|           0|
|  1|  2|           1|
|  1|  3|           0|
|  1|  3|           1|
+---+---+------------+
{code}
After checking with the code, seems we does't support the complex expressions (not just simple column names) for GROUP BY keys for rollup, as well as the cube. And it even will not report it if we have complex expression in the rollup keys, hence we get very confusing result as the example above.


---

* [SPARK-8963](https://issues.apache.org/jira/browse/SPARK-8963) | *Trivial* | **Improve Linear Regression tests to use Vectors**

Improve LinearRegressionSuite to use Vector comparison.


---

* [SPARK-8962](https://issues.apache.org/jira/browse/SPARK-8962) | *Major* | **Disallow Class.forName**

We should add a regex rule to Scalastyle which prohibits the use of {{Class.forName}}.  We should not use Class.forName directly because this will load classes from the system's default class loader rather than the appropriate context loader.  Instead, we should be calling Utils.classForName instead.


---

* [SPARK-8961](https://issues.apache.org/jira/browse/SPARK-8961) | *Major* | **Makes BaseWriterContainer.outputWriterForRow accepts InternalRow instead of Row**

This is a follow-up of SPARK-8888, which also aims to optimize writing dynamic partitions.

Three more changes can be made here:

# Using {{InternalRow}} instead of {{Row}} in {{BaseWriterContainer.outputWriterForRow}}
# Using {{Cast}} expressions to convert partition columns to strings, so that we can leverage code generation.
# Replacing the FP-style {{zip}} and {{map}} calls with a faster imperative {{while}} loop.


---

* [SPARK-8959](https://issues.apache.org/jira/browse/SPARK-8959) | *Blocker* | **Parquet-thrift and libthrift introduced as test dependencies in PR #7231 break Maven builds**

These two dependencies somehow crash the Scala compiler.


---

* [SPARK-8958](https://issues.apache.org/jira/browse/SPARK-8958) | *Major* | **Dynamic allocation: change cached executor timeout to infinity**

It would be good to keep it more conservative. Losing cached blocks may be very expensive and we should only allow it if the user knows what he/she is doing.


---

* [SPARK-8954](https://issues.apache.org/jira/browse/SPARK-8954) | *Major* | **Building Docker Images Fails in 1.4 branch**

Docker build on branch 1.4 fails when installing the jdk. It expects tzdata-java as a dependency but adding that to the apt-get install list doesn't help.

~/S/s/d/spark-test git:branch-1.4 ❯❯❯ docker build -t spark-test-base base/                                                 ◼
Sending build context to Docker daemon 3.072 kB
Sending build context to Docker daemon
Step 0 : FROM ubuntu:precise
 ---> 78cef618c77e
Step 1 : RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
 ---> Using cache
 ---> 2017472bec85
Step 2 : RUN apt-get update
 ---> Using cache
 ---> 86b8911ead16
Step 3 : RUN apt-get install -y less openjdk-7-jre-headless net-tools vim-tiny sudo openssh-server
 ---> Running in dc8197a0ea31
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 openjdk-7-jre-headless : Depends: tzdata-java but it is not going to be installed
E: Unable to correct problems, you have held broken packages.
INFO[0004] The command [/bin/sh -c apt-get install -y less openjdk-7-jre-headless net-tools vim-tiny sudo openssh-server] returned a non-zero code: 100


---

* [SPARK-8950](https://issues.apache.org/jira/browse/SPARK-8950) | *Minor* | **Correct the calculation of SchedulerDelayTime in StagePage**

In StagePage, the SchedulerDelay is calculated as totalExecutionTime - executorRunTime - executorOverhead - gettingResultTime.

But the totalExecutionTime is calculated in the way that doesn't include the gettingResultTime.


---

* [SPARK-8948](https://issues.apache.org/jira/browse/SPARK-8948) | *Major* | **Remove ExtractValueWithOrdinal abstract class**

It is unnecessary and makes the type hierarchy slightly more complicated than needed.


---

* [SPARK-8940](https://issues.apache.org/jira/browse/SPARK-8940) | *Major* | **Don't overwrite given schema if it is not null for createDataFrame in SparkR**

The given schema parameter will be overwritten in createDataFrame now. If it is not null, we shouldn't overwrite it.


---

* [SPARK-8937](https://issues.apache.org/jira/browse/SPARK-8937) | *Minor* | **A setting `spark.unsafe.exceptionOnMemoryLeak ` is missing in ScalaTest config.**

`spark.unsafe.exceptionOnMemoryLeak` is present in the config of surefire.

{code}
        <!-- Surefire runs all Java tests -->
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-surefire-plugin</artifactId>
          <version>2.18.1</version>
          <!-- Note config is repeated in scalatest config -->
...
           
<spark.unsafe.exceptionOnMemoryLeak>true</spark.unsafe.exceptionOnMemoryLeak>
            </systemProperties>
...
{code}

 but is absent in the config ScalaTest.


---

* [SPARK-8934](https://issues.apache.org/jira/browse/SPARK-8934) | *Major* | **cast from double/float to timestamp should not go through decimal**

We shouldn't convert the floating point number to decimal and then immediately converting it into a timestamp.

{code}
    case DoubleType =>
      buildCast[Double](\_, d => try {
        decimalToTimestamp(Decimal(d))
      } catch {
        case \_: NumberFormatException => null
      })
    // TimestampWritable.floatToTimestamp
    case FloatType =>
      buildCast[Float](\_, f => try {
        decimalToTimestamp(Decimal(f))
      } catch {
        case \_: NumberFormatException => null
      })
{code}


---

* [SPARK-8933](https://issues.apache.org/jira/browse/SPARK-8933) | *Major* | **Provide a --force flag to build/mvn that always uses downloaded maven**

I noticed the other day that build/mvn will still use the system maven if "mvn" binary is installed. I think this was intentional to support just using zinc and using the system maven (and to match the semantics of sbt/sbt). It would be nice to have a flag that will force it to use the downloaded maven. I was thinking it could have a --force flag, and then it could swallow that flag and not pass it onto maven.

This is useful in some cases like our test runners, where we want to coerce a specific version of maven is used.


---

* [SPARK-8932](https://issues.apache.org/jira/browse/SPARK-8932) | *Major* | **Support copy in UnsafeRow as long as ObjectPool is not used**

We call {{InternalRow.copy()}} in many places throughout SQL but UnsafeRow currently throws UnsupportedOperationException when copy() is called.

Supporting copying when ObjectPool is used may be difficult, since we may need to handle deep-copying of objects in the pool.  In addition, this copy() method needs to produce a self-contained row object which may be passed around / buffered by downstream code which does not understand the UnsafeRow format.

In the long run, we'll need to figure out how to handle the ObjectPool corner cases, but this may be unnecessary if other changes are made. Therefore, in order to unblock my sort patch I propose that we support copy() for the cases where UnsafeRow does not use an ObjectPool and continue to throw UnsupportedOperationException when an ObjectPool is used.


---

* [SPARK-8931](https://issues.apache.org/jira/browse/SPARK-8931) | *Critical* | **Fallback to interpret mode if failed to compile in codegen**

And we should not fallback during testing.


---

* [SPARK-8928](https://issues.apache.org/jira/browse/SPARK-8928) | *Major* | **CatalystSchemaConverter doesn't stick to behavior of old versions of Spark SQL when dealing with LISTs**

Spark SQL 1.4.x and prior versions doesn't follow Parquet format spec when dealing with complex types (because the spec wasn't clear about this part at the time Spark SQL Parquet support was authored). SPARK-6777 partly fixes this problem with {{CatalystSchemaConverter}} and introduces a feature flag to indicate whether we should stick to Parquet format spec (standard mode) or older Spark versions behavior (compatible mode). However, when dealing with LISTs (i.e. Spark SQL arrays), {{CatalystSchemaConverter}} doesn't give exactly the same schema as before in compatible mode.

For a nullable int array, 1.4.x- sticks to parquet-avro and gives:
{noformat}
message root {
  <repetition> group <field-name> (LIST) {
    required int32 array;
  }
}
{noformat}
The inner most field name is {{array}}. However, {{CatalystSchemaConverter}} uses {{element}}.

Similarly, for a nullable int array, 1.4.x- sticks to parquet-hive, and gives:
{noformat}
optional group <field-name> (LIST) {
  optional group bag {
    optional int32 array\_element;
  }
}
{noformat}
The inner most field name is {{array\_element}}. However, {{CatalystSchemaConverter}} still uses {{element}}.

This issue doesn't affect Parquet read path since all the schemas above are covered by SPARK-6776. But this issue affects the write path. Ideally, we'd like Spark SQL 1.5.x to write Parquet files sticking to either exactly the same format used in 1.4.x- or the most recent Parquet format spec.


---

* [SPARK-8927](https://issues.apache.org/jira/browse/SPARK-8927) | *Trivial* | **Doc format wrong for some config descriptions**

In the docs, a couple descriptions of configuration (under Network) are not inside <td></td> and are being displayed immediately under the section title instead of in their row.


---

* [SPARK-8914](https://issues.apache.org/jira/browse/SPARK-8914) | *Minor* | **Remove RDDApi**

As [~rxin] suggested in the following link, we should consider to remove `RDDApi`.
https://github.com/apache/spark/pull/7298#issuecomment-119747662


---

* [SPARK-8913](https://issues.apache.org/jira/browse/SPARK-8913) | *Major* | **Follow-up on SPARK-8700. Cleanup the test**

Clean up the tests to make weightR a DenseVector then use assert(model1.weights ~== weightsR relTol ...)


---

* [SPARK-8911](https://issues.apache.org/jira/browse/SPARK-8911) | *Major* | **Local mode endless heartbeat warnings**

Every now and then we get “WARN Executor: Told to re-register on heartbeat”. This is likely caused by recent heartbeat receiver changes.


---

* [SPARK-8910](https://issues.apache.org/jira/browse/SPARK-8910) | *Critical* | **MiMa test is flaky because it starts a SQLContext**

I've seen this many times on GitHub. At the very least we should disable the SparkUI to prevent port contention, which is one of the most common sources of flakiness.
{code}
15/07/08 12:46:08 WARN AbstractLifeCycle: FAILED SelectChannelConnector@0.0.0.0:4040: java.net.BindException: Address already in use
java.net.BindException: Address already in use
	at sun.nio.ch.Net.bind0(Native Method)
	at sun.nio.ch.Net.bind(Net.java:444)
	at sun.nio.ch.Net.bind(Net.java:436)
{code}
https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/36826/consoleFull


---

* [SPARK-8909](https://issues.apache.org/jira/browse/SPARK-8909) | *Trivial* | **Nice to have all the examples in scala, java,python, R to be same in sql-programming-guide**

in the sql-programming-guide. in the section manually specifying the options. Our scala example is not in sync with the  java, python, R examples.

So to be consistent it would be nice to have format as parquest for scala code section


---

* [SPARK-8908](https://issues.apache.org/jira/browse/SPARK-8908) | *Minor* | **Calling distinct() with parentheses throws error in Scala DataFrame**

To reproduce, please call {{distinct()}} on DataFrame in spark-shell. For eg,
{code}
scala> sqlContext.table("my\_table").distinct()

<console>:19: error: not enough arguments for method apply: (colName: String)org.apache.spark.sql.Column in class DataFrame.
Unspecified value parameter colName.
{code}
This is confusing because {{distinct}} in DataFrame is an alias of {{dropDuplicates}}, and both {{dropDuplicates}} and {{dropDuplicates()}} work.

Here is the summary-
||Scala code||Works||
|DF.distinct|Y|
|DF.distinct()|N|
|DF.dropDuplicates|Y|
|DF.dropDuplicates()|Y|

Looking at the definition of {{distinct}}, it's missing {{()}}-
{code}
override def distinct: DataFrame = dropDuplicates()
{code}
As a result, what seems happening is as follows-
{code}
distinct()
=> dropDuplicates()()
=> DataFrame() // because dropDuplicates() returns DF
=> DataFrame.apply() // fails because apply() takes a column parameter
{code}
I can verify that adding {{()}} to the definition makes both {{distinct}} and {{distinct()}} work.


---

* [SPARK-8907](https://issues.apache.org/jira/browse/SPARK-8907) | *Major* | **Speed up path construction in DynamicPartitionWriterContainer.outputWriterForRow**

Don't use zip and scala collection methods to avoid garbage collection

{code}
    val partitionPath = partitionColumns.zip(row.toSeq).map { case (col, rawValue) =>
      val string = if (rawValue == null) null else String.valueOf(rawValue)
      val valueString = if (string == null || string.isEmpty) {
        defaultPartitionName
      } else {
        PartitioningUtils.escapePathName(string)
      }
      s"/$col=$valueString"
    }.mkString.stripPrefix(Path.SEPARATOR)
{code}

We can probably use catalyst expressions themselves to construct the path, and then we can leverage code generation to do this.


---

* [SPARK-8902](https://issues.apache.org/jira/browse/SPARK-8902) | *Trivial* | **Hostname missing in spark-ec2 error message**

When SSH to a machine fails, the following message is printed:

{noformat}
Failed to SSH to remote host {0}.
Please check that you have provided the correct --identity-file and --key-pair parameters and try again.
{noformat}

The intention is to print the host name, but instead {0} is printed.

I have a pull request for this: https://github.com/apache/spark/pull/7288


---

* [SPARK-8900](https://issues.apache.org/jira/browse/SPARK-8900) | *Major* | **sparkPackages flag name is wrong in the documentation**

The SparkR documentation example in http://people.apache.org/~pwendell/spark-releases/latest/sparkr.html is incorrect.

    sc <- sparkR.init(packages="com.databricks:spark-csv\_2.11:1.0.3")
should be
    sc <- sparkR.init(sparkPackages="com.databricks:spark-csv\_2.11:1.0.3")


---

* [SPARK-8894](https://issues.apache.org/jira/browse/SPARK-8894) | *Major* | **Example code errors in SparkR documentation**

There are errors in SparkR related documentation.
1. in https://spark.apache.org/docs/latest/sql-programming-guide.html#hive-tables, for R part, 
{code}
results = sqlContext.sql("FROM src SELECT key, value").collect()
{code}
should be
{code}
results <- collect(sql(sqlContext, "FROM src SELECT key, value"))
{code}

2. in https://spark.apache.org/docs/latest/sparkr.html#from-hive-tables, 
{code}
results <- hiveContext.sql("FROM src SELECT key, value")
{code}
should be
{code}
results <- sql(hiveContext, "FROM src SELECT key, value")
{code}


---

* [SPARK-8893](https://issues.apache.org/jira/browse/SPARK-8893) | *Trivial* | **Require positive partition counts in RDD.repartition**

What does {{sc.parallelize(1 to 3).repartition(p).collect}} return? I would expect {{Array(1, 2, 3)}} regardless of {{p}}. But if {{p}} < 1, it returns {{Array()}}. I think instead it should throw an {{IllegalArgumentException}}.

I think the case is pretty clear for {{p}} < 0. But the behavior for {{p}} = 0 is also error prone. In fact that's how I found this strange behavior. I used {{rdd.repartition(a/b)}} with positive {{a}} and {{b}}, but {{a/b}} was rounded down to zero and the results surprised me. I'd prefer an exception instead of unexpected (corrupt) results.

I'm happy to send a pull request for this.


---

* [SPARK-8888](https://issues.apache.org/jira/browse/SPARK-8888) | *Major* | **Replace the hash map in DynamicPartitionWriterContainer.outputWriterForRow with java.util.HashMap**

We should use a java.util.HashMap, which is faster than Scala's map, although this one barely matters.


---

* [SPARK-8886](https://issues.apache.org/jira/browse/SPARK-8886) | *Trivial* | **Python style usually don't add space before/after the = in named parameters**

python style usually don't add space before/after the = in named parameters. can you submit a follow up patch to fix that?
thanks.


---

* [SPARK-8883](https://issues.apache.org/jira/browse/SPARK-8883) | *Minor* | **Remove the class OverrideFunctionRegistry**

The class `OverrideFunctionRegistry` is redundant since the `HiveFunctionRegistry` has its own way to the underlying registry.


---

* [SPARK-8880](https://issues.apache.org/jira/browse/SPARK-8880) | *Minor* | **Fix confusing Stage.attemptId member variable**

This variable very confusingly refers to the *next* stageId that should be used, making this code especially hard to understand.


---

* [SPARK-8879](https://issues.apache.org/jira/browse/SPARK-8879) | *Major* | **Remove EmptyRow class**

Right now InternalRow is megamorphic because it has many different implementations. We should work towards having only one or at most two InternalRow implementations.


---

* [SPARK-8877](https://issues.apache.org/jira/browse/SPARK-8877) | *Minor* | **Public API for association rule generation**

Association rule generation was added by SPARK-8559. However, the class is currently private and inaccessible to end users. We should provide a public API for generating association rules directly from the model produced by frequent itemset algorithms (eg {{FPGrowth}})


---

* [SPARK-8876](https://issues.apache.org/jira/browse/SPARK-8876) | *Major* | **Remove InternalRow type alias in expressions package**

The type alias was there because initially when I moved Row around, I didn't want to do massive changes to the expression code. But now it should be pretty easy to just remove it. One less concept to worry about.


---

* [SPARK-8872](https://issues.apache.org/jira/browse/SPARK-8872) | *Minor* | **Improve FPGrowthSuite with equivalent R code**

In `FPGrowthSuite`, we only tested output with minSupport 0.5, where the expected output is hard-coded. We can add equivalent R code using the arules package to generate the expect output for validation purpose, similar to https://github.com/apache/spark/blob/master/mllib/src/test/scala/org/apache/spark/ml/regression/LinearRegressionSuite.scala#L98 and the test code in https://github.com/apache/spark/pull/7005.


---

* [SPARK-8868](https://issues.apache.org/jira/browse/SPARK-8868) | *Minor* | **SqlSerializer2 can go into infinite loop when row consists only of NullType columns**

The following SQL query will cause an infinite loop in SqlSerializer2 code:

{code}
val df = sqlContext.sql("select null where 1 = 1")
df.unionAll(df).sort("\_c0").collect()
{code}

The same problem occurs if we add more null-literals, but does not occur as long as there is a column of any other type (e.g. {{select 1, null where 1 == 1}}).

I think that what's happening here is that if you have a row that consists only of columns of NullType (not columns of other types which happen to only contain null values, but only columns of null literals), SqlSerializer will end up writing / reading no data for rows of this type.  Since the deserialization stream will never try to read any data but nevertheless will be able to return an empty row, DeserializationStream.asIterator will go into an infinite loop since there will never be a read to trigger an EOF exception.


---

* [SPARK-8866](https://issues.apache.org/jira/browse/SPARK-8866) | *Major* | **Use 1 microsecond (us) precision for TimestampType**

100ns is slightly weird to compute. Let's use 1us to be more consistent with other systems (e.g. Postgres) and less error prone.


---

* [SPARK-8865](https://issues.apache.org/jira/browse/SPARK-8865) | *Minor* | **Fix bug:  init SimpleConsumerConfig with kafka params**

"zookeeper.connect" and "group.id" aren't necessary for anything in the kafka direct stream.

But they're expected to be present in a kafka consumer config, and overriding that behavior wasn't possible. So as a workaround, we set them to a blank string. That way users don't have to define unnecessary settings in the kafka param map passed to the KafkaUtils constructor. We talked through that during the original development of the direct stream.

The code as it is released today is almost always going to set a blank string, regardless of what users pass in, because contains on a java property object is not the equivalent of containsKey, it is containsValue. The intention was that if the user sets those properties (whatever personal reasons they have), the values should not get overwritten with a blank string.


---

* [SPARK-8864](https://issues.apache.org/jira/browse/SPARK-8864) | *Major* | **Date/time function and data type design**

Please see the attached design doc.


---

* [SPARK-8863](https://issues.apache.org/jira/browse/SPARK-8863) | *Minor* | **'spark\_ec2.py' doesn't check '~/.aws/credentials' even if boto can support '~/.aws/credentials'**

'spark\_ec2.py' use boto to control ec2.
And boto can support '~/.aws/credentials' which is AWS CLI default configuration file.

We can check this information from ref of boto.

"A boto config file is a text file formatted like an .ini configuration file that specifies values for options that control the behavior of the boto library.
In Unix/Linux systems, on startup, the boto library looks for configuration files in the following locations and in the following order:
/etc/boto.cfg - for site-wide settings that all users on this machine will use
(if profile is given) ~/.aws/credentials - for credentials shared between SDKs
(if profile is given) ~/.boto - for user-specific settings
~/.aws/credentials - for credentials shared between SDKs
~/.boto - for user-specific settings"

* ref of boto: http://boto.readthedocs.org/en/latest/boto\_config\_tut.html
* ref of aws cli : http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html

However 'spark\_ec2.py' only check boto config & environment variable even if there is '~/.aws/credentials', and 'spark\_ec2.py' is terminated.

So I changed to check '~/.aws/credentials'.


---

* [SPARK-8859](https://issues.apache.org/jira/browse/SPARK-8859) | *Major* | **Report accumulator updates via heartbeats (internal accumulator only)**

Let's add a flag to Accumulator to allow reporting their values back via heartbeats.

Initially, this flag should be reserved for internal usage, and not user accumulators.


---

* [SPARK-8852](https://issues.apache.org/jira/browse/SPARK-8852) | *Major* | **spark-streaming-flume-assembly packages too many dependencies**

This assembly was recently added to make it easier to start pyspark jobs that use the flume backend; but it packages way too many dependencies, several of which are already packaged in the main Spark assembly, making the final file unnecessarily large.

We should clean up the dependency tree for that module and only package what's really needed.


---

* [SPARK-8851](https://issues.apache.org/jira/browse/SPARK-8851) | *Major* | **in Yarn client mode, Client.scala does not login even when credentials are specified**

[#6051|https://github.com/apache/spark/pull/6051] added support for passing the credentials configuration from SparkConf, so the client mode works fine. This though created an issue where the Client.scala class does not login to the KDC, thus requiring a kinit before running in Client mode.


---

* [SPARK-8845](https://issues.apache.org/jira/browse/SPARK-8845) | *Minor* | **ML use of Breeze optimization: use adjustedValue not value?**

In LinearRegression and LogisticRegression, we use Breeze's optimizers (LBFGS and OWLQN).  We check the {{State.value}} to see the current objective.  However, Breeze's documentation makes it sound like {{value}} and {{adjustedValue}} differ for some optimizers, possibly including OWLQN: [https://github.com/scalanlp/breeze/blob/26faf622862e8d7a42a401aef601347aac655f2b/math/src/main/scala/breeze/optimize/FirstOrderMinimizer.scala#L36]

If that is the case, then we should use adjustedValue instead of value.  This is relevant to [SPARK-8538] and [SPARK-8539], where we will provide the objective trace to the user.

CC: [~dbtsai] Could you please take a look?  Thanks!


---

* [SPARK-8841](https://issues.apache.org/jira/browse/SPARK-8841) | *Trivial* | **Fix partition pruning percentage log message**

The log message printed by DataSourceStrategy when pruning partitions calculates the percentage pruned incorrectly.


---

* [SPARK-8840](https://issues.apache.org/jira/browse/SPARK-8840) | *Major* | **Float type coercion with hiveContext**

Problem with +float+ type coercion on SparkR with hiveContext.

{code}
> result <- sql(hiveContext, "SELECT offset, percentage from data limit 100")
> show(result)
DataFrame[offset:float, percentage:float]
> head(result)
Error in as.data.frame.default(x[[i]], optional = TRUE) :
    cannot coerce class ""jobj"" to a data.frame
{code}

This trouble looks like already exists (SPARK-2863 - Emulate Hive type
coercion in native reimplementations of Hive functions) with same
reason - not completed "native reimplementations of Hive..." not
"...functions" only.

I used spark 1.4.0 binaries from official site:
http://spark.apache.org/downloads.html
And running it on:
* Hortonworks HDP 2.2.0.0-2041
* with Hive 0.14
* with disabled hooks for Application Timeline Servers (ATSHook) in hive-site.xml, commented:
** hive.exec.failure.hooks,
** hive.exec.post.hooks,
** hive.exec.pre.hooks.


---

* [SPARK-8839](https://issues.apache.org/jira/browse/SPARK-8839) | *Major* | **Thrift Sever will throw `java.util.NoSuchElementException: key not found` exception when  many clients connect it**

If there are about 150+ JDBC clients connectting to the Thrift Server,  some clients will throw such exception:
{code:title=Exception message|borderStyle=solid}
java.sql.SQLException: java.util.NoSuchElementException: key not found: 90d93e56-7f6d-45bf-b340-e3ee09dd60fc
 at org.apache.hive.jdbc.Utils.verifySuccess(Utils.java:155)
{code}


---

* [SPARK-8831](https://issues.apache.org/jira/browse/SPARK-8831) | *Major* | **Support AbstractDataType in TypeCollection**

Otherwise it is impossible to declare an expression supporting DecimalType.


---

* [SPARK-8830](https://issues.apache.org/jira/browse/SPARK-8830) | *Major* | **levenshtein directly on top of UTF8String**

We currently rely on commons-lang's levenshtein implementation. Ideally, we should have our own implementation to:

1. Reduce external dependency
2. Work directly against UTF8String so we don't need to convert to/from java.lang.String back and forth.


---

* [SPARK-8823](https://issues.apache.org/jira/browse/SPARK-8823) | *Minor* | **Optimizations for sparse vector products in pyspark.mllib.linalg**

Currently we iterate over indices and values of both the sparse vectors that can be vectorized in NumPy.


---

* [SPARK-8822](https://issues.apache.org/jira/browse/SPARK-8822) | *Major* | **clean up type checking in math.scala**

There are various issues w.r.t. type checking in math.scala. Most of the custom implementation of checkInputTypes can be replaced with mixin ExpectsInputTypes.

There are also other minor issues, such as over complicating certain expressions due to the previous lack of implicit type casting among numeric types.


---

* [SPARK-8821](https://issues.apache.org/jira/browse/SPARK-8821) | *Major* | **The ec2 script doesn't run on python 3 with an utf8 env**

Otherwise the script will crash with

 - Downloading boto...
Traceback (most recent call last):
  File "ec2/spark\_ec2.py", line 148, in <module>
    setup\_external\_libs(external\_libs)
  File "ec2/spark\_ec2.py", line 128, in setup\_external\_libs
    if hashlib.md5(tar.read()).hexdigest() != lib["md5"]:
  File "/usr/lib/python3.4/codecs.py", line 319, in decode
    (result, consumed) = self.\_buffer\_decode(data, self.errors, final)
UnicodeDecodeError: 'utf-8' codec can't decode byte 0x8b in position 1: invalid start byte

In case of an utf8 env setting.


---

* [SPARK-8820](https://issues.apache.org/jira/browse/SPARK-8820) | *Minor* | **Add a configuration to set the checkpoint directory for convenience.**

Add a configuration named *spark.streaming.checkpointDir*  to set the checkpoint directory.
 It will overwrite by user if they also call *StreamingContext#checkpoint*.


---

* [SPARK-8819](https://issues.apache.org/jira/browse/SPARK-8819) | *Blocker* | **Spark doesn't compile with maven 3.3.x**

Simple reproduction: Install maven 3.3.3 and run "build/mvn clean package -DskipTests"

This works just fine for maven 3.2.1 but not for 3.3.x. The result is an infinite loop caused by MSHADE-148:
{code}
[INFO] Replacing /Users/andrew/Documents/dev/spark/andrew-spark/bagel/target/spark-bagel\_2.10-1.5.0-SNAPSHOT.jar with /Users/andrew/Documents/dev/spark/andrew-spark/bagel/target/spark-bagel\_2.10-1.5.0-SNAPSHOT-shaded.jar
[INFO] Dependency-reduced POM written at: /Users/andrew/Documents/dev/spark/andrew-spark/bagel/dependency-reduced-pom.xml
[INFO] Dependency-reduced POM written at: /Users/andrew/Documents/dev/spark/andrew-spark/bagel/dependency-reduced-pom.xml
...
{code}

This is ultimately caused by SPARK-7558 (master 9eb222c13991c2b4a22db485710dc2e27ccf06dd) but is recently revealed through SPARK-8781 (master 82cf3315e690f4ac15b50edea6a3d673aa5be4c0).


---

* [SPARK-8810](https://issues.apache.org/jira/browse/SPARK-8810) | *Major* | **Gaps in SQL UDF test coverage**

SQL UDFs are untested in GROUP BY, WHERE and HAVING clauses, and in combination.


---

* [SPARK-8809](https://issues.apache.org/jira/browse/SPARK-8809) | *Major* | **Remove ConvertNaNs analyzer rule**

Cast already handles "NaN" when casting from string to double/float. I don't think this rule is necessary anymore.


---

* [SPARK-8808](https://issues.apache.org/jira/browse/SPARK-8808) | *Major* | **Fix assignments in SparkR**

{noformat}
inst/tests/test\_binary\_function.R:79:12: style: Use <-, not =, for assignment.
  mockFile = c("Spark is pretty.", "Spark is awesome.")
{noformat}


---

* [SPARK-8807](https://issues.apache.org/jira/browse/SPARK-8807) | *Major* | **Add between operator in SparkR**

Add between operator in SparkR

```
df$age between c(1, 2)
```


---

* [SPARK-8804](https://issues.apache.org/jira/browse/SPARK-8804) | *Blocker* | ** order of UTF8String is wrong if there is any non-ascii character in it**

We compare the UTF8String byte by byte, but byte in JVM is signed, it should be compared as unsigned.


---

* [SPARK-8803](https://issues.apache.org/jira/browse/SPARK-8803) | *Major* | **Crosstab element's can't contain null's and back ticks**

Having back ticks or null as elements causes problems. 

Since elements become column names, we have to drop them from the element as back ticks are special characters.

Having null throws exceptions, we could replace them with empty strings.


---

* [SPARK-8801](https://issues.apache.org/jira/browse/SPARK-8801) | *Major* | **Support TypeCollection in ExpectsInputTypes**

Some functions support more than one input types for each parameter. For example, length supports binary and string, and maybe array/struct in the future.

This ticket proposes a TypeCollection AbstractDataType that supports multiple data types.


---

* [SPARK-8794](https://issues.apache.org/jira/browse/SPARK-8794) | *Major* | **Column pruning isn't applied beneath sample**

I observe that certain transformations (e.g. sample) on DataFrame cause the underlying relation's support for column pruning to be disregarded in subsequent queries.

I encountered this issue while using an ML pipeline with a typical dataset of (label, features).   For my particular data source (which implements PrunedScan), the 'features' column is expensive to compute while the 'label' column is cheap.  The first stage of the pipeline - StringIndexer - operates only on the label and so should be quick.   Yet I found that the 'features' column would be materialized.   Upon investigation,  the issue occurs when the dataset is split into train/test with sampling.   The sampling transformation causes the pruning optimization to be lost.

See this gist for a sample program demonstrating the issue:
[https://gist.github.com/EronWright/cb5fb9af46fd810194f8]


---

* [SPARK-8792](https://issues.apache.org/jira/browse/SPARK-8792) | *Major* | **Add Python API for PCA transformer**

Add Python API for PCA transformer


---

* [SPARK-8788](https://issues.apache.org/jira/browse/SPARK-8788) | *Minor* | **Java unit test for PCA transformer**

Add Java unit test for PCA transformer


---

* [SPARK-8787](https://issues.apache.org/jira/browse/SPARK-8787) | *Trivial* | **Change the parameter  order of @deprecated in package object sql**

Parameter order of @deprecated annotation  in package object sql is wrong 
deprecated("1.3.0", "use DataFrame") .

This has to be changed to  deprecated("use DataFrame", "1.3.0")


---

* [SPARK-8785](https://issues.apache.org/jira/browse/SPARK-8785) | *Major* | **Improve Parquet schema merging**

Currently, the parquet schema merging (ParquetRelation2.readSchema) may spend much time to merge duplicate schema. We can select only non duplicate schema and merge them later.


---

* [SPARK-8783](https://issues.apache.org/jira/browse/SPARK-8783) | *Minor* | **CTAS with WITH clause does not work**

Following CTAS with WITH clause query 
{code}
CREATE TABLE with\_table1 AS
WITH T AS (
  SELECT *
  FROM table1
)
SELECT *
FROM T
{code}
induces following error
{code}
no such table T; line 7 pos 5
org.apache.spark.sql.AnalysisException: no such table T; line 7 pos 5
...
{code}

I think that WITH clause within CTAS is not handled properly.


---

* [SPARK-8782](https://issues.apache.org/jira/browse/SPARK-8782) | *Blocker* | **GenerateOrdering fails for NullType (i.e. ORDER BY NULL crashes)**

Queries containing ORDER BY NULL currently result in a code generation exception:

{code}
      public SpecificOrdering generate(org.apache.spark.sql.catalyst.expressions.Expression[] expr) {
        return new SpecificOrdering(expr);
      }

      class SpecificOrdering extends org.apache.spark.sql.catalyst.expressions.codegen.BaseOrdering {

        private org.apache.spark.sql.catalyst.expressions.Expression[] expressions = null;

        public SpecificOrdering(org.apache.spark.sql.catalyst.expressions.Expression[] expr) {
          expressions = expr;
        }

        @Override
        public int compare(InternalRow a, InternalRow b) {
          InternalRow i = null;  // Holds current row being evaluated.
          
          i = a;
          final Object primitive1 = null;
          i = b;
          final Object primitive3 = null;
          if (true && true) {
            // Nothing
          } else if (true) {
            return -1;
          } else if (true) {
            return 1;
          } else {
            int comp = primitive1.compare(primitive3);
            if (comp != 0) {
              return comp;
            }
          }
      
          return 0;
        }
      }
org.codehaus.commons.compiler.CompileException: Line 29, Column 43: A method named "compare" is not declared in any enclosing class nor any supertype, nor through a static import
	at org.codehaus.janino.UnitCompiler.compileError(UnitCompiler.java:10174)
{code}


---

* [SPARK-8781](https://issues.apache.org/jira/browse/SPARK-8781) | *Blocker* | **Published POMs are no longer effective POMs**

Published to maven repository POMs are no longer effective POMs. E.g. 

In https://repository.apache.org/content/repositories/snapshots/org/apache/spark/spark-core\_2.11/1.4.2-SNAPSHOT/spark-core\_2.11-1.4.2-20150702.043114-52.pom:

{noformat}
...
<dependency>
<groupId>org.apache.spark</groupId>
<artifactId>spark-launcher\_${scala.binary.version}</artifactId>
<version>${project.version}</version>
</dependency>
...
{noformat}

while it should be

{noformat}
...
<dependency>
<groupId>org.apache.spark</groupId>
<artifactId>spark-launcher\_2.11</artifactId>
<version>${project.version}</version>
</dependency>
...
{noformat}


The following commits are most likely the cause of it:
- for branch-1.3: https://github.com/apache/spark/commit/ce137b8ed3b240b7516046699ac96daa55ddc129
- for branch-1.4: https://github.com/apache/spark/commit/84da653192a2d9edb82d0dbe50f577c4dc6a0c78
- for master: https://github.com/apache/spark/commit/984ad60147c933f2d5a2040c87ae687c14eb1724

On branch-1.4 reverting the commit fixed the issue.

See SPARK-3812 for additional details


---

* [SPARK-8777](https://issues.apache.org/jira/browse/SPARK-8777) | *Major* | **Add random data generation test utilities to Spark SQL**

We should add utility functions for generating data that conforms to a given SparkSQL DataType or Schema. This would make it significantly easier to write certain types of tests.


---

* [SPARK-8776](https://issues.apache.org/jira/browse/SPARK-8776) | *Major* | **Increase the default MaxPermSize**

Since 1.4.0, Spark SQL has isolated class loaders for seperating hive dependencies on metastore and execution, which increases the memory consumption of PermGen. How about we increase the default size from 128m to 256m? Seems the change we need to make is https://github.com/apache/spark/blob/3c0156899dc1ec1f7dfe6d7c8af47fa6dc7d00bf/launcher/src/main/java/org/apache/spark/launcher/AbstractCommandBuilder.java#L139.


---

* [SPARK-8774](https://issues.apache.org/jira/browse/SPARK-8774) | *Critical* | **Add R model formula with basic support as a transformer**

To have better integration with SparkR, we can add a feature transformer to support R formula. A list of operators R supports can be find here: http://ww2.coastal.edu/kingw/statistics/R-tutorials/formulae.html

The initial version should support "~", "+", and "." on numeric columns and we can expand it in the future.

{code}
val formula = new RModelFormula()
  .setFormula("y ~ x + z")
{code}

The output should append two new columns: features and label.

Design doc is posted at https://docs.google.com/document/d/10NZNSEurN2EdWM31uFYsgayIPfCFHiuIu3pCWrUmP\_c/edit?usp=sharing, as part of SPARK-6805.


---

* [SPARK-8772](https://issues.apache.org/jira/browse/SPARK-8772) | *Major* | **Implement implicit type cast for expressions that define expected input types**

We should have a engine-wide implicit cast rule defined.


---

* [SPARK-8771](https://issues.apache.org/jira/browse/SPARK-8771) | *Trivial* | **Actor system deprecation tag uses deprecated deprecation tag**

The deprecation of the actor system adds a spurious build warning:
{quote}
@deprecated now takes two arguments; see the scaladoc.
[warn]   @deprecated("Actor system is no longer supported as of 1.4")
{quote}


---

* [SPARK-8770](https://issues.apache.org/jira/browse/SPARK-8770) | *Major* | **BinaryOperator expression**

Our current BinaryExpression abstract class is not for generic binary expressions, i.e. it requires left/right children to have the same type. However, due to its name, contributors build new binary expressions that don't have that assumption (e.g. Sha) and still extend BinaryExpression.

We should create a new BinaryOperator abstract class with this assumption, and update the analyzer to only apply type casting rule there.


---

* [SPARK-8769](https://issues.apache.org/jira/browse/SPARK-8769) | *Trivial* | **toLocalIterator should mention it results in many jobs**

toLocalIterator on RDDs should mention that it results in mutliple jobs, and that to avoid re-computing, if the input was the result of a wide-transformation, the input should be cached.


---

* [SPARK-8765](https://issues.apache.org/jira/browse/SPARK-8765) | *Critical* | **Flaky PySpark PowerIterationClustering test**

See failure: [https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/36133/console]

{code}
**********************************************************************
File "/home/jenkins/workspace/SparkPullRequestBuilder/python/pyspark/mllib/clustering.py", line 291, in \_\_main\_\_.PowerIterationClusteringModel
Failed example:
    sorted(model.assignments().collect())
Expected:
    [Assignment(id=0, cluster=1), Assignment(id=1, cluster=0), ...
Got:
    [Assignment(id=0, cluster=1), Assignment(id=1, cluster=1), Assignment(id=2, cluster=1), Assignment(id=3, cluster=1), Assignment(id=4, cluster=0)]
**********************************************************************
File "/home/jenkins/workspace/SparkPullRequestBuilder/python/pyspark/mllib/clustering.py", line 299, in \_\_main\_\_.PowerIterationClusteringModel
Failed example:
    sorted(sameModel.assignments().collect())
Expected:
    [Assignment(id=0, cluster=1), Assignment(id=1, cluster=0), ...
Got:
    [Assignment(id=0, cluster=1), Assignment(id=1, cluster=1), Assignment(id=2, cluster=1), Assignment(id=3, cluster=1), Assignment(id=4, cluster=0)]
**********************************************************************
   2 of  13 in \_\_main\_\_.PowerIterationClusteringModel
***Test Failed*** 2 failures.

Had test failures in pyspark.mllib.clustering with python2.6; see logs.
{code}

CC: [~mengxr] [~yanboliang]


---

* [SPARK-8763](https://issues.apache.org/jira/browse/SPARK-8763) | *Major* | **executing run-tests.py with Python 2.6 fails with absence of subprocess.check\_output function**

Running run-tests.py with Python 2.6 cause following error:

{noformat}
Running PySpark tests. Output is in python//Users/tomohiko/.jenkins/jobs/pyspark\_test/workspace/python/unit-tests.log
Will test against the following Python executables: ['python2.6', 'python3.4', 'pypy']
Will test the following Python modules: ['pyspark-core', 'pyspark-ml', 'pyspark-mllib', 'pyspark-sql', 'pyspark-streaming']
Traceback (most recent call last):
  File "./python/run-tests.py", line 196, in <module>
    main()
  File "./python/run-tests.py", line 159, in main
    python\_implementation = subprocess.check\_output(
AttributeError: 'module' object has no attribute 'check\_output'
...
{noformat}

The cause of this error is using subprocess.check\_output function, which exists since Python 2.7.
(ref. https://docs.python.org/2.7/library/subprocess.html#subprocess.check\_output)


---

* [SPARK-8758](https://issues.apache.org/jira/browse/SPARK-8758) | *Major* | **Add Python user guide for PowerIterationClustering**

Add Python user guide for PowerIterationClustering


---

* [SPARK-8754](https://issues.apache.org/jira/browse/SPARK-8754) | *Minor* | **YarnClientSchedulerBackend doesn't stop gracefully in failure conditions**

{code:xml}
java.lang.NullPointerException
        at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.stop(YarnClientSchedulerBackend.scala:151)
        at org.apache.spark.scheduler.TaskSchedulerImpl.stop(TaskSchedulerImpl.scala:421)
        at org.apache.spark.scheduler.DAGScheduler.stop(DAGScheduler.scala:1447)
        at org.apache.spark.SparkContext.stop(SparkContext.scala:1651)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:572)
        at org.apache.spark.examples.SparkPi$.main(SparkPi.scala:28)
        at org.apache.spark.examples.SparkPi.main(SparkPi.scala)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:621)
        at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:170)
        at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:193)
        at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:112)
        at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{code}

If the application has FINISHED/FAILED/KILLED or failed to launch application master, monitorThread is not getting initialized but monitorThread.interrupt() is getting invoked as part of stop() without any check and It is causing to throw NPE and also it is preventing to stop the client.


---

* [SPARK-8753](https://issues.apache.org/jira/browse/SPARK-8753) | *Major* | **Create an IntervalType data type**

We should create an IntervalType data type that represents time intervals. Internally, we can use a long value to store it, similar to Timestamp (i.e. 100ns precision). This data type initially cannot be stored externally, but only used for expressions.

1. Add IntervalType data type.

2. Add parser support in our SQL expression, in the form of

{code}
INTERVAL [number] [unit] 
{code}

unit can be YEAR[S], MONTH[S], WEEK[S], DAY[S], HOUR[S], MINUTE[S], SECOND[S], MILLISECOND[S], MICROSECOND[S], or NANOSECOND[S].

3. Add in the analyzer to make sure we throw some exception to prevent saving a dataframe/table with IntervalType out to external systems.

Related Hive ticket: https://issues.apache.org/jira/browse/HIVE-9792


---

* [SPARK-8750](https://issues.apache.org/jira/browse/SPARK-8750) | *Major* | **Remove the closure in functions.callUdf**

{code}
[warn] /Users/yhuai/Projects/Spark/yin-spark-1/sql/core/src/main/scala/org/apache/spark/sql/functions.scala:1829: Class org.apache.spark.sql.functions$$anonfun$callUDF$1 differs only in case from org.apache.spark.sql.functions$$anonfun$callUdf$1. Such classes will overwrite one another on case-insensitive filesystems.
{code}


---

* [SPARK-8749](https://issues.apache.org/jira/browse/SPARK-8749) | *Major* | **Remove HiveTypeCoercion trait**

It is easier to test rules if they are in the companion object.


---

* [SPARK-8748](https://issues.apache.org/jira/browse/SPARK-8748) | *Major* | **Move castability test out from Cast case class into Cast object**

So we can use it as static methods in the analyzer.


---

* [SPARK-8746](https://issues.apache.org/jira/browse/SPARK-8746) | *Trivial* | **Need to update download link for Hive 0.13.1 jars (HiveComparisonTest)**

The Spark SQL documentation (https://github.com/apache/spark/tree/master/sql) describes how to generate golden answer files for new hive comparison test cases. However the download link for the Hive 0.13.1 jars points to https://hive.apache.org/downloads.html but none of the linked mirror sites still has the 0.13.1 version.

We need to update the link to https://archive.apache.org/dist/hive/hive-0.13.1/


---

* [SPARK-8743](https://issues.apache.org/jira/browse/SPARK-8743) | *Major* | **Deregister Codahale metrics for streaming when StreamingContext is closed**

Currently, when the StreamingContext is closed, the registered metrics are not deregistered. If another streaming context is started, it throws a warning saying that the metrics are already registered. 

The solution is to deregister the metrics when streamingcontext is stopped.


---

* [SPARK-8741](https://issues.apache.org/jira/browse/SPARK-8741) | *Major* | **Remove e and pi from DataFrame functions**

It is not really useful to have dataframe functions that return numeric constants available already in all programming languages. We should keep the expression for SQL, but nothing else.


---

* [SPARK-8740](https://issues.apache.org/jira/browse/SPARK-8740) | *Minor* | **Support GitHub OAuth tokens in dev/merge\_spark\_pr.py**

We should allow dev/merge\_spark\_pr.py to use personal GitHub OAuth tokens in order to make authenticated requests. This is necessary to work around per-IP rate limiting issues.


---

* [SPARK-8739](https://issues.apache.org/jira/browse/SPARK-8739) | *Major* | **Illegal character `\r` can be contained in StagePage.**

There is a following code in StagePage.scala.

{code}
                   |width="$serializationTimeProportion%"></rect>
                 |<rect class="getting-result-time-proportion"
                   |x="$gettingResultTimeProportionPos%" y="0px" height="26px"
                   |width="$gettingResultTimeProportion%"></rect></svg>',
               |'start': new Date($launchTime),
               |'end': new Date($finishTime)
             |}
           |""".stripMargin.replaceAll("\n", " ")
{code}

The last `replaceAll("\n", "") doesn't work when we checkout and build source code on Windows and deploy on Linux.
It's because when we checkout the source code on Windows, new-line-code is replaced with "\r\n" and replaceAll("\n", "") replaces only "\n".


---

* [SPARK-8738](https://issues.apache.org/jira/browse/SPARK-8738) | *Major* | **Generate better error message in Python for AnalysisException**

The long Java stack trace is hard to read.


---

* [SPARK-8736](https://issues.apache.org/jira/browse/SPARK-8736) | *Critical* | **GBTRegressionModel thresholds prediction but should not**

It outputs 0/1 as though it is doing classification.  It should not.


---

* [SPARK-8727](https://issues.apache.org/jira/browse/SPARK-8727) | *Major* | **Add missing python api**

Add the python api that is missing for

https://issues.apache.org/jira/browse/SPARK-8248
https://issues.apache.org/jira/browse/SPARK-8234
https://issues.apache.org/jira/browse/SPARK-8217
https://issues.apache.org/jira/browse/SPARK-8215
https://issues.apache.org/jira/browse/SPARK-8212


---

* [SPARK-8721](https://issues.apache.org/jira/browse/SPARK-8721) | *Major* | **Rename ExpectsInputTypes =\> AutoCastInputTypes**

ExpectsInputTypes is confusingly named because it does auto type cast.


---

* [SPARK-8718](https://issues.apache.org/jira/browse/SPARK-8718) | *Minor* | **Improve EdgePartition2D for non perfect square number of partitions**

The current implementation of EdgePartition2D has a major limitation:

bq. One of the limitations of this approach is that the number of machines must either be a perfect square. We partially address this limitation by computing the machine assignment to the next largest perfect square and then mapping back down to the actual number of machines. Unfortunately, this can also lead to work imbalance and so it is suggested that a perfect square is used.

To remove this limitation I'm proposing the following code change. It allows us to partition into any number of evenly sized bins while maintaining the property that any vertex will only need to be replicated at most 2 * sqrt(numParts) times. To maintain current behavior for perfect squares we use the old algorithm in that case, although this could be removed if we dont care about producing the exact same result.

See this IPython notebook for a visualization of what is being proposed [https://github.com/aray/e2d/blob/master/EdgePartition2D.ipynb] and download it to interactively change the number of partitions.


---

* [SPARK-8715](https://issues.apache.org/jira/browse/SPARK-8715) | *Major* | **ArrayOutOfBoundsException for DataFrameStatSuite.crosstab**

columnNames may turn out to be less than 9 elements. Use columnNames.length in the for loop instead.


---

* [SPARK-8713](https://issues.apache.org/jira/browse/SPARK-8713) | *Major* | **Support codegen for not thread-safe expressions**

Currently, we disable codegen if any expression is not thread safe. We should support that, but disable caching the compiled expresssions.


---

* [SPARK-8710](https://issues.apache.org/jira/browse/SPARK-8710) | *Major* | **ScalaReflection.mirror should be a def**

Right now, it is a val (https://github.com/apache/spark/blob/master/sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/ScalaReflection.scala#L31). This introduces problems when we trigger the creation of ScalaReflection in one thread and use it in another thread.


---

* [SPARK-8709](https://issues.apache.org/jira/browse/SPARK-8709) | *Major* | **Exclude hadoop-client's mockito-all dependency to fix test compilation break for Hadoop 2**

{{build/sbt -Phadoop-1 -Dhadoop.version=2.0.0-mr1-cdh4.1.1 -Phive -Pkinesis-asl -Phive-thriftserver core/test:compile}} currently fails to compile:

{code}
[error] /Users/joshrosen/Documents/spark/core/src/test/java/org/apache/spark/shuffle/unsafe/UnsafeShuffleWriterSuite.java:117: error: cannot find symbol
[error]     when(shuffleMemoryManager.tryToAcquire(anyLong())).then(returnsFirstArg());
[error]                                                       ^
[error]   symbol:   method then(Answer<Object>)
[error]   location: interface OngoingStubbing<Long>
[error] /Users/joshrosen/Documents/spark/core/src/test/java/org/apache/spark/shuffle/unsafe/UnsafeShuffleWriterSuite.java:408: error: cannot find symbol
[error]       .then(returnsFirstArg()) // Allocate initial sort buffer
[error]       ^
[error]   symbol:   method then(Answer<Object>)
[error]   location: interface OngoingStubbing<Long>
[error] /Users/joshrosen/Documents/spark/core/src/test/java/org/apache/spark/shuffle/unsafe/UnsafeShuffleWriterSuite.java:435: error: cannot find symbol
[error]       .then(returnsFirstArg()) // Allocate initial sort buffer
[error]       ^
[error]   symbol:   method then(Answer<Object>)
[error]   location: interface OngoingStubbing<Long>
[error] 3 errors
[error] (core/test:compile) javac returned nonzero exit code
[error] Total time: 60 s, completed Jun 29, 2015 11:03:13 AM
{code}

This is because {{hadoop-client}} pulls in a dependency on {{mockito-all}}, but I recently changed Spark to depend on {{mockito-core}} instead, which caused Hadoop's earlier Mockito version to take precedence over our newer version.


---

* [SPARK-8708](https://issues.apache.org/jira/browse/SPARK-8708) | *Major* | **MatrixFactorizationModel.predictAll() populates single partition only**

When using mllib.recommendation.ALS the RDD returned by .predictAll() has all values pushed into single partition despite using quite high parallelism.

This degrades performance of further processing (I can obviously run .partitionBy()) to balance it but that's still too costly (ie if running .predictAll() in loop for thousands of products) and should be possible to do it rather somehow on the model (automatically)).

Bellow is an example on tiny sample (same on large dataset):

{code:title=pyspark}
>>> r1 = (1, 1, 1.0)
>>> r2 = (1, 2, 2.0)
>>> r3 = (2, 1, 2.0)
>>> r4 = (2, 2, 2.0)
>>> r5 = (3, 1, 1.0)
>>> ratings = sc.parallelize([r1, r2, r3, r4, r5], 5)
>>> ratings.getNumPartitions()
5
>>> users = ratings.map(itemgetter(0)).distinct()
>>> model = ALS.trainImplicit(ratings, 1, seed=10)
>>> predictions\_for\_2 = model.predictAll(users.map(lambda u: (u, 2)))
>>> predictions\_for\_2.glom().map(len).collect()
[0, 0, 3, 0, 0]
{code}


---

* [SPARK-8706](https://issues.apache.org/jira/browse/SPARK-8706) | *Major* | **Implement Pylint / Prospector checks for PySpark**

It would be nice to implement Pylint / Prospector (https://github.com/landscapeio/prospector) checks for PySpark. As with the style checker rules, I'll imagine that we'll want to roll out new rules gradually in order to avoid a mass refactoring commit.

For starters, we should create a pull request that introduces the harness for running the linters, add a configuration file which enables only the lint checks that currently pass, and install the required dependencies on Jenkins. Once we've done this, we can open a series of smaller followup PRs to gradually enable more linting checks and to fix existing violations.


---

* [SPARK-8705](https://issues.apache.org/jira/browse/SPARK-8705) | *Major* | **Javascript error in the web console when `totalExecutionTime` of a task is 0**

Because System.currentTimeMillis() is not accurate for tasks that only need several milliseconds, sometimes totalExecutionTime in makeTimeline will be 0. If totalExecutionTime is 0, there will the following error in the console.

!https://cloud.githubusercontent.com/assets/1000778/8406776/5cd38e04-1e92-11e5-89f2-0c5134fe4b6b.png!


---

* [SPARK-8704](https://issues.apache.org/jira/browse/SPARK-8704) | *Major* | **Add missing methods in StandardScaler (ML and PySpark)**

Add std, mean to StandardScalerModel


---

* [SPARK-8703](https://issues.apache.org/jira/browse/SPARK-8703) | *Major* | **Add CountVectorizer as a ml transformer to convert document to words count vector**

Converts a text document to a sparse vector of token counts. Similar to http://scikit-learn.org/stable/modules/generated/sklearn.feature\_extraction.text.CountVectorizer.html

I can further add an estimator to extract vocabulary from corpus if that's appropriate.


---

* [SPARK-8702](https://issues.apache.org/jira/browse/SPARK-8702) | *Major* | **Avoid massive concating strings in Javascript**

When there are massive tasks, such as {{sc.parallelize(1 to 100000, 10000).count()}}, the generated JS codes have a lot of string concatenations in the stage page, nearly 40 string concatenations for one task.

We can generate the whole string for a task instead of execution string concatenations in the browser.


---

* [SPARK-8693](https://issues.apache.org/jira/browse/SPARK-8693) | *Minor* | **profiles and goals are not printed in a nice way**

In our master build, I see
{code}
-Phadoop-1[info] Building Spark (w/Hive 0.13.1) using SBT with these arguments:  -Dhadoop.version=1.0.4[info] Building Spark (w/Hive 0.13.1) using SBT with these arguments:  -Pkinesis-asl[info] Building Spark (w/Hive 0.13.1) using SBT with these arguments:  -Phive-thriftserver[info] Building Spark (w/Hive 0.13.1) using SBT with these arguments:  -Phive[info] Building Spark (w/Hive 0.13.1) using SBT with these arguments:  package[info] Building Spark (w/Hive 0.13.1) using SBT with these arguments:  assembly/assembly[info] Building Spark (w/Hive 0.13.1) using SBT with these arguments:  streaming-kafka-assembly/assembly
{code}
Seems we format the string in a wrong way?


---

* [SPARK-8690](https://issues.apache.org/jira/browse/SPARK-8690) | *Minor* | **Add a setting to disable SparkSQL parquet schema merge by using datasource API**

We need a general config to disable the parquet schema merge feature. 

Our sparkSQL application requirement is 

# In spark 1.1, 1.2, sparkSQL read parquet time is around 1~5 sec. We don't want increase too much read parquet time. Around 2000 parquet file,  the schema is the same. So we don't need  schema merge feature
# We need to use datasource API's feature like partition discovery. So we cannot use Spark 1.2 or pervious version 
# We have a lot of SparkSQL product. We use *sqlContext.parquetFile(filename)* to read the parquet file. We don't want to change the application code. One setting to disable this feature is what we want 


In  1.4, we have serval method. But both of them cannot perfect match our use case 

# Set spark.sql.parquet.useDataSourceApi to false. It will match requirement 1,3. But it will use old parquet API and fail in requirement 2 
# Use sqlContext.load("parquet" , Map( "path" -> "..." , "mergeSchema" -> "false" ))  will meet requirement 1,2. But it need to change a lot of code we use in parquet load. 
# Spark 1.4 improve a lot on schema merge than 1.3. But directly use default version of parquet will increase the load time from 1~5 sec to 100 sec. It will fail requirement 1. 
# Try PR 5231 config. But it  cannot disable schema merge. 

I think it is better to use a config to disable datasource API's schema merge feature. A PR will be provide later


---

* [SPARK-8688](https://issues.apache.org/jira/browse/SPARK-8688) | *Major* | **Hadoop Configuration has to disable client cache when writing or reading delegation tokens.**

In class *AMDelegationTokenRenewer* and *ExecutorDelegationTokenUpdater*, Spark will write and read the credentials.
But if we don't disable the *fs.hdfs.impl.disable.cache*, Spark will use cached  FileSystem (which will use old token ) to  upload or download file.
Then when the old token is expired, it can't gain the auth to get/put the hdfs.

(I only tested in a very short time with the configuration:
dfs.namenode.delegation.token.renew-interval=3min
dfs.namenode.delegation.token.max-lifetime=10min
I'm not sure whatever it matters.
 )


---

* [SPARK-8687](https://issues.apache.org/jira/browse/SPARK-8687) | *Major* | **Spark on yarn-client mode can't send `spark.yarn.credentials.file` to executor.**

Yarn will set +spark.yarn.credentials.file+ after *DriverEndpoint* initialized. So executor will fetch the old configuration and will cause the problem.


---

* [SPARK-8686](https://issues.apache.org/jira/browse/SPARK-8686) | *Minor* | **DataFrame should support `where` with expression represented by String**

DataFrame supports `filter` function with two types of argument, `Column` and `String`. But `where` doesn't.


---

* [SPARK-8685](https://issues.apache.org/jira/browse/SPARK-8685) | *Major* | **dataframe left joins are not working as expected in pyspark**

I have the following code:

{code}
from pyspark import SQLContext

d1 = [{'name':'bob', 'country': 'usa', 'age': 1},
{'name':'alice', 'country': 'jpn', 'age': 2}, 
{'name':'carol', 'country': 'ire', 'age': 3}]

d2 = [{'name':'bob', 'country': 'usa', 'colour':'red'},
{'name':'carol', 'country': 'ire', 'colour':'green'}]

r1 = sc.parallelize(d1)
r2 = sc.parallelize(d2)

sqlContext = SQLContext(sc)
df1 = sqlContext.createDataFrame(d1)
df2 = sqlContext.createDataFrame(d2)
df1.join(df2, (df1.name == df2.name) & (df1.country == df2.country), 'left\_outer').collect()
{code}

When I run it I get the following, (notice in the first row, all join keys are take from the right-side and so are blanked out):

{code}
[Row(age=2, country=None, name=None, colour=None, country=None, name=None),
Row(age=1, country=u'usa', name=u'bob', colour=u'red', country=u'usa', name=u'bob'),
Row(age=3, country=u'ire', name=u'carol', colour=u'green', country=u'ire', name=u'alice')]
{code}

I would expect to get (though ideally without duplicate columns):
{code}
[Row(age=2, country=u'ire', name=u'alice', colour=None, country=None, name=None),
Row(age=1, country=u'usa', name=u'bob', colour=u'red', country=u'usa', name=u'bob'),
Row(age=3, country=u'ire', name=u'carol', colour=u'green', country=u'ire', name=u'alice')]
{code}

The workaround for now is this rather clunky piece of code:
{code}
df2 = sqlContext.createDataFrame(d2).withColumnRenamed('name', 'name2').withColumnRenamed('country', 'country2')
df1.join(df2, (df1.name == df2.name2) & (df1.country == df2.country2), 'left\_outer').collect()
{code}

Also, {{.show()}} works
{code}
sqlContext = SQLContext(sc)
df1 = sqlContext.createDataFrame(d1)
df2 = sqlContext.createDataFrame(d2)
df1.join(df2, (df1.name == df2.name) & (df1.country == df2.country), 'left\_outer').show()
+---+-------+-----+------+-------+-----+
|age|country| name|colour|country| name|
+---+-------+-----+------+-------+-----+
|  3|    ire|carol| green|    ire|carol|
|  2|    jpn|alice|  null|   null| null|
|  1|    usa|  bob|   red|    usa|  bob|
+---+-------+-----+------+-------+-----+
{code}


---

* [SPARK-8683](https://issues.apache.org/jira/browse/SPARK-8683) | *Major* | **Depend on mockito-core instead of mockito-all**

Spark's tests currently depend on {{mockito-all}}, which bundles Hamcrest and Objenesis classes. Instead, it should depend on {{mockito-core}}, which declares those libraries as Maven dependencies. This is necessary in order to fix a dependency conflict that leads to a NoSuchMethodError when using certain Hamcrest matchers.

See https://github.com/mockito/mockito/wiki/Declaring-mockito-dependency for more details.


---

* [SPARK-8680](https://issues.apache.org/jira/browse/SPARK-8680) | *Major* | **PropagateTypes is very slow when there are lots of columns**

The time for PropagateTypes is O(N*N), N is the number of columns, which is very slow if there many columns (>1000)

There easiest optimization could be put `q.inputSet` outside of  transformExpressions which could have about 4 times improvement for N=3000


---

* [SPARK-8678](https://issues.apache.org/jira/browse/SPARK-8678) | *Major* | **Default values in Pipeline API should be immutable**

If the default params are mutable, then if the function or method is called again without any value for the default params, then the changed values are used.


---

* [SPARK-8675](https://issues.apache.org/jira/browse/SPARK-8675) | *Major* | **Executors created by LocalBackend won't get the same classpath as other executor backends**

AFAIK, some spark application always use LocalBackend to do some local initiatives, spark sql is an example.  Starting a LocalPoint won't add user classpath into executor. 

{noformat}
  override def start() {
    localEndpoint = SparkEnv.get.rpcEnv.setupEndpoint(
      "LocalBackendEndpoint", new LocalEndpoint(SparkEnv.get.rpcEnv, scheduler, this, totalCores))
  }
{noformat}

Thus will cause local executor fail with these scenarios,  loading hadoop built-in native libraries,  loading other user defined native libraries, loading user jars,  reading s3 config from a site.xml file, etc


---

* [SPARK-8669](https://issues.apache.org/jira/browse/SPARK-8669) | *Major* | **Parquet 1.7 files that store binary enums crash when inferring schema**

Loading a Parquet 1.7 file that contains a binary ENUM field in Spark 1.5-SNAPSHOT crashes with the following exception:

{noformat}
  org.apache.spark.sql.AnalysisException: Illegal Parquet type: BINARY (ENUM);
  at org.apache.spark.sql.parquet.CatalystSchemaConverter.illegalType$1(CatalystSchemaConverter.scala:129)
  at org.apache.spark.sql.parquet.CatalystSchemaConverter.convertPrimitiveField(CatalystSchemaConverter.scala:184)
  at org.apache.spark.sql.parquet.CatalystSchemaConverter.convertField(CatalystSchemaConverter.scala:114)
...
{noformat}


---

* [SPARK-8664](https://issues.apache.org/jira/browse/SPARK-8664) | *Major* | **Add PCA transformer**

Add PCA transformer for ML pipeline


---

* [SPARK-8662](https://issues.apache.org/jira/browse/SPARK-8662) | *Major* | **[SparkR] SparkSQL tests fail in R 3.2**

SparkR tests for equality using `all.equal` on environments fail in R 3.2.

This is due to a change in how equality between environments is handled in the new version of R.

This should most likely not be a huge problem, we'll just have to rewrite some of the tests to be more fine-grained instead of testing equality on entire environments.


---

* [SPARK-8661](https://issues.apache.org/jira/browse/SPARK-8661) | *Major* | **Update comments that contain R statements in ml.LinearRegressionSuite**

Similar to SPARK-8660, but for ml.LinearRegressionSuite: https://github.com/apache/spark/blob/master/mllib/src/test/scala/org/apache/spark/ml/regression/LinearRegressionSuite.scala.


---

* [SPARK-8660](https://issues.apache.org/jira/browse/SPARK-8660) | *Trivial* | **Update comments that contain R statements in ml.logisticRegressionSuite**

We put R statements as comments in unit test. However, there are two issues:

1. JavaDoc style "/** ... */" is used instead of normal multiline comment "/* ... */".
2. We put a leading "*" on each line. It is hard to copy & paste the commands to/from R and verify the result.

For example, in https://github.com/apache/spark/blob/master/mllib/src/test/scala/org/apache/spark/ml/classification/LogisticRegressionSuite.scala#L504

{code}
    /**
     * Using the following R code to load the data and train the model using glmnet package.
     *
     * > library("glmnet")
     * > data <- read.csv("path", header=FALSE)
     * > label = factor(data$V1)
     * > features = as.matrix(data.frame(data$V2, data$V3, data$V4, data$V5))
     * > weights = coef(glmnet(features,label, family="binomial", alpha = 1.0, lambda = 6.0))
     * > weights
     * 5 x 1 sparse Matrix of class "dgCMatrix"
     *                      s0
     * (Intercept) -0.2480643
     * data.V2      0.0000000
     * data.V3       .
     * data.V4       .
     * data.V5       .
     */
{code}

should change to

{code}
    /*
      Using the following R code to load the data and train the model using glmnet package.
     
      library("glmnet")
      data <- read.csv("path", header=FALSE)
      label = factor(data$V1)
      features = as.matrix(data.frame(data$V2, data$V3, data$V4, data$V5))
      weights = coef(glmnet(features,label, family="binomial", alpha = 1.0, lambda = 6.0))
      weights

      5 x 1 sparse Matrix of class "dgCMatrix"
                           s0
      (Intercept) -0.2480643
      data.V2      0.0000000
      data.V3       .
      data.V4       .
      data.V5       .
    */
{code}


---

* [SPARK-8657](https://issues.apache.org/jira/browse/SPARK-8657) | *Minor* | **Fail to upload conf archive to viewfs**

When I run in spark-1.4 yarn-client mode, I throws the following Exception when trying to upload conf archive to viewfs:

15/06/26 17:56:37 INFO yarn.Client: Uploading resource file:/tmp/spark-095ec3d2-5dad-468c-8d46-2c813457404d/\_\_hadoop\_conf\_\_8436284925771788661
.zip -> viewfs://nsX/user/ultraman/.sparkStaging/application\_1434370929997\_191242/\_\_hadoop\_conf\_\_8436284925771788661.zip
15/06/26 17:56:38 INFO yarn.Client: Deleting staging directory .sparkStaging/application\_1434370929997\_191242
15/06/26 17:56:38 ERROR spark.SparkContext: Error initializing SparkContext.
java.lang.IllegalArgumentException: Wrong FS: hdfs://SunshineNameNode2:8020/user/ultraman/.sparkStaging/application\_1434370929997\_191242/\_\_had
oop\_conf\_\_8436284925771788661.zip, expected: viewfs://nsX/
        at org.apache.hadoop.fs.FileSystem.checkPath(FileSystem.java:645)
        at org.apache.hadoop.fs.viewfs.ViewFileSystem.getUriPath(ViewFileSystem.java:117)
        at org.apache.hadoop.fs.viewfs.ViewFileSystem.getFileStatus(ViewFileSystem.java:346)
        at org.apache.spark.deploy.yarn.ClientDistributedCacheManager.addResource(ClientDistributedCacheManager.scala:67)
        at org.apache.spark.deploy.yarn.Client$$anonfun$prepareLocalResources$5.apply(Client.scala:341)
        at org.apache.spark.deploy.yarn.Client$$anonfun$prepareLocalResources$5.apply(Client.scala:338)
        at scala.Option.foreach(Option.scala:236)
        at org.apache.spark.deploy.yarn.Client.prepareLocalResources(Client.scala:338)
        at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:559)
        at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:115)
        at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:58)
        at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:141)
        at org.apache.spark.SparkContext.<init>(SparkContext.scala:497)
        at org.apache.spark.repl.SparkILoop.createSparkContext(SparkILoop.scala:1017)
        at $line3.$read$$iwC$$iwC.<init>(<console>:9)
        at $line3.$read$$iwC.<init>(<console>:18)
        at $line3.$read.<init>(<console>:20)
        at $line3.$read$.<init>(<console>:24)
        at $line3.$read$.<clinit>(<console>)
        at $line3.$eval$.<init>(<console>:7)
        at $line3.$eval$.<clinit>(<console>)
        at $line3.$eval.$print(<console>)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
        at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1338)
        at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)

The bug is easy to fix, we should pass the correct file system object to addResource. The similar issure is: https://github.com/apache/spark/pull/1483. I will attach my bug fix PR very soon.


---

* [SPARK-8656](https://issues.apache.org/jira/browse/SPARK-8656) | *Minor* | **Spark Standalone master json API's worker number is not match web UI number**

Spark standalone master web UI show  "Alive workers" worker number, "Alive Workers" total core, total used cores and "Alive workers" total memory, memory used. 
But the JSON API page "http://MASTERURL:8088/json" shows "all workers" worker number, core, memory number. 
This webUI data is not sync with the JSON API. 

The proper way is to sync the number with webUI and JSON API.


---

* [SPARK-8652](https://issues.apache.org/jira/browse/SPARK-8652) | *Blocker* | **PySpark tests sometimes forget to check return status of doctest.testmod(), masking failing tests**

Several PySpark files call {{doctest.testmod()}} in order to run doctests, but forget to check its return status. As a result, failures will not be automatically detected by our test runner script, creating the potential for bugs to slip through.


---

* [SPARK-8647](https://issues.apache.org/jira/browse/SPARK-8647) | *Minor* | **Potential issues with the constant hashCode**

Hi,

This may be potential bug or performance issue or just the code docs.

The issue is wrt to MatrixUDT class.
 If we decide to put instance of MatrixUDT into the hash based collection.
The hashCode function is returning constant and even though equals method is consistant with hashCode. I don't see the reason why hashCode() = 1994 (i.e constant) has been used.

I was expecting it to be similar to the other matrix class or the vector class .

If there is the reason why we have this code, we should document it properly in the code so that others reading it is fine.

regards,
Alok

Details
=====
a)
In reference to the file 
https://github.com/apache/spark/blob/master/mllib/src/main/scala/org/apache/spark/mllib/linalg/Matrices.scala

line 188-197 ie

 override def equals(o: Any): Boolean = {
o match {
case v: MatrixUDT => true
case \_ => false
}
}
override def hashCode(): Int = 1994

b) the commit is 
https://github.com/apache/spark/commit/11e025956be3818c00effef0d650734f8feeb436
on March 20.


---

* [SPARK-8646](https://issues.apache.org/jira/browse/SPARK-8646) | *Major* | **PySpark does not run on YARN if master not provided in command line**

Running pyspark jobs result in a "no module named pyspark" when run in yarn-client mode in spark 1.4.

[I believe this JIRA represents the change that introduced this error.| https://issues.apache.org/jira/browse/SPARK-6869 ]

This does not represent a binary compatible change to spark. Scripts that worked on previous spark versions (ie comands the use spark-submit) should continue to work without modification between minor versions.


---

* [SPARK-8639](https://issues.apache.org/jira/browse/SPARK-8639) | *Trivial* | **Instructions for executing jekyll in docs/README.md could be slightly more clear, typo in docs/api.md**

In docs/README.md, the text states around line 31

Execute 'jekyll' from the 'docs/' directory. Compiling the site with Jekyll will create a directory called '\_site' containing index.html as well as the rest of the compiled files.

It might be more clear if we said

Execute 'jekyll build' from the 'docs/' directory to compile the site. Compiling the site with Jekyll will create a directory called '\_site' containing index.html as well as the rest of the compiled files.



In docs/api.md: "Here you can API docs for Spark and its submodules."
should be something like: "Here you can read API docs for Spark and its submodules."


---

* [SPARK-8638](https://issues.apache.org/jira/browse/SPARK-8638) | *Major* | **Window Function Performance Improvements**

Improve the performance of Spark Window Functions in the following cases:
# Much better performance (10x) in the running case (e.g. BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW). The current implementation in spark uses a sliding window approach in these cases. This means that an aggregate is maintained for every row, so space usage is N (N being the number of rows). This also means that all these aggregates all need to be updated separately, this takes N*(N-1)/2 updates. The running case differs from the Sliding case because we are only adding data to an aggregate function (no reset is required), we only need to maintain one aggregate (like in the UNBOUNDED PRECEDING AND UNBOUNDED case), update the aggregate for each row, and get the aggregate value after each update. This is what the new implementation does. This approach only uses 1 buffer, and only requires N updates; I am currently working on data with window sizes of 500-1000 doing running sums and this saves a lot of time.
#. Fewer comparisons in the sliding case. The current implementation determines frame boundaries for every input row. The new implementation makes more use of the fact that the window is sorted, maintains the boundaries, and only moves them when the current row order changes. This is a minor improvement.
# A single Window node is able to process all types of Frames for the same Partitioning/Ordering. This saves a little time/memory spent buffering and managing partitions. This will be enabled in a follow-up PR.
# A lot of the staging code is moved from the execution phase to the initialization phase. Minor performance improvement, and improves readability of the execution code.

The attached perf\_test.scala file contains s number of queries which can be used to measure the differences between the current and the proposed window function implementation. In the tests the new implementation outperforms the current implementation by a factor 7x in sliding window cases, and by a factor 14x in the running window cases.


---

* [SPARK-8637](https://issues.apache.org/jira/browse/SPARK-8637) | *Blocker* | **Packages argument is wrong in sparkR.init**

This was a bug introduced in https://github.com/apache/spark/pull/6928 and affects branch-1.4 and master branch


---

* [SPARK-8636](https://issues.apache.org/jira/browse/SPARK-8636) | *Major* | **CaseKeyWhen has incorrect NULL handling**

CaseKeyWhen implementation in Spark uses the following equals implementation:

{code}
  private def equalNullSafe(l: Any, r: Any) = {
    if (l == null && r == null) {
      true
    } else if (l == null || r == null) {
      false
    } else {
      l == r
    }
  }
{code}

Which is not correct, since in SQL, NULL is never equal to NULL (actually, it is not unequal either). In this case, a NULL value in a CASE WHEN expression should never match.

For example, you can execute this in MySQL:

{code}
SELECT CASE NULL WHEN NULL THEN "NULL MATCHES" ELSE "NULL DOES NOT MATCH" END FROM DUAL;
{code}

And the result will be "NULL DOES NOT MATCH".


---

* [SPARK-8634](https://issues.apache.org/jira/browse/SPARK-8634) | *Critical* | **Fix flaky test StreamingListenerSuite "receiver info reporting"**

As per the unit test log in https://amplab.cs.berkeley.edu/jenkins/job/SparkPullRequestBuilder/35754/

{code}
15/06/24 23:09:10.210 Thread-3495 INFO ReceiverTracker: Starting 1 receivers
15/06/24 23:09:10.270 Thread-3495 INFO SparkContext: Starting job: apply at Transformer.scala:22
...
15/06/24 23:09:14.259 ForkJoinPool-4-worker-29 INFO StreamingListenerSuiteReceiver: Started receiver and sleeping
15/06/24 23:09:14.270 ForkJoinPool-4-worker-29 INFO StreamingListenerSuiteReceiver: Reporting error and sleeping
{code}

it needs at least 4 seconds to receive all receiver events in this slow machine, but `timeout` for `eventually` is only 2 seconds.

We can increase `timeout` to make this test stable.


---

* [SPARK-8630](https://issues.apache.org/jira/browse/SPARK-8630) | *Major* | **Prevent from checkpointing QueueInputDStream**

It's better to prevent from checkpointing QueueInputDStream rather than failing the application when recovering `QueueInputDStream`, so that people can find the issue as soon as possible. See SPARK-8553 for example.


---

* [SPARK-8628](https://issues.apache.org/jira/browse/SPARK-8628) | *Critical* | **Race condition in AbstractSparkSQLParser.parse**

SPARK-5009 introduced the following code in AbstractSparkSQLParser:

{code}
def parse(input: String): LogicalPlan = {
    // Initialize the Keywords.
    lexical.initialize(reservedWords)
    phrase(start)(new lexical.Scanner(input)) match {
      case Success(plan, \_) => plan
      case failureOrError => sys.error(failureOrError.toString)
    }
  }
{code}

The corresponding initialize method in SqlLexical is not thread-safe:

{code}
  /* This is a work around to support the lazy setting */
  def initialize(keywords: Seq[String]): Unit = {
    reserved.clear()
    reserved ++= keywords
  }
{code}

I'm hitting this when parsing multiple SQL queries concurrently. When one query parsing starts, it empties the reserved keyword list, then a race-condition occurs and other queries fail to parse because they recognize keywords as identifiers.


---

* [SPARK-8623](https://issues.apache.org/jira/browse/SPARK-8623) | *Major* | **Hadoop RDDs fail to properly serialize configuration**

The following query was executed using "spark-sql --master yarn-client" on 1.5.0-SNAPSHOT:

select * from wcs.geolite\_city limit 10;

This lead to the following error:

15/06/25 09:38:37 WARN scheduler.TaskSetManager: Lost task 0.0 in stage 0.0 (TID 0, lxhnl008.ad.ing.net): java.lang.NullPointerException
	at org.apache.hadoop.conf.Configuration.<init>(Configuration.java:693)
	at org.apache.hadoop.mapred.JobConf.<init>(JobConf.java:442)
	at org.apache.hadoop.mapreduce.Job.<init>(Job.java:131)
	at org.apache.spark.sql.sources.SqlNewHadoopRDD.getJob(SqlNewHadoopRDD.scala:83)
	at org.apache.spark.sql.sources.SqlNewHadoopRDD.getConf(SqlNewHadoopRDD.scala:89)
	at org.apache.spark.sql.sources.SqlNewHadoopRDD$$anon$1.<init>(SqlNewHadoopRDD.scala:127)
	at org.apache.spark.sql.sources.SqlNewHadoopRDD.compute(SqlNewHadoopRDD.scala:124)
	at org.apache.spark.sql.sources.SqlNewHadoopRDD.compute(SqlNewHadoopRDD.scala:66)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)

This does not happen in every case, ie. some queries execute fine, and it is unclear why.

Using just "spark-sql" the query executes fine as well and thus the issue seems to rely in the communication with Yarn. Also the query executes fine (with yarn) in spark-shell.


---

* [SPARK-8621](https://issues.apache.org/jira/browse/SPARK-8621) | *Critical* | **crosstab exception when one of the value is empty**

I think this happened because some value is empty.

{code}
scala> df1.stat.crosstab("role", "lang")
org.apache.spark.sql.AnalysisException: syntax error in attribute name: ;
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.parseAttributeName(LogicalPlan.scala:145)
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.resolveQuoted(LogicalPlan.scala:135)
	at org.apache.spark.sql.DataFrame.resolve(DataFrame.scala:157)
	at org.apache.spark.sql.DataFrame.col(DataFrame.scala:603)
	at org.apache.spark.sql.DataFrameNaFunctions.org$apache$spark$sql$DataFrameNaFunctions$$fillCol(DataFrameNaFunctions.scala:394)
	at org.apache.spark.sql.DataFrameNaFunctions$$anonfun$2.apply(DataFrameNaFunctions.scala:160)
	at org.apache.spark.sql.DataFrameNaFunctions$$anonfun$2.apply(DataFrameNaFunctions.scala:157)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
	at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.mutable.ArrayOps$ofRef.map(ArrayOps.scala:108)
	at org.apache.spark.sql.DataFrameNaFunctions.fill(DataFrameNaFunctions.scala:157)
	at org.apache.spark.sql.DataFrameNaFunctions.fill(DataFrameNaFunctions.scala:147)
	at org.apache.spark.sql.DataFrameNaFunctions.fill(DataFrameNaFunctions.scala:132)
	at org.apache.spark.sql.execution.stat.StatFunctions$.crossTabulate(StatFunctions.scala:132)
	at org.apache.spark.sql.DataFrameStatFunctions.crosstab(DataFrameStatFunctions.scala:91)
{code}


---

* [SPARK-8619](https://issues.apache.org/jira/browse/SPARK-8619) | *Major* | **Can't find the keytab file when recovering the streaming application.**

In a streaming application, I use *--keytab /root/spark.keytab* to get the token.
But when the streaming application failed and I wanted to recover it from checkpoint file, there was an error:
{quote}
java.io.IOException: Login failure for spark/hadoop.hadoop.com@HADOOP.COM from keytab spark.keytab-1fd8f7bb-0d3c-4f65-990a-9ae09055cc8d: javax.security.auth.login.LoginException: Unable to obtain password from user
{quote}

Spark had changed the configuration, so the checkpoint can't find the file:
{code:title=Client.java @ Function: setupCredentials |borderStyle=solid}
      val keytabFileName = f.getName + "-" + UUID.randomUUID().toString
      UserGroupInformation.loginUserFromKeytab(args.principal, args.keytab)
      loginFromKeytab = true
      sparkConf.set("spark.yarn.keytab", keytabFileName)
{code}

So when recovering the application, we should ignore this configurations.


---

* [SPARK-8615](https://issues.apache.org/jira/browse/SPARK-8615) | *Minor* | **sql programming guide recommends deprecated code**

The Spark 1.4 sql programming guide has an example code on how to use JDBC tables:
https://spark.apache.org/docs/latest/sql-programming-guide.html#jdbc-to-other-databases

sqlContext.load("jdbc", Map(...))

However this code complies with a warning, and recommends to do this:

 sqlContext.read.format("jdbc").options(Map(...)).load()


---

* [SPARK-8613](https://issues.apache.org/jira/browse/SPARK-8613) | *Major* | **Add a param for disabling of feature scaling, default to true**

Add a param to disable feature scaling. Do this distinct from disabling scaling in any particular alg incase someone wants to work on logistic while work in linear is in progress.


---

* [SPARK-8610](https://issues.apache.org/jira/browse/SPARK-8610) | *Major* | **Separate Row and InternalRow (part 2)**

Currently, we use GenericRow both for Row and InternalRow, which is confusing because it could contain Scala type also Catalyst types.

We should have different implementation for them, to avoid some potential bugs.


---

* [SPARK-8607](https://issues.apache.org/jira/browse/SPARK-8607) | *Critical* | **SparkR - Third party jars are not being added to classpath in SparkRBackend**

Getting a ClassNotFound exception when using the --jars flag in the SparkR shell, as well as when creating a sparkContext with sparkR.init.

Related to https://issues.apache.org/jira/browse/SPARK-5185


---

* [SPARK-8606](https://issues.apache.org/jira/browse/SPARK-8606) | *Critical* | **Exceptions in RDD.getPreferredLocations() and getPartitions() should not be able to crash DAGScheduler**

RDD.getPreferredLocations() and RDD.getPartitions() may throw exceptions but the DAGScheduler does not guard against this, leaving it vulnerable to crashing and stopping the SparkContext if exceptions occur there.

We should fix this by adding more try blocks around these calls in DAGScheduler.


---

* [SPARK-8604](https://issues.apache.org/jira/browse/SPARK-8604) | *Major* | **Parquet data source doesn't write summary file while doing appending**

Currently, Parquet and ORC data sources don't set their output format class, as we override the output committer in Spark SQL. However, SPARK-8678 ignores user defined output committer class while doing appending to avoid potential issues brought by direct output committers (e.g. {{DirectParquetOutputCommitter}}). This makes both of these data sources fallback to the default output committer retrieved from {{TextOutputFormat}}, which is {{FileOutputCommitter}}. For ORC, it's totally fine since ORC itself just uses {{FileOutputCommitter}}. But for Parquet, {{ParquetOutputCommitter}} also writes the summary files while committing the job.


---

* [SPARK-8600](https://issues.apache.org/jira/browse/SPARK-8600) | *Major* | **Naive Bayes API for spark.ml Pipelines**

Create a NaiveBayes API for the spark.ml Pipelines API. This should wrap the existing NaiveBayes implementation under spark.mllib package. Should also keep the parameter names consistent. The output columns could include both the prediction and confidence scores.


---

* [SPARK-8598](https://issues.apache.org/jira/browse/SPARK-8598) | *Minor* | **Implementation of 1-sample, two-sided, Kolmogorov Smirnov Test for RDDs**

We have implemented a 1-sample, two-sided version of the Kolmogorov Smirnov test, which tests the null hypothesis that the sample comes from a given continuous distribution. We provide various functions to access the functionality: namely, a function that takes an RDD[Double] of the data and a lambda to calculate the CDF, a function that takes an RDD[Double] and an Iterator[(Double,Double,Double)] => Iterator[Double] which uses mapPartition to provide an optimized way to perform the calculation when the CDF calculation requires a non-serializable object (e.g. the apache math commons real distributions), and finally a function that takes an RDD[Double] and a String name of the theoretical distribution to be used. The appropriate result class has been added, as well as tests to the HypothesisTestSuite


---

* [SPARK-8596](https://issues.apache.org/jira/browse/SPARK-8596) | *Major* | **Install and configure RStudio server on Spark EC2**

This will make it convenient for R users to use SparkR from their browsers


---

* [SPARK-8593](https://issues.apache.org/jira/browse/SPARK-8593) | *Major* | **History Server doesn't show complete application when one attempt inprogress**

The Spark history server doesn't show an application if the first attempt of the application is still inprogress.  

Here are the files in hdfs:
-rwxrwx---   3 tgraves hdfs        234 2015-06-24 15:49 sparkhistory/application\_1433751980223\_18926\_1.inprogress
-rwxrwx---   3 tgraves hdfs    9609450 2015-06-24 15:51 sparkhistory/application\_1433751980223\_18926\_2


The UI shows them if I set the showIncomplete=true.

Removing the inprogress file allows it to show up when showIncomplete is false.

It should be smart enough to atleast show the second successful attempt.


---

* [SPARK-8592](https://issues.apache.org/jira/browse/SPARK-8592) | *Minor* | **CoarseGrainedExecutorBackend: Cannot register with driver =\> NPE**

I cannot reproduce this consistently but when submitting jobs just after another finished it will not come up:

{code}
15/06/24 14:57:24 INFO WorkerWatcher: Connecting to worker akka.tcp://sparkWorker@10.0.7.171:39135/user/Worker
15/06/24 14:57:24 INFO WorkerWatcher: Successfully connected to akka.tcp://sparkWorker@10.0.7.171:39135/user/Worker
15/06/24 14:57:24 ERROR CoarseGrainedExecutorBackend: Cannot register with driver: akka.tcp://sparkDriver@172.17.0.109:47462/user/CoarseGrainedScheduler
java.lang.NullPointerException
	at org.apache.spark.rpc.akka.AkkaRpcEndpointRef.actorRef$lzycompute(AkkaRpcEnv.scala:273)
	at org.apache.spark.rpc.akka.AkkaRpcEndpointRef.actorRef(AkkaRpcEnv.scala:273)
	at org.apache.spark.rpc.akka.AkkaRpcEndpointRef.toString(AkkaRpcEnv.scala:313)
	at java.lang.String.valueOf(String.java:2982)
	at scala.collection.mutable.StringBuilder.append(StringBuilder.scala:200)
	at org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend$DriverEndpoint$$anonfun$receiveAndReply$1$$anonfun$applyOrElse$3.apply(CoarseGrainedSchedulerBackend.scala:125)
	at org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend$DriverEndpoint$$anonfun$receiveAndReply$1$$anonfun$applyOrElse$3.apply(CoarseGrainedSchedulerBackend.scala:125)
	at org.apache.spark.Logging$class.logInfo(Logging.scala:59)
	at org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend$DriverEndpoint.logInfo(CoarseGrainedSchedulerBackend.scala:69)
	at org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend$DriverEndpoint$$anonfun$receiveAndReply$1.applyOrElse(CoarseGrainedSchedulerBackend.scala:125)
	at org.apache.spark.rpc.akka.AkkaRpcEnv.org$apache$spark$rpc$akka$AkkaRpcEnv$$processMessage(AkkaRpcEnv.scala:178)
	at org.apache.spark.rpc.akka.AkkaRpcEnv$$anonfun$actorRef$lzycompute$1$1$$anon$1$$anonfun$receiveWithLogging$1$$anonfun$applyOrElse$4.apply$mcV$sp(AkkaRpcEnv.scala:127)
	at org.apache.spark.rpc.akka.AkkaRpcEnv.org$apache$spark$rpc$akka$AkkaRpcEnv$$safelyCall(AkkaRpcEnv.scala:198)
	at org.apache.spark.rpc.akka.AkkaRpcEnv$$anonfun$actorRef$lzycompute$1$1$$anon$1$$anonfun$receiveWithLogging$1.applyOrElse(AkkaRpcEnv.scala:126)
	at scala.runtime.AbstractPartialFunction.apply(AbstractPartialFunction.scala:36)
	at org.apache.spark.util.ActorLogReceive$$anon$1.apply(ActorLogReceive.scala:59)
	at org.apache.spark.util.ActorLogReceive$$anon$1.apply(ActorLogReceive.scala:42)
	at scala.PartialFunction$class.applyOrElse(PartialFunction.scala:123)
	at org.apache.spark.util.ActorLogReceive$$anon$1.applyOrElse(ActorLogReceive.scala:42)
	at akka.actor.Actor$class.aroundReceive(Actor.scala:465)
	at org.apache.spark.rpc.akka.AkkaRpcEnv$$anonfun$actorRef$lzycompute$1$1$$anon$1.aroundReceive(AkkaRpcEnv.scala:93)
	at akka.actor.ActorCell.receiveMessage(ActorCell.scala:516)
	at akka.actor.ActorCell.invoke(ActorCell.scala:487)
	at akka.dispatch.Mailbox.processMailbox(Mailbox.scala:238)
	at akka.dispatch.Mailbox.run(Mailbox.scala:220)
	at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:393)
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260)
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339)
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979)
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107)
{code}


---

* [SPARK-8584](https://issues.apache.org/jira/browse/SPARK-8584) | *Major* | **Better exception message if invalid checkpoint dir is specified**

If we're running Spark on a cluster, the checkpoint dir must be a non-local path. Otherwise, the attempt to read from a checkpoint will fail because the checkpoint files are written on the executors, not on the driver.

Currently, the error message that you get looks something like the following, which is not super intuitive:
{code}
Checkpoint RDD 3 (0) has different number of partitions than original RDD 2 (100)
{code}


---

* [SPARK-8583](https://issues.apache.org/jira/browse/SPARK-8583) | *Major* | **Refactor python/run-tests to integrate with dev/run-test's module system**

We should refactor the {{python/run-tests}} script to be written in Python and integrate with the recent {{dev/run-tests}} module system so that we can more granularly skip Python tests in the pull request builder.


---

* [SPARK-8581](https://issues.apache.org/jira/browse/SPARK-8581) | *Minor* | **Simplify and clean up the checkpointing code**

It is an old piece of code and a little overly complex at the moment. We can rewrite this to improve the readability and preserve exactly the same semantics.


---

* [SPARK-8579](https://issues.apache.org/jira/browse/SPARK-8579) | *Major* | **Support arbitrary object in UnsafeRow**

It's common to run count(distinct xxx) in SQL, the data type will be UDT of OpenHashSet, it's good that we could use UnsafeRow to reducing the memory usage during aggregation.

Also for DecimalType, which could be used inside the grouping key.


---

* [SPARK-8578](https://issues.apache.org/jira/browse/SPARK-8578) | *Major* | **Should ignore user defined output committer when appending data**

When appending data to a file system via Hadoop API, it's safer to ignore user defined output committer classes like {{DirectParquetOutputCommitter}}. Because it's relatively hard to handle task failure in this case.  For example, {{DirectParquetOutputCommitter}} directly writes to the output directory to boost write performance when working with S3. However, there's no general way to determine task output file path of a specific task in Hadoop API, thus we don't know to revert a failed append job. (When doing overwrite, we can just remove the whole output directory.)


---

* [SPARK-8576](https://issues.apache.org/jira/browse/SPARK-8576) | *Minor* | **Add spark-ec2 options to assign launched instances into IAM roles and to set instance-initiated shutdown behavior**

There are 2 EC2 options that would be useful to add.

* One is the ability to assign IAM roles to launched instances.
* The other is the ability to configure instances to self-terminate when they initiate a shutdown.

Both of these options are useful when spark-ec2 is being used as part of an automated pipeline and the engineers want to minimize the need to pass around AWS keys for access (replaced by IAM role) and to be able to launch a cluster that can terminate itself cleanly.


---

* [SPARK-8575](https://issues.apache.org/jira/browse/SPARK-8575) | *Minor* | **Deprecate callUDF in favor of udf**

Follow-up of [SPARK-8356|https://issues.apache.org/jira/browse/SPARK-8356] to use {{callUDF}} in favor of {{udf}} wherever possible.


---

* [SPARK-8572](https://issues.apache.org/jira/browse/SPARK-8572) | *Critical* | **Type coercion for ScalaUDFs**

Seems we do not do type coercion for ScalaUDFs. The following code will hit a runtime exception.
{code}
import org.apache.spark.sql.functions.\_
val myUDF = udf((x: Int) => x + 1)
val df = sqlContext.range(1, 10).toDF("i").select(myUDF($"i"))
df.explain(true)
df.show
{code}
It is also good to check if we do type coercion for PythonUDFs.


---

* [SPARK-8570](https://issues.apache.org/jira/browse/SPARK-8570) | *Minor* | **Improve MLlib Local Matrix Documentation.**

Update the MLlib Data Types Local Matrix documentation as follows:

-Include information on sparse matrices.
-Add sparse matrix examples to the existing Scala and Java examples.
-Add Python examples for both dense and sparse matrices (currently no Python examples exist for the Local Matrix section).


---

* [SPARK-8568](https://issues.apache.org/jira/browse/SPARK-8568) | *Critical* | **Prevent accidental use of "and" and "or" to build invalid expressions in Python**

In Spark DataFrames (and in Pandas as well), the correct way to construct a conjunctive expression is to use the bitwise and operator, i.e.: "(x > 5) & (y > 6)". 

However, a lot of users assume that they should be using the Python "and" keyword, i.e. doing "x > 5 and y > 6". Python's boolean evaluation logic converts "x > 5 and y > 6" into just "y > 6" (since "x > 5" is not None). This is super confusing & error prone.

We should override \_\_bool\_\_ and \_\_nonzero\_\_ for Column to throw an exception if users call "and" and "or" on Column expressions.

Background: see this blog post http://www.nodalpoint.com/unexpected-behavior-of-spark-dataframe-filter-method/


---

* [SPARK-8567](https://issues.apache.org/jira/browse/SPARK-8567) | *Critical* | **Flaky test: o.a.s.sql.hive.HiveSparkSubmitSuite --jars**

Seems tests in HiveSparkSubmitSuite fail with timeout pretty frequently.


---

* [SPARK-8563](https://issues.apache.org/jira/browse/SPARK-8563) | *Major* | **Bug that IndexedRowMatrix.computeSVD() yields the U with wrong numCols**

IndexedRowMatrix.computeSVD() yields a wrong U which *U.numCols() = self.nCols*.

It should have been *U.numCols() = k = svd.U.numCols()*

{code}
self = U * sigma * V.transpose
(m x n) = (m x n) * (k x k) * (k x n)
-->
(m x n) = (m x k) * (k x k) * (k x n)
{code}


Proposed fix: https://github.com/apache/spark/pull/6953


---

* [SPARK-8560](https://issues.apache.org/jira/browse/SPARK-8560) | *Major* | **Executors page displays negative active tasks**

This is caused by resubmitted tasks. See PR for more detail.


---

* [SPARK-8559](https://issues.apache.org/jira/browse/SPARK-8559) | *Major* | **Support association rule generation in FPGrowth**

It will be more useful and practical to include the association rule generation part for real applications, though it is not hard by user to find association rules from the frequent itemset with frequency which is output by FP growth.
However how to generate association rules in an efficient way is not widely reported.


---

* [SPARK-8558](https://issues.apache.org/jira/browse/SPARK-8558) | *Minor* | **Script /dev/run-tests fails when \_JAVA\_OPTIONS env var set**

Script /dev/run-tests.py fails when \_JAVA\_OPTIONS env. var set.

Steps to reproduce in linux:
1. export \_JAVA\_OPTIONS="-Xmx2048M
2. ./dev/run-tests

[pivot@fe2s spark]$ ./dev/run-tests
Traceback (most recent call last):
  File "./dev/run-tests.py", line 793, in <module>
    main()
  File "./dev/run-tests.py", line 722, in main
    java\_version = determine\_java\_version(java\_exe)
  File "./dev/run-tests.py", line 484, in determine\_java\_version
    version, update = version\_str.split('\_')  # eg ['1.8.0', '25']
ValueError: need more than 1 value to unpack

The problem is in 'determine\_java\_version' function in run-tests.py.
It runs 'java' and extracts version from output. However when \_JAVA\_OPTIONS set the output of 'java' command is different and it breaks parser. See the first line

[pivot@fe2s spark]$ java -version
Picked up \_JAVA\_OPTIONS: -Xmx2048M
java version "1.8.0\_31"
Java(TM) SE Runtime Environment (build 1.8.0\_31-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.31-b07, mixed mode)


---

* [SPARK-8554](https://issues.apache.org/jira/browse/SPARK-8554) | *Major* | **Add the SparkR document files to `.rat-excludes` for `./dev/check-license`**

{noformat}
> ./dev/check-license | grep -v boto

Could not find Apache license headers in the following files:
 !????? /Users/01004981/local/src/spark/myspark/R/lib/SparkR/INDEX
 !????? /Users/01004981/local/src/spark/myspark/R/lib/SparkR/help/AnIndex
 !????? /Users/01004981/local/src/spark/myspark/R/lib/SparkR/html/00Index.html
 !????? /Users/01004981/local/src/spark/myspark/R/lib/SparkR/html/R.css
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/DataFrame.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/GroupedData.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/agg.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/arrange.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/cache-methods.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/cacheTable.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/cancelJobGroup.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/clearCache.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/clearJobGroup.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/collect-methods.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/column.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/columns.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/count.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/createDataFrame.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/createExternalTable.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/describe.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/distinct.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/dropTempTable.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/dtypes.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/except.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/explain.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/filter.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/first.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/groupBy.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/hashCode.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/head.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/infer\_type.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/insertInto.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/intersect.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/isLocal.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/join.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/jsonFile.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/limit.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/nafunctions.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/parquetFile.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/persist.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/print.jobj.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/print.structField.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/print.structType.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/printSchema.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/read.df.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/registerTempTable.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/repartition.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/sample.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/saveAsParquetFile.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/saveAsTable.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/schema.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/select.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/selectExpr.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/setJobGroup.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/show.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/showDF.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/sparkR.init.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/sparkR.stop.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/sparkRHive.init.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/sparkRSQL.init.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/sql.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/structField.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/structType.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/table.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/tableNames.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/tables.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/take.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/uncacheTable.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/unionAll.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/unpersist-methods.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/withColumn.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/withColumnRenamed.Rd
 !????? /Users/01004981/local/src/spark/myspark/R/pkg/man/write.df.Rd
{noformat}


---

* [SPARK-8548](https://issues.apache.org/jira/browse/SPARK-8548) | *Major* | **Remove the trailing whitespaces from the SparkR files**

On the {{lint-r}}'s advice, remove the trailing whiltespace from the SparkR files.


---

* [SPARK-8541](https://issues.apache.org/jira/browse/SPARK-8541) | *Minor* | **sumApprox and meanApprox doctests are incorrect**

The doctests for sumApprox and meanApprox methods test against an upper bound but not a lower bound. If there was a regression in the underlying code that caused things to go wrong the doctest may not fail. For example if sumApprox returned 0 the doctest would return -1 which is less than 0.05. Solution is to use the abs() function to test that the approximate answer is within 5% of the exact answer.


---

* [SPARK-8539](https://issues.apache.org/jira/browse/SPARK-8539) | *Major* | **LinearRegressionSummary class for storing LR training stats**

This is a subtask of [SPARK-7674].  Please see the design doc linked from [SPARK-7674] for details.

LinearRegressionSummary will store stats from training, such as objective value on each iteration, avg residual, etc.  It will store a LinearRegressionResults instance for the results on the training dataset.

The assignee should make sure to coordinate with others working on [SPARK-7674].

Note: This can add a limited number of metrics.  We can always add more in the future.


---

* [SPARK-8538](https://issues.apache.org/jira/browse/SPARK-8538) | *Major* | **LinearRegressionResults class for storing LR results on data**

This is an initial task for [SPARK-7674].  Please see the design doc linked from [SPARK-7674] for details.

LinearRegressionResults will store results for a (model, dataset) pair, provided via lazy evaluation.  It can take advantage of existing code such as RegressionMetrics.

Eventually, we may need to introduce an internal abstraction for RegressionResults, but that will not be necessary for this initial tasks.  However, the assignee should make sure to coordinate with others working on [SPARK-7674].

Note: This can add a limited number of metrics.  We can always add more in the future.


---

* [SPARK-8537](https://issues.apache.org/jira/browse/SPARK-8537) | *Major* | **Add a validation rule about the curly braces in SparkR to `.lintr`**

Add a validation rule about the curly braces in SparkR to `.lintr`


---

* [SPARK-8535](https://issues.apache.org/jira/browse/SPARK-8535) | *Major* | **PySpark : Can't create DataFrame from Pandas dataframe with no explicit column name**

Trying to create a Spark DataFrame from a pandas dataframe with no explicit column name : 

pandasDF = pd.DataFrame([[1, 2], [5, 6]])
sparkDF = sqlContext.createDataFrame(pandasDF)

***********

----> 1 sparkDF = sqlContext.createDataFrame(pandasDF)

/usr/local/Cellar/apache-spark/1.4.0/libexec/python/pyspark/sql/context.pyc in createDataFrame(self, data, schema, samplingRatio)
    344 
    345         jrdd = self.\_jvm.SerDeUtil.toJavaArray(rdd.\_to\_java\_object\_rdd())
--> 346         df = self.\_ssql\_ctx.applySchemaToPythonRDD(jrdd.rdd(), schema.json())
    347         return DataFrame(df, self)
    348 

/usr/local/Cellar/apache-spark/1.4.0/libexec/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py in \_\_call\_\_(self, *args)
    536         answer = self.gateway\_client.send\_command(command)
    537         return\_value = get\_return\_value(answer, self.gateway\_client,
--> 538                 self.target\_id, self.name)
    539 
    540         for temp\_arg in temp\_args:

/usr/local/Cellar/apache-spark/1.4.0/libexec/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
    298                 raise Py4JJavaError(
    299                     'An error occurred while calling {0}{1}{2}.\n'.
--> 300                     format(target\_id, '.', name), value)
    301             else:
    302                 raise Py4JError(

Py4JJavaError: An error occurred while calling o87.applySchemaToPythonRDD.


---

* [SPARK-8532](https://issues.apache.org/jira/browse/SPARK-8532) | *Blocker* | **In Python's DataFrameWriter, save/saveAsTable/json/parquet/jdbc always override mode**

Although users can use {{df.write.mode("overwrite")}} to specify the mode, when save/saveAsTable/json/parquet/jdbc is called, this mode will be overridden. For example, the implementation of json method is 
{code}
def json(self, path, mode="error"):
  self.\_jwrite.mode(mode).json(path)
{code}
If users only call {{json("path")}}, the mode will be "error" instead of the mode specified in the mode method.


---

* [SPARK-8528](https://issues.apache.org/jira/browse/SPARK-8528) | *Minor* | **Add applicationId to SparkContext object in pyspark**

It is available in Scala API.

Our use case - we want to log applicationId (YARN in hour case) to request help with troubleshooting from the DevOps if our app had failed.


---

* [SPARK-8525](https://issues.apache.org/jira/browse/SPARK-8525) | *Minor* | **Bug in Streaming k-means documentation**

The expected input format is wrong in Streaming K-means documentation.
https://spark.apache.org/docs/latest/mllib-clustering.html#streaming-k-means

It might be a bug in implementation though, not sure.

There shouldn't be any spaces in test data points. I.e. instead of 
(y, [x1, x2, x3]) it should be
(y,[x1,x2,x3])

The exception thrown 
org.apache.spark.SparkException: Cannot parse a double from:  
	at org.apache.spark.mllib.util.NumericParser$.parseDouble(NumericParser.scala:118)
	at org.apache.spark.mllib.util.NumericParser$.parseTuple(NumericParser.scala:103)
	at org.apache.spark.mllib.util.NumericParser$.parse(NumericParser.scala:41)
	at org.apache.spark.mllib.regression.LabeledPoint$.parse(LabeledPoint.scala:49)


Also I would improve documentation saying explicitly that expected data types for both 'x' and 'y' is Double. At the moment it's not obvious especially for 'y'.


---

* [SPARK-8511](https://issues.apache.org/jira/browse/SPARK-8511) | *Major* | **Modify ML Python tests to remove saved models**

According to the reference of python, {{os.removedirs}} doesn't work if there are any files in the directory we want to remove.
https://docs.python.org/3/library/os.html#os.removedirs

Instead of that, using {{shutil.rmtree()}} would be better to remove a temporary directory to test for saving model.
https://github.com/apache/spark/blob/branch-1.4/python%2Fpyspark%2Fmllib%2Fregression.py#L137


---

* [SPARK-8508](https://issues.apache.org/jira/browse/SPARK-8508) | *Minor* | **Test case "SQLQuerySuite.test script transform for stderr" generates super long output**

This test case writes 100,000 lines of integer triples to stderr, and makes Jenkins build output unnecessarily large and hard to debug.


---

* [SPARK-8506](https://issues.apache.org/jira/browse/SPARK-8506) | *Minor* | **SparkR does not provide an easy way to depend on Spark Packages when performing init from inside of R**

While packages can be specified when using the sparkR or sparkSubmit scripts, the programming guide tells people to create their spark context using the R shell + init. The init does have a parameter for jars but no parameter for packages. Setting the SPARKR\_SUBMIT\_ARGS overwrites some necessary information. I think a good solution would just be adding another field to the init function to allow people to specify packages in the same way as jars.


---

* [SPARK-8495](https://issues.apache.org/jira/browse/SPARK-8495) | *Major* | **Add a `.lintr` file to validate the SparkR files and the `lint-r` script**

https://issues.apache.org/jira/browse/SPARK-6813

As we discussed, we are planning to go with {{lintr}} to validate the SparkR files. So we should add a rules for it as a {{.lintr}} file.


---

* [SPARK-8489](https://issues.apache.org/jira/browse/SPARK-8489) | *Critical* | **Add regression tests for SPARK-8470**

See SPARK-8470 for more detail. Basically the Spark Hive code silently overwrites the context class loader populated in SparkSubmit, resulting in certain classes missing when we do reflection in `SQLContext#createDataFrame`.

That issue is already resolved in https://github.com/apache/spark/pull/6891, but we should add a regression test for the specific manifestation of the bug in SPARK-8470.


---

* [SPARK-8483](https://issues.apache.org/jira/browse/SPARK-8483) | *Major* | **Remove commons-lang3 depedency from flume-sink**

flume-sink module uses only one method from commons-lang3. Since the build would become complex if we create an assembly and would likely make it more difficult for customers, let's just remove the dependency altogether.


---

* [SPARK-8482](https://issues.apache.org/jira/browse/SPARK-8482) | *Trivial* | **Add M4 instances support**

AWS released M4 instances recently (https://aws.amazon.com/blogs/aws/the-new-m4-instance-type-bonus-price-reduction-on-m3-c4/) It will be nice to have support of these instances as well.


---

* [SPARK-8479](https://issues.apache.org/jira/browse/SPARK-8479) | *Minor* | **Add numNonzeros and numActives to linalg.Matrices**

Add
numNonzeros to scan the number of non zero values and numActives to show the number of values explicitly stored.


---

* [SPARK-8478](https://issues.apache.org/jira/browse/SPARK-8478) | *Minor* | **Harmonize UDF-related code to use uniformly UDF instead of Udf**

Some UDF-related code uses "Udf" naming instead of "UDF".
This JIRA uniformizes the naming in favor of UDF.


---

* [SPARK-8476](https://issues.apache.org/jira/browse/SPARK-8476) | *Minor* | **Setters inc/decDiskBytesSpilled in TaskMetrics should also be private.**

This is a follow-up of SPARK-3288.


---

* [SPARK-8475](https://issues.apache.org/jira/browse/SPARK-8475) | *Minor* | **SparkSubmit with Ivy jars is very slow to load with no internet access**

Spark Submit adds maven central & spark bintray to the ChainResolver before it adds any external resolvers. 

https://github.com/apache/spark/blob/branch-1.4/core/src/main/scala/org/apache/spark/deploy/SparkSubmit.scala#L821

When running on a cluster without internet access, this means the spark shell takes forever to launch as it tries these two remote repos before the ones specified in the --repositories list. In our case we have a proxy which the cluster can access it and supply it via --repositories.

This is also a problem for users who maintain a proxy for maven/ivy repos with something like Nexus/Artifactory. Having a repo proxy is popular at many organisations so I'd say this would be a useful change for these users as well. In the current state even if a maven central proxy is supplied, it will still try and hit central. 

I see two options for a fix;

* Change the order repos are added to the ChainResolver, making the --repositories supplied repos come before anything else. https://github.com/apache/spark/blob/branch-1.4/core/src/main/scala/org/apache/spark/deploy/SparkSubmit.scala#L843 
* Have a config option (like spark.jars.ivy.useDefaultRemoteRepos, default true) which when false wont add the maven central & bintry to the ChainResolver. 

Happy to do a PR for this fix.


---

* [SPARK-8471](https://issues.apache.org/jira/browse/SPARK-8471) | *Minor* | **Implement Discrete Cosine Transform feature transformer**

Discrete cosine transform (DCT) is an invertible matrix transformation commonly used to analyze signals (e.g. audio, images, video) in the frequency domain. In contrast to the FFT, the DCT maps real vectors to real vectors. The DCT is oftentimes used to provide an alternative feature representation (e.g. spectrogram representations of audio and video) useful for classification and frequency-domain analysis.

Ideally, an implementation of the DCT should allow both forward and inverse transforms. It should also work for any numeric datatype and both 1D and 2D data.


---

* [SPARK-8468](https://issues.apache.org/jira/browse/SPARK-8468) | *Blocker* | **Cross-validation with RegressionEvaluator prefers higher RMSE**

Please correct me if I'm wrong, but RegressionEvaluator seems to implement the evaluate() method backwards. The interface expects higher return values from evaluate() to indicate better models. RegressionEvaluator returns RMSE by default - a value we should try to minimize.


---

* [SPARK-8463](https://issues.apache.org/jira/browse/SPARK-8463) | *Major* | **No suitable driver found for write.jdbc**

I am getting a java.sql.SQLException: No suitable driver found for jdbc:mysql://dbhost/test when using df.write.jdbc.

I do not get this error when reading from the same database. 

This simple script can repeat the problem.
First one must create a database called test with a table called table1 and insert some rows in it. The user test:secret must have read/write permissions.

*testJDBC.scala:*
import java.util.Properties
import org.apache.spark.sql.Row
import java.sql.Struct
import org.apache.spark.sql.types.\{StructField, StructType, IntegerType, StringType}
import org.apache.spark.\{SparkConf, SparkContext}
import org.apache.spark.sql.SQLContext

val properties = new Properties()
properties.setProperty("user", "test")
properties.setProperty("password", "secret")
val readTable = sqlContext.read.jdbc("jdbc:mysql://dbhost/test", "table1", properties)

print(readTable.show())

val rows = sc.parallelize(List(Row(1, "write"), Row(2, "me")))
val writeTable = sqlContext.createDataFrame(rows, StructType(List(StructField("id", IntegerType), StructField("name", StringType))))
writeTable.write.jdbc("jdbc:mysql://dbhost/test", "table2", properties)}}

This is run using:
{{spark-shell --conf spark.executor.extraClassPath=/path/to/mysql-connector-java-5.1.35-bin.jar --driver-class-path /path/to/mysql-connector-java-5.1.35-bin.jar --jars /path/to/mysql-connector-java-5.1.35-bin.jar -i:testJDBC.scala}}

The read works fine and will print the rows in the table. The write fails with {{java.sql.SQLException: No suitable driver found for jdbc:mysql://dbhost/test}}. The new table is successfully created but it is empty.

I have tested this on a Mesos cluster with Spark 1.4.0 and the current master branch as of June 18th.

In the executor logs I do see before the error:
INFO Utils: Fetching http://146.203.54.236:50624/jars/mysql-connector-java-5.1.35-bin.jar
INFO Executor: Adding file:/tmp/mesos/slaves/.../mysql-connector-java-5.1.35-bin.jar to class loader

A workaround is to add the mysql-connector-java-5.1.35-bin.jar to the same location on each executor node as defined in spark.executor.extraClassPath.


---

* [SPARK-8462](https://issues.apache.org/jira/browse/SPARK-8462) | *Minor* | **Documentation fixes for Spark SQL**

This fixes various minor documentation issues on the Spark SQL page


---

* [SPARK-8461](https://issues.apache.org/jira/browse/SPARK-8461) | *Blocker* | **ClassNotFoundException when code generation is enabled**

Build Spark without {{-Phive}} to make sure the isolated classloader for Hive support is irrelevant, then run the following Spark shell snippet:
{code}
sqlContext.range(0, 2).select(lit("a") as 'a).coalesce(1).write.mode("overwrite").json("file:///tmp/foo")
{code}
Exception thrown:
{noformat}
15/06/18 15:36:30 ERROR codegen.GenerateMutableProjection: failed to compile:

      import org.apache.spark.sql.catalyst.InternalRow;

      public SpecificProjection generate(org.apache.spark.sql.catalyst.expressions.Expression[] expr) {
        return new SpecificProjection(expr);
      }

      class SpecificProjection extends org.apache.spark.sql.catalyst.expressions.codegen.BaseMutableProjection {

        private org.apache.spark.sql.catalyst.expressions.Expression[] expressions = null;
        private org.apache.spark.sql.catalyst.expressions.MutableRow mutableRow = null;

        public SpecificProjection(org.apache.spark.sql.catalyst.expressions.Expression[] expr) {
          expressions = expr;
          mutableRow = new org.apache.spark.sql.catalyst.expressions.GenericMutableRow(1);
        }

        public org.apache.spark.sql.catalyst.expressions.codegen.BaseMutableProjection target(org.apache.spark.sql.catalyst.expressions.MutableRow row) {
          mutableRow = row;
          return this;
        }

        /* Provide immutable access to the last projected row. */
        public InternalRow currentValue() {
          return (InternalRow) mutableRow;
        }

        public Object apply(Object \_i) {
          InternalRow i = (InternalRow) \_i;

      /* expression: a */
      Object obj2 = expressions[0].eval(i);
      boolean isNull0 = obj2 == null;
      org.apache.spark.unsafe.types.UTF8String primitive1 = null;
      if (!isNull0) {
        primitive1 = (org.apache.spark.unsafe.types.UTF8String) obj2;
      }

          if(isNull0)
            mutableRow.setNullAt(0);
          else
            mutableRow.update(0, primitive1);


          return mutableRow;
        }
      }

org.codehaus.commons.compiler.CompileException: Line 28, Column 35: Object
        at org.codehaus.janino.UnitCompiler.findTypeByName(UnitCompiler.java:6897)
        at org.codehaus.janino.UnitCompiler.getReferenceType(UnitCompiler.java:5331)
        at org.codehaus.janino.UnitCompiler.getReferenceType(UnitCompiler.java:5207)
        at org.codehaus.janino.UnitCompiler.getType2(UnitCompiler.java:5188)
        at org.codehaus.janino.UnitCompiler.access$12600(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$16.visitReferenceType(UnitCompiler.java:5119)
        at org.codehaus.janino.Java$ReferenceType.accept(Java.java:2880)
        at org.codehaus.janino.UnitCompiler.getType(UnitCompiler.java:5159)
        at org.codehaus.janino.UnitCompiler.access$16700(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$31.getParameterTypes2(UnitCompiler.java:8533)
        at org.codehaus.janino.IClass$IInvocable.getParameterTypes(IClass.java:835)
        at org.codehaus.janino.IClass$IMethod.getDescriptor2(IClass.java:1063)
        at org.codehaus.janino.IClass$IInvocable.getDescriptor(IClass.java:849)
        at org.codehaus.janino.IClass.getIMethods(IClass.java:211)
        at org.codehaus.janino.IClass.getIMethods(IClass.java:199)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:409)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:658)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:662)
        at org.codehaus.janino.UnitCompiler.access$600(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$2.visitMemberClassDeclaration(UnitCompiler.java:350)
        at org.codehaus.janino.Java$MemberClassDeclaration.accept(Java.java:1035)
        at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:354)
        at org.codehaus.janino.UnitCompiler.compileDeclaredMemberTypes(UnitCompiler.java:769)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:532)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:393)
        at org.codehaus.janino.UnitCompiler.access$400(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$2.visitPackageMemberClassDeclaration(UnitCompiler.java:347)
        at org.codehaus.janino.Java$PackageMemberClassDeclaration.accept(Java.java:1139)
        at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:354)
        at org.codehaus.janino.UnitCompiler.compileUnit(UnitCompiler.java:322)
        at org.codehaus.janino.SimpleCompiler.compileToClassLoader(SimpleCompiler.java:383)
        at org.codehaus.janino.ClassBodyEvaluator.compileToClass(ClassBodyEvaluator.java:315)
        at org.codehaus.janino.ClassBodyEvaluator.cook(ClassBodyEvaluator.java:233)
        at org.codehaus.janino.SimpleCompiler.cook(SimpleCompiler.java:192)
        at org.codehaus.commons.compiler.Cookable.cook(Cookable.java:84)
        at org.codehaus.commons.compiler.Cookable.cook(Cookable.java:77)
        at org.codehaus.janino.ClassBodyEvaluator.<init>(ClassBodyEvaluator.java:72)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.compile(CodeGenerator.scala:245)
        at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:87)
        at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:29)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator$$anon$1.load(CodeGenerator.scala:272)
        at com.google.common.cache.LocalCache$LoadingValueReference.loadFuture(LocalCache.java:3599)
        at com.google.common.cache.LocalCache$Segment.loadSync(LocalCache.java:2379)
        at com.google.common.cache.LocalCache$Segment.lockedGetOrLoad(LocalCache.java:2342)
        at com.google.common.cache.LocalCache$Segment.get(LocalCache.java:2257)
        at com.google.common.cache.LocalCache.get(LocalCache.java:4000)
        at com.google.common.cache.LocalCache.getOrLoad(LocalCache.java:4004)
        at com.google.common.cache.LocalCache$LocalLoadingCache.get(LocalCache.java:4874)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.generate(CodeGenerator.scala:285)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.generate(CodeGenerator.scala:282)
        at org.apache.spark.sql.execution.SparkPlan.newMutableProjection(SparkPlan.scala:173)
        at org.apache.spark.sql.execution.Project.buildProjection$lzycompute(basicOperators.scala:39)
        at org.apache.spark.sql.execution.Project.buildProjection(basicOperators.scala:39)
        at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:42)
        at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:41)
        at org.apache.spark.rdd.RDD$$anonfun$mapPartitions$1$$anonfun$apply$17.apply(RDD.scala:686)
        at org.apache.spark.rdd.RDD$$anonfun$mapPartitions$1$$anonfun$apply$17.apply(RDD.scala:686)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.CoalescedRDD$$anonfun$compute$1.apply(CoalescedRDD.scala:93)
        at org.apache.spark.rdd.CoalescedRDD$$anonfun$compute$1.apply(CoalescedRDD.scala:92)
        at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at org.apache.spark.sql.DataFrame$$anonfun$toJSON$1$$anon$1.hasNext(DataFrame.scala:1471)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply$mcV$sp(PairRDDFunctions.scala:1108)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply(PairRDDFunctions.scala:1108)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply(PairRDDFunctions.scala:1108)
        at org.apache.spark.util.Utils$.tryWithSafeFinally(Utils.scala:1285)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13.apply(PairRDDFunctions.scala:1116)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13.apply(PairRDDFunctions.scala:1095)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:63)
        at org.apache.spark.scheduler.Task.run(Task.scala:70)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:213)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ClassNotFoundException: Object
        at org.apache.spark.repl.ExecutorClassLoader.findClass(ExecutorClassLoader.scala:79)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:344)
        at org.codehaus.janino.ClassLoaderIClassLoader.findIClass(ClassLoaderIClassLoader.java:78)
        at org.codehaus.janino.IClassLoader.loadIClass(IClassLoader.java:254)
        at org.codehaus.janino.UnitCompiler.findTypeByName(UnitCompiler.java:6893)
        ... 80 more
Caused by: java.lang.ClassNotFoundException: Object
        at java.lang.ClassLoader.findClass(ClassLoader.java:530)
        at org.apache.spark.util.ParentClassLoader.findClass(ParentClassLoader.scala:26)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at org.apache.spark.util.ParentClassLoader.loadClass(ParentClassLoader.scala:34)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        at org.apache.spark.util.ParentClassLoader.loadClass(ParentClassLoader.scala:30)
        at org.apache.spark.repl.ExecutorClassLoader.findClass(ExecutorClassLoader.scala:74)
        ... 87 more
15/06/18 15:36:30 ERROR executor.Executor: Exception in task 0.0 in stage 4.0 (TID 18)
java.util.concurrent.ExecutionException: org.codehaus.commons.compiler.CompileException: Line 28, Column 35: Object
        at com.google.common.util.concurrent.AbstractFuture$Sync.getValue(AbstractFuture.java:306)
        at com.google.common.util.concurrent.AbstractFuture$Sync.get(AbstractFuture.java:293)
        at com.google.common.util.concurrent.AbstractFuture.get(AbstractFuture.java:116)
        at com.google.common.util.concurrent.Uninterruptibles.getUninterruptibly(Uninterruptibles.java:135)
        at com.google.common.cache.LocalCache$Segment.getAndRecordStats(LocalCache.java:2410)
        at com.google.common.cache.LocalCache$Segment.loadSync(LocalCache.java:2380)
        at com.google.common.cache.LocalCache$Segment.lockedGetOrLoad(LocalCache.java:2342)
        at com.google.common.cache.LocalCache$Segment.get(LocalCache.java:2257)
        at com.google.common.cache.LocalCache.get(LocalCache.java:4000)
        at com.google.common.cache.LocalCache.getOrLoad(LocalCache.java:4004)
        at com.google.common.cache.LocalCache$LocalLoadingCache.get(LocalCache.java:4874)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.generate(CodeGenerator.scala:285)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.generate(CodeGenerator.scala:282)
        at org.apache.spark.sql.execution.SparkPlan.newMutableProjection(SparkPlan.scala:173)
        at org.apache.spark.sql.execution.Project.buildProjection$lzycompute(basicOperators.scala:39)
        at org.apache.spark.sql.execution.Project.buildProjection(basicOperators.scala:39)
        at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:42)
        at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:41)
        at org.apache.spark.rdd.RDD$$anonfun$mapPartitions$1$$anonfun$apply$17.apply(RDD.scala:686)
        at org.apache.spark.rdd.RDD$$anonfun$mapPartitions$1$$anonfun$apply$17.apply(RDD.scala:686)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.CoalescedRDD$$anonfun$compute$1.apply(CoalescedRDD.scala:93)
        at org.apache.spark.rdd.CoalescedRDD$$anonfun$compute$1.apply(CoalescedRDD.scala:92)
        at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at org.apache.spark.sql.DataFrame$$anonfun$toJSON$1$$anon$1.hasNext(DataFrame.scala:1471)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply$mcV$sp(PairRDDFunctions.scala:1108)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply(PairRDDFunctions.scala:1108)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply(PairRDDFunctions.scala:1108)
        at org.apache.spark.util.Utils$.tryWithSafeFinally(Utils.scala:1285)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13.apply(PairRDDFunctions.scala:1116)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13.apply(PairRDDFunctions.scala:1095)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:63)
        at org.apache.spark.scheduler.Task.run(Task.scala:70)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:213)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
Caused by: org.codehaus.commons.compiler.CompileException: Line 28, Column 35: Object
        at org.codehaus.janino.UnitCompiler.findTypeByName(UnitCompiler.java:6897)
        at org.codehaus.janino.UnitCompiler.getReferenceType(UnitCompiler.java:5331)
        at org.codehaus.janino.UnitCompiler.getReferenceType(UnitCompiler.java:5207)
        at org.codehaus.janino.UnitCompiler.getType2(UnitCompiler.java:5188)
        at org.codehaus.janino.UnitCompiler.access$12600(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$16.visitReferenceType(UnitCompiler.java:5119)
        at org.codehaus.janino.Java$ReferenceType.accept(Java.java:2880)
        at org.codehaus.janino.UnitCompiler.getType(UnitCompiler.java:5159)
        at org.codehaus.janino.UnitCompiler.access$16700(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$31.getParameterTypes2(UnitCompiler.java:8533)
        at org.codehaus.janino.IClass$IInvocable.getParameterTypes(IClass.java:835)
        at org.codehaus.janino.IClass$IMethod.getDescriptor2(IClass.java:1063)
        at org.codehaus.janino.IClass$IInvocable.getDescriptor(IClass.java:849)
        at org.codehaus.janino.IClass.getIMethods(IClass.java:211)
        at org.codehaus.janino.IClass.getIMethods(IClass.java:199)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:409)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:658)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:662)
        at org.codehaus.janino.UnitCompiler.access$600(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$2.visitMemberClassDeclaration(UnitCompiler.java:350)
        at org.codehaus.janino.Java$MemberClassDeclaration.accept(Java.java:1035)
        at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:354)
        at org.codehaus.janino.UnitCompiler.compileDeclaredMemberTypes(UnitCompiler.java:769)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:532)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:393)
        at org.codehaus.janino.UnitCompiler.access$400(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$2.visitPackageMemberClassDeclaration(UnitCompiler.java:347)
        at org.codehaus.janino.Java$PackageMemberClassDeclaration.accept(Java.java:1139)
        at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:354)
        at org.codehaus.janino.UnitCompiler.compileUnit(UnitCompiler.java:322)
        at org.codehaus.janino.SimpleCompiler.compileToClassLoader(SimpleCompiler.java:383)
        at org.codehaus.janino.ClassBodyEvaluator.compileToClass(ClassBodyEvaluator.java:315)
        at org.codehaus.janino.ClassBodyEvaluator.cook(ClassBodyEvaluator.java:233)
        at org.codehaus.janino.SimpleCompiler.cook(SimpleCompiler.java:192)
        at org.codehaus.commons.compiler.Cookable.cook(Cookable.java:84)
        at org.codehaus.commons.compiler.Cookable.cook(Cookable.java:77)
        at org.codehaus.janino.ClassBodyEvaluator.<init>(ClassBodyEvaluator.java:72)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.compile(CodeGenerator.scala:245)
        at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:87)
        at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:29)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator$$anon$1.load(CodeGenerator.scala:272)
        at com.google.common.cache.LocalCache$LoadingValueReference.loadFuture(LocalCache.java:3599)
        at com.google.common.cache.LocalCache$Segment.loadSync(LocalCache.java:2379)
        ... 38 more
Caused by: java.lang.ClassNotFoundException: Object
        at org.apache.spark.repl.ExecutorClassLoader.findClass(ExecutorClassLoader.scala:79)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:344)
        at org.codehaus.janino.ClassLoaderIClassLoader.findIClass(ClassLoaderIClassLoader.java:78)
        at org.codehaus.janino.IClassLoader.loadIClass(IClassLoader.java:254)
        at org.codehaus.janino.UnitCompiler.findTypeByName(UnitCompiler.java:6893)
        ... 80 more
Caused by: java.lang.ClassNotFoundException: Object
        at java.lang.ClassLoader.findClass(ClassLoader.java:530)
        at org.apache.spark.util.ParentClassLoader.findClass(ParentClassLoader.scala:26)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at org.apache.spark.util.ParentClassLoader.loadClass(ParentClassLoader.scala:34)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        at org.apache.spark.util.ParentClassLoader.loadClass(ParentClassLoader.scala:30)
        at org.apache.spark.repl.ExecutorClassLoader.findClass(ExecutorClassLoader.scala:74)
        ... 87 more
15/06/18 15:36:30 WARN scheduler.TaskSetManager: Lost task 0.0 in stage 4.0 (TID 18, localhost): java.util.concurrent.ExecutionException: org.codehaus.commons.compiler.CompileException: Line 28, Column 35: Object
        at com.google.common.util.concurrent.AbstractFuture$Sync.getValue(AbstractFuture.java:306)
        at com.google.common.util.concurrent.AbstractFuture$Sync.get(AbstractFuture.java:293)
        at com.google.common.util.concurrent.AbstractFuture.get(AbstractFuture.java:116)
        at com.google.common.util.concurrent.Uninterruptibles.getUninterruptibly(Uninterruptibles.java:135)
        at com.google.common.cache.LocalCache$Segment.getAndRecordStats(LocalCache.java:2410)
        at com.google.common.cache.LocalCache$Segment.loadSync(LocalCache.java:2380)
        at com.google.common.cache.LocalCache$Segment.lockedGetOrLoad(LocalCache.java:2342)
        at com.google.common.cache.LocalCache$Segment.get(LocalCache.java:2257)
        at com.google.common.cache.LocalCache.get(LocalCache.java:4000)
        at com.google.common.cache.LocalCache.getOrLoad(LocalCache.java:4004)
        at com.google.common.cache.LocalCache$LocalLoadingCache.get(LocalCache.java:4874)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.generate(CodeGenerator.scala:285)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.generate(CodeGenerator.scala:282)
        at org.apache.spark.sql.execution.SparkPlan.newMutableProjection(SparkPlan.scala:173)
        at org.apache.spark.sql.execution.Project.buildProjection$lzycompute(basicOperators.scala:39)
        at org.apache.spark.sql.execution.Project.buildProjection(basicOperators.scala:39)
        at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:42)
        at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:41)
        at org.apache.spark.rdd.RDD$$anonfun$mapPartitions$1$$anonfun$apply$17.apply(RDD.scala:686)
        at org.apache.spark.rdd.RDD$$anonfun$mapPartitions$1$$anonfun$apply$17.apply(RDD.scala:686)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.CoalescedRDD$$anonfun$compute$1.apply(CoalescedRDD.scala:93)
        at org.apache.spark.rdd.CoalescedRDD$$anonfun$compute$1.apply(CoalescedRDD.scala:92)
        at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at org.apache.spark.sql.DataFrame$$anonfun$toJSON$1$$anon$1.hasNext(DataFrame.scala:1471)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply$mcV$sp(PairRDDFunctions.scala:1108)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply(PairRDDFunctions.scala:1108)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply(PairRDDFunctions.scala:1108)
        at org.apache.spark.util.Utils$.tryWithSafeFinally(Utils.scala:1285)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13.apply(PairRDDFunctions.scala:1116)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13.apply(PairRDDFunctions.scala:1095)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:63)
        at org.apache.spark.scheduler.Task.run(Task.scala:70)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:213)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
Caused by: org.codehaus.commons.compiler.CompileException: Line 28, Column 35: Object
        at org.codehaus.janino.UnitCompiler.findTypeByName(UnitCompiler.java:6897)
        at org.codehaus.janino.UnitCompiler.getReferenceType(UnitCompiler.java:5331)
        at org.codehaus.janino.UnitCompiler.getReferenceType(UnitCompiler.java:5207)
        at org.codehaus.janino.UnitCompiler.getType2(UnitCompiler.java:5188)
        at org.codehaus.janino.UnitCompiler.access$12600(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$16.visitReferenceType(UnitCompiler.java:5119)
        at org.codehaus.janino.Java$ReferenceType.accept(Java.java:2880)
        at org.codehaus.janino.UnitCompiler.getType(UnitCompiler.java:5159)
        at org.codehaus.janino.UnitCompiler.access$16700(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$31.getParameterTypes2(UnitCompiler.java:8533)
        at org.codehaus.janino.IClass$IInvocable.getParameterTypes(IClass.java:835)
        at org.codehaus.janino.IClass$IMethod.getDescriptor2(IClass.java:1063)
        at org.codehaus.janino.IClass$IInvocable.getDescriptor(IClass.java:849)
        at org.codehaus.janino.IClass.getIMethods(IClass.java:211)
        at org.codehaus.janino.IClass.getIMethods(IClass.java:199)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:409)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:658)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:662)
        at org.codehaus.janino.UnitCompiler.access$600(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$2.visitMemberClassDeclaration(UnitCompiler.java:350)
        at org.codehaus.janino.Java$MemberClassDeclaration.accept(Java.java:1035)
        at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:354)
        at org.codehaus.janino.UnitCompiler.compileDeclaredMemberTypes(UnitCompiler.java:769)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:532)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:393)
        at org.codehaus.janino.UnitCompiler.access$400(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$2.visitPackageMemberClassDeclaration(UnitCompiler.java:347)
        at org.codehaus.janino.Java$PackageMemberClassDeclaration.accept(Java.java:1139)
        at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:354)
        at org.codehaus.janino.UnitCompiler.compileUnit(UnitCompiler.java:322)
        at org.codehaus.janino.SimpleCompiler.compileToClassLoader(SimpleCompiler.java:383)
        at org.codehaus.janino.ClassBodyEvaluator.compileToClass(ClassBodyEvaluator.java:315)
        at org.codehaus.janino.ClassBodyEvaluator.cook(ClassBodyEvaluator.java:233)
        at org.codehaus.janino.SimpleCompiler.cook(SimpleCompiler.java:192)
        at org.codehaus.commons.compiler.Cookable.cook(Cookable.java:84)
        at org.codehaus.commons.compiler.Cookable.cook(Cookable.java:77)
        at org.codehaus.janino.ClassBodyEvaluator.<init>(ClassBodyEvaluator.java:72)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.compile(CodeGenerator.scala:245)
        at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:87)
        at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:29)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator$$anon$1.load(CodeGenerator.scala:272)
        at com.google.common.cache.LocalCache$LoadingValueReference.loadFuture(LocalCache.java:3599)
        at com.google.common.cache.LocalCache$Segment.loadSync(LocalCache.java:2379)
        ... 38 more
Caused by: java.lang.ClassNotFoundException: Object
        at org.apache.spark.repl.ExecutorClassLoader.findClass(ExecutorClassLoader.scala:79)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:344)
        at org.codehaus.janino.ClassLoaderIClassLoader.findIClass(ClassLoaderIClassLoader.java:78)
        at org.codehaus.janino.IClassLoader.loadIClass(IClassLoader.java:254)
        at org.codehaus.janino.UnitCompiler.findTypeByName(UnitCompiler.java:6893)
        ... 80 more
Caused by: java.lang.ClassNotFoundException: Object
        at java.lang.ClassLoader.findClass(ClassLoader.java:530)
        at org.apache.spark.util.ParentClassLoader.findClass(ParentClassLoader.scala:26)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at org.apache.spark.util.ParentClassLoader.loadClass(ParentClassLoader.scala:34)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        at org.apache.spark.util.ParentClassLoader.loadClass(ParentClassLoader.scala:30)
        at org.apache.spark.repl.ExecutorClassLoader.findClass(ExecutorClassLoader.scala:74)
        ... 87 more

15/06/18 15:36:30 ERROR scheduler.TaskSetManager: Task 0 in stage 4.0 failed 1 times; aborting job
15/06/18 15:36:30 INFO scheduler.TaskSchedulerImpl: Removed TaskSet 4.0, whose tasks have all completed, from pool
15/06/18 15:36:30 INFO scheduler.TaskSchedulerImpl: Cancelling stage 4
15/06/18 15:36:30 INFO scheduler.DAGScheduler: ResultStage 4 (json at <console>:23) failed in 0.054 s
15/06/18 15:36:30 INFO scheduler.DAGScheduler: Job 4 failed: json at <console>:23, took 0.059715 s
org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 4.0 failed 1 times, most recent failure: Lost task 0.0 in stage 4.0 (TID 18, localhost): java.util.concurrent.ExecutionException: org.codehaus.commons.compiler.CompileException: Line 28, Column 35: Object
        at com.google.common.util.concurrent.AbstractFuture$Sync.getValue(AbstractFuture.java:306)
        at com.google.common.util.concurrent.AbstractFuture$Sync.get(AbstractFuture.java:293)
        at com.google.common.util.concurrent.AbstractFuture.get(AbstractFuture.java:116)
        at com.google.common.util.concurrent.Uninterruptibles.getUninterruptibly(Uninterruptibles.java:135)
        at com.google.common.cache.LocalCache$Segment.getAndRecordStats(LocalCache.java:2410)
        at com.google.common.cache.LocalCache$Segment.loadSync(LocalCache.java:2380)
        at com.google.common.cache.LocalCache$Segment.lockedGetOrLoad(LocalCache.java:2342)
        at com.google.common.cache.LocalCache$Segment.get(LocalCache.java:2257)
        at com.google.common.cache.LocalCache.get(LocalCache.java:4000)
        at com.google.common.cache.LocalCache.getOrLoad(LocalCache.java:4004)
        at com.google.common.cache.LocalCache$LocalLoadingCache.get(LocalCache.java:4874)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.generate(CodeGenerator.scala:285)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.generate(CodeGenerator.scala:282)
        at org.apache.spark.sql.execution.SparkPlan.newMutableProjection(SparkPlan.scala:173)
        at org.apache.spark.sql.execution.Project.buildProjection$lzycompute(basicOperators.scala:39)
        at org.apache.spark.sql.execution.Project.buildProjection(basicOperators.scala:39)
        at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:42)
        at org.apache.spark.sql.execution.Project$$anonfun$1.apply(basicOperators.scala:41)
        at org.apache.spark.rdd.RDD$$anonfun$mapPartitions$1$$anonfun$apply$17.apply(RDD.scala:686)
        at org.apache.spark.rdd.RDD$$anonfun$mapPartitions$1$$anonfun$apply$17.apply(RDD.scala:686)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
        at org.apache.spark.rdd.CoalescedRDD$$anonfun$compute$1.apply(CoalescedRDD.scala:93)
        at org.apache.spark.rdd.CoalescedRDD$$anonfun$compute$1.apply(CoalescedRDD.scala:92)
        at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at org.apache.spark.sql.DataFrame$$anonfun$toJSON$1$$anon$1.hasNext(DataFrame.scala:1471)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply$mcV$sp(PairRDDFunctions.scala:1108)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply(PairRDDFunctions.scala:1108)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13$$anonfun$apply$6.apply(PairRDDFunctions.scala:1108)
        at org.apache.spark.util.Utils$.tryWithSafeFinally(Utils.scala:1285)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13.apply(PairRDDFunctions.scala:1116)
        at org.apache.spark.rdd.PairRDDFunctions$$anonfun$saveAsHadoopDataset$1$$anonfun$13.apply(PairRDDFunctions.scala:1095)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:63)
        at org.apache.spark.scheduler.Task.run(Task.scala:70)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:213)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
Caused by: org.codehaus.commons.compiler.CompileException: Line 28, Column 35: Object
        at org.codehaus.janino.UnitCompiler.findTypeByName(UnitCompiler.java:6897)
        at org.codehaus.janino.UnitCompiler.getReferenceType(UnitCompiler.java:5331)
        at org.codehaus.janino.UnitCompiler.getReferenceType(UnitCompiler.java:5207)
        at org.codehaus.janino.UnitCompiler.getType2(UnitCompiler.java:5188)
        at org.codehaus.janino.UnitCompiler.access$12600(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$16.visitReferenceType(UnitCompiler.java:5119)
        at org.codehaus.janino.Java$ReferenceType.accept(Java.java:2880)
        at org.codehaus.janino.UnitCompiler.getType(UnitCompiler.java:5159)
        at org.codehaus.janino.UnitCompiler.access$16700(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$31.getParameterTypes2(UnitCompiler.java:8533)
        at org.codehaus.janino.IClass$IInvocable.getParameterTypes(IClass.java:835)
        at org.codehaus.janino.IClass$IMethod.getDescriptor2(IClass.java:1063)
        at org.codehaus.janino.IClass$IInvocable.getDescriptor(IClass.java:849)
        at org.codehaus.janino.IClass.getIMethods(IClass.java:211)
        at org.codehaus.janino.IClass.getIMethods(IClass.java:199)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:409)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:658)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:662)
        at org.codehaus.janino.UnitCompiler.access$600(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$2.visitMemberClassDeclaration(UnitCompiler.java:350)
        at org.codehaus.janino.Java$MemberClassDeclaration.accept(Java.java:1035)
        at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:354)
        at org.codehaus.janino.UnitCompiler.compileDeclaredMemberTypes(UnitCompiler.java:769)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:532)
        at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:393)
        at org.codehaus.janino.UnitCompiler.access$400(UnitCompiler.java:185)
        at org.codehaus.janino.UnitCompiler$2.visitPackageMemberClassDeclaration(UnitCompiler.java:347)
        at org.codehaus.janino.Java$PackageMemberClassDeclaration.accept(Java.java:1139)
        at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:354)
        at org.codehaus.janino.UnitCompiler.compileUnit(UnitCompiler.java:322)
        at org.codehaus.janino.SimpleCompiler.compileToClassLoader(SimpleCompiler.java:383)
        at org.codehaus.janino.ClassBodyEvaluator.compileToClass(ClassBodyEvaluator.java:315)
        at org.codehaus.janino.ClassBodyEvaluator.cook(ClassBodyEvaluator.java:233)
        at org.codehaus.janino.SimpleCompiler.cook(SimpleCompiler.java:192)
        at org.codehaus.commons.compiler.Cookable.cook(Cookable.java:84)
        at org.codehaus.commons.compiler.Cookable.cook(Cookable.java:77)
        at org.codehaus.janino.ClassBodyEvaluator.<init>(ClassBodyEvaluator.java:72)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.compile(CodeGenerator.scala:245)
        at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:87)
        at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:29)
        at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator$$anon$1.load(CodeGenerator.scala:272)
        at com.google.common.cache.LocalCache$LoadingValueReference.loadFuture(LocalCache.java:3599)
        at com.google.common.cache.LocalCache$Segment.loadSync(LocalCache.java:2379)
        ... 38 more
Caused by: java.lang.ClassNotFoundException: Object
        at org.apache.spark.repl.ExecutorClassLoader.findClass(ExecutorClassLoader.scala:79)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:344)
        at org.codehaus.janino.ClassLoaderIClassLoader.findIClass(ClassLoaderIClassLoader.java:78)
        at org.codehaus.janino.IClassLoader.loadIClass(IClassLoader.java:254)
        at org.codehaus.janino.UnitCompiler.findTypeByName(UnitCompiler.java:6893)
        ... 80 more
Caused by: java.lang.ClassNotFoundException: Object
        at java.lang.ClassLoader.findClass(ClassLoader.java:530)
        at org.apache.spark.util.ParentClassLoader.findClass(ParentClassLoader.scala:26)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at org.apache.spark.util.ParentClassLoader.loadClass(ParentClassLoader.scala:34)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
        at org.apache.spark.util.ParentClassLoader.loadClass(ParentClassLoader.scala:30)
        at org.apache.spark.repl.ExecutorClassLoader.findClass(ExecutorClassLoader.scala:74)
        ... 87 more

Driver stacktrace:
        at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1285)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1276)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1275)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
        at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1275)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:749)
        at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:749)
        at scala.Option.foreach(Option.scala:236)
        at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:749)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1484)
        at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1445)
        at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
{noformat}


---

* [SPARK-8457](https://issues.apache.org/jira/browse/SPARK-8457) | *Trivial* | **Documentation for N-Gram feature transformer**

Documentation for using n-gram feature transformer needs to be written. In particular, we need to describe the input (ArrayType(StringType)) and output (ArrayType(ArrayType(StringType)) formats, nullability constraints (input is nullable, output is not) and behaviors (null values are ignored in generating n-grams), as well as edge cases (e.g. n-gram length > input sequence length will  yield a single output n-gram equal to the input sequence).


---

* [SPARK-8456](https://issues.apache.org/jira/browse/SPARK-8456) | *Trivial* | **Python API for N-Gram Feature Transformer**

Write Python API for N-Gram Featurizer


---

* [SPARK-8455](https://issues.apache.org/jira/browse/SPARK-8455) | *Minor* | **Implement N-Gram Feature Transformer**

N-grams are a NLP feature representation which generalize bag of words to include local context (the n-1 preceding words). We can implement N-grams in ML as a feature transformer (likely directly after tokenization).

For example, "this is a test" should tokenize to ["this","is","a","test"], which upon applying a 2-gram feature transform should yield [["this","is"],["is","a"],["a","test"]].


---

* [SPARK-8452](https://issues.apache.org/jira/browse/SPARK-8452) | *Major* | **expose jobGroup API in SparkR**

Following job management calls are missing in SparkR:
{code}
setJobGroup()
cancelJobGroup()
clearJobGroup()
{code}


---

* [SPARK-8451](https://issues.apache.org/jira/browse/SPARK-8451) | *Major* | **SparkSubmitSuite never checks for process exit code**

We just never did. If the subprocess throws an exception we just ignore it.


---

* [SPARK-8450](https://issues.apache.org/jira/browse/SPARK-8450) | *Major* | **PySpark write.parquet raises Unsupported datatype DecimalType()**

I'm getting an Exception when I try to save a DataFrame with a DeciamlType as an parquet file

Minimal Example:
{code}
from decimal import Decimal
from pyspark.sql import SQLContext
from pyspark.sql.types import *

sqlContext = SQLContext(sc)
schema = StructType([
    StructField('id', LongType()),
    StructField('value', DecimalType())])
rdd = sc.parallelize([[1, Decimal("0.5")],[2, Decimal("2.9")]])
df = sqlContext.createDataFrame(rdd, schema)
df.write.parquet("hdfs://srv:9000/user/ph/decimal.parquet", 'overwrite')

{code}

Stack Trace
{code}
---------------------------------------------------------------------------
Py4JJavaError                             Traceback (most recent call last)
<ipython-input-19-a77dac8de5f3> in <module>()
----> 1 sr.write.parquet("hdfs://srv:9000/user/ph/decimal.parquet", 'overwrite')

/home/spark/spark-1.4.0-bin-hadoop2.6/python/pyspark/sql/readwriter.pyc in parquet(self, path, mode)
    367         :param mode: one of `append`, `overwrite`, `error`, `ignore` (default: error)
    368         """
--> 369         return self.\_jwrite.mode(mode).parquet(path)
    370 
    371     @since(1.4)

/home/spark/spark-1.4.0-bin-hadoop2.6/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py in \_\_call\_\_(self, *args)
    536         answer = self.gateway\_client.send\_command(command)
    537         return\_value = get\_return\_value(answer, self.gateway\_client,
--> 538                 self.target\_id, self.name)
    539 
    540         for temp\_arg in temp\_args:

/home/spark/spark-1.4.0-bin-hadoop2.6/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
    298                 raise Py4JJavaError(
    299                     'An error occurred while calling {0}{1}{2}.\n'.
--> 300                     format(target\_id, '.', name), value)
    301             else:
    302                 raise Py4JError(

Py4JJavaError: An error occurred while calling o361.parquet.
: org.apache.spark.SparkException: Job aborted.
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.insert(commands.scala:138)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.run(commands.scala:114)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:57)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:57)
	at org.apache.spark.sql.execution.ExecutedCommand.doExecute(commands.scala:68)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$1.apply(SparkPlan.scala:88)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$1.apply(SparkPlan.scala:88)
	at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:148)
	at org.apache.spark.sql.execution.SparkPlan.execute(SparkPlan.scala:87)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:939)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:939)
	at org.apache.spark.sql.sources.ResolvedDataSource$.apply(ddl.scala:332)
	at org.apache.spark.sql.DataFrameWriter.save(DataFrameWriter.scala:144)
	at org.apache.spark.sql.DataFrameWriter.save(DataFrameWriter.scala:135)
	at org.apache.spark.sql.DataFrameWriter.parquet(DataFrameWriter.scala:281)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:231)
	at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
	at py4j.Gateway.invoke(Gateway.java:259)
	at py4j.commands.AbstractCommand.invokeMethod(AbstractCommand.java:133)
	at py4j.commands.CallCommand.execute(CallCommand.java:79)
	at py4j.GatewayConnection.run(GatewayConnection.java:207)
	at java.lang.Thread.run(Thread.java:745)
Caused by: org.apache.spark.SparkException: Job aborted due to stage failure: Task 158 in stage 35.0 failed 4 times, most recent failure: Lost task 158.3 in stage 35.0 (TID 2736, 10.2.160.14): java.lang.RuntimeException: Unsupported datatype DecimalType()
	at scala.sys.package$.error(package.scala:27)
	at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$fromDataType$2.apply(ParquetTypes.scala:374)
	at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$fromDataType$2.apply(ParquetTypes.scala:318)
	at scala.Option.getOrElse(Option.scala:120)
	at org.apache.spark.sql.parquet.ParquetTypesConverter$.fromDataType(ParquetTypes.scala:317)
	at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$4.apply(ParquetTypes.scala:398)
	at org.apache.spark.sql.parquet.ParquetTypesConverter$$anonfun$4.apply(ParquetTypes.scala:397)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
	at scala.collection.mutable.WrappedArray.foreach(WrappedArray.scala:34)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.sql.parquet.ParquetTypesConverter$.convertFromAttributes(ParquetTypes.scala:396)
	at org.apache.spark.sql.parquet.RowWriteSupport.init(ParquetTableSupport.scala:150)
	at parquet.hadoop.ParquetOutputFormat.getRecordWriter(ParquetOutputFormat.java:278)
	at parquet.hadoop.ParquetOutputFormat.getRecordWriter(ParquetOutputFormat.java:252)
	at org.apache.spark.sql.parquet.ParquetOutputWriter.<init>(newParquet.scala:111)
	at org.apache.spark.sql.parquet.ParquetRelation2$$anon$4.newInstance(newParquet.scala:244)
	at org.apache.spark.sql.sources.DefaultWriterContainer.initWriters(commands.scala:386)
	at org.apache.spark.sql.sources.BaseWriterContainer.executorSideSetup(commands.scala:298)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.org$apache$spark$sql$sources$InsertIntoHadoopFsRelation$$writeRows$1(commands.scala:142)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation$$anonfun$insert$1.apply(commands.scala:132)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation$$anonfun$insert$1.apply(commands.scala:132)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:63)
	at org.apache.spark.scheduler.Task.run(Task.scala:70)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:213)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)

Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1266)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1257)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1256)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1256)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:730)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:730)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:730)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1450)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1411)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
{code}

I also tried to set the precision < 18
{code}
schema = StructType([
    StructField('id', LongType()),
    StructField('value', DecimalType(16,2))])
{code}

which raises a different exception
{code}
---------------------------------------------------------------------------
Py4JJavaError                             Traceback (most recent call last)
<ipython-input-23-bba70b7c0805> in <module>()
----> 1 df.write.parquet("hdfs://srv:9000/user/ph/decimal.parquet", 'overwrite')

/home/spark/spark-1.4.0-bin-hadoop2.6/python/pyspark/sql/readwriter.pyc in parquet(self, path, mode)
    367         :param mode: one of `append`, `overwrite`, `error`, `ignore` (default: error)
    368         """
--> 369         return self.\_jwrite.mode(mode).parquet(path)
    370 
    371     @since(1.4)

/home/spark/spark-1.4.0-bin-hadoop2.6/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py in \_\_call\_\_(self, *args)
    536         answer = self.gateway\_client.send\_command(command)
    537         return\_value = get\_return\_value(answer, self.gateway\_client,
--> 538                 self.target\_id, self.name)
    539 
    540         for temp\_arg in temp\_args:

/home/spark/spark-1.4.0-bin-hadoop2.6/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
    298                 raise Py4JJavaError(
    299                     'An error occurred while calling {0}{1}{2}.\n'.
--> 300                     format(target\_id, '.', name), value)
    301             else:
    302                 raise Py4JError(

Py4JJavaError: An error occurred while calling o417.parquet.
: org.apache.spark.SparkException: Job aborted.
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.insert(commands.scala:138)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.run(commands.scala:114)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:57)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:57)
	at org.apache.spark.sql.execution.ExecutedCommand.doExecute(commands.scala:68)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$1.apply(SparkPlan.scala:88)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$1.apply(SparkPlan.scala:88)
	at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:148)
	at org.apache.spark.sql.execution.SparkPlan.execute(SparkPlan.scala:87)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:939)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:939)
	at org.apache.spark.sql.sources.ResolvedDataSource$.apply(ddl.scala:332)
	at org.apache.spark.sql.DataFrameWriter.save(DataFrameWriter.scala:144)
	at org.apache.spark.sql.DataFrameWriter.save(DataFrameWriter.scala:135)
	at org.apache.spark.sql.DataFrameWriter.parquet(DataFrameWriter.scala:281)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:231)
	at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
	at py4j.Gateway.invoke(Gateway.java:259)
	at py4j.commands.AbstractCommand.invokeMethod(AbstractCommand.java:133)
	at py4j.commands.CallCommand.execute(CallCommand.java:79)
	at py4j.GatewayConnection.run(GatewayConnection.java:207)
	at java.lang.Thread.run(Thread.java:745)
Caused by: org.apache.spark.SparkException: Job aborted due to stage failure: Task 159 in stage 41.0 failed 4 times, most recent failure: Lost task 159.3 in stage 41.0 (TID 3211, 10.2.160.14): org.apache.spark.SparkException: Task failed while writing rows.
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.org$apache$spark$sql$sources$InsertIntoHadoopFsRelation$$writeRows$1(commands.scala:161)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation$$anonfun$insert$1.apply(commands.scala:132)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation$$anonfun$insert$1.apply(commands.scala:132)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:63)
	at org.apache.spark.scheduler.Task.run(Task.scala:70)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:213)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ClassCastException: java.math.BigDecimal cannot be cast to org.apache.spark.sql.types.Decimal
	at org.apache.spark.sql.parquet.MutableRowWriteSupport.consumeType(ParquetTableSupport.scala:365)
	at org.apache.spark.sql.parquet.MutableRowWriteSupport.write(ParquetTableSupport.scala:335)
	at org.apache.spark.sql.parquet.MutableRowWriteSupport.write(ParquetTableSupport.scala:321)
	at parquet.hadoop.InternalParquetRecordWriter.write(InternalParquetRecordWriter.java:120)
	at parquet.hadoop.ParquetRecordWriter.write(ParquetRecordWriter.java:81)
	at parquet.hadoop.ParquetRecordWriter.write(ParquetRecordWriter.java:37)
	at org.apache.spark.sql.parquet.ParquetOutputWriter.write(newParquet.scala:114)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.org$apache$spark$sql$sources$InsertIntoHadoopFsRelation$$writeRows$1(commands.scala:154)
	... 8 more

Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1266)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1257)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1256)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1256)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:730)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:730)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:730)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1450)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1411)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)

{code}
The corresponding Scala Version works

{code}
import org.apache.spark.SparkContext
import org.apache.spark.sql.{ Row, SQLContext }
import org.apache.spark.sql.types.{ DecimalType, IntegerType, StructType, StructField }
 
object ParquetDecimal {
  def main(args: Array[String]) {
    // Connect to Spark
    val sc = new SparkContext()
    val sqlContext = new SQLContext(sc)
 
    val schema = StructType(Seq(StructField("id", IntegerType), StructField("value", DecimalType(16, 2))))
    val rows = sc.parallelize(Seq(Row(1, BigDecimal("0.9")), Row(2, BigDecimal("2.9"))))
    val df = sqlContext.createDataFrame(rows, schema)
    df.write.parquet("test.parquet")
  }
}
{code}


---

* [SPARK-8446](https://issues.apache.org/jira/browse/SPARK-8446) | *Major* | **Add helper functions for testing physical SparkPlan operators**

SparkSQL has a nice {{QueryTest}} class for writing tests that run queries; I think we should add an analogous test utility for directly unit testing the physical SparkPlan operators.


---

* [SPARK-8444](https://issues.apache.org/jira/browse/SPARK-8444) | *Minor* | **Add Python example in streaming for queueStream usage**

I noticed there was no Python equivalent for Scala queueStream example.  This will have to be slightly different because changes in the Queue after the stream is created are not recognized.


---

* [SPARK-8443](https://issues.apache.org/jira/browse/SPARK-8443) | *Major* | **GenerateMutableProjection Exceeds JVM Code Size Limits**

GenerateMutableProjection put all expressions columns into a single apply function. When there are a lot of columns, the apply function code size exceeds the 64kb limit, which is a hard limit on jvm that cannot change.

This comes up when we were aggregating about 100 columns using codegen and unsafe feature.

I wrote an unit test that reproduces this issue. 
https://github.com/saurfang/spark/blob/codegen\_size\_limit/sql/catalyst/src/test/scala/org/apache/spark/sql/catalyst/expressions/CodeGenerationSuite.scala

This test currently fails at 2048 expressions. It seems the master is more tolerant than branch-1.4 about this because code is more concise.

While the code on master has changed since branch-1.4, I am able to reproduce the problem in master. For now I hacked my way in branch-1.4 to workaround this problem by wrapping each expression with a separate function then call those functions sequentially in apply. The proper way is probably check the length of the projectCode and break it up as necessary. (This seems to be easier in master actually since we are building code by string rather than quasiquote)

Let me know if anyone has additional thoughts on this, I'm happy to contribute a pull request.

Attaching stack trace produced by unit test
{code}
[info] - code size limit *** FAILED *** (7 seconds, 103 milliseconds)
[info]   com.google.common.util.concurrent.UncheckedExecutionException: org.codehaus.janino.JaninoRuntimeException: Code of method "(Ljava/lang/Object;)Ljava/lang/Object;" of class "SC$SpecificProjection" grows beyond 64 KB
[info]   at com.google.common.cache.LocalCache$Segment.get(LocalCache.java:2263)
[info]   at com.google.common.cache.LocalCache.get(LocalCache.java:4000)
[info]   at com.google.common.cache.LocalCache.getOrLoad(LocalCache.java:4004)
[info]   at com.google.common.cache.LocalCache$LocalLoadingCache.get(LocalCache.java:4874)
[info]   at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.generate(CodeGenerator.scala:285)
[info]   at org.apache.spark.sql.catalyst.expressions.CodeGenerationSuite$$anonfun$2$$anonfun$apply$mcV$sp$2.apply(CodeGenerationSuite.scala:50)
[info]   at org.apache.spark.sql.catalyst.expressions.CodeGenerationSuite$$anonfun$2$$anonfun$apply$mcV$sp$2.apply(CodeGenerationSuite.scala:48)
[info]   at scala.collection.TraversableOnce$$anonfun$foldLeft$1.apply(TraversableOnce.scala:144)
[info]   at scala.collection.TraversableOnce$$anonfun$foldLeft$1.apply(TraversableOnce.scala:144)
[info]   at scala.collection.immutable.Range.foreach(Range.scala:141)
[info]   at scala.collection.TraversableOnce$class.foldLeft(TraversableOnce.scala:144)
[info]   at scala.collection.AbstractTraversable.foldLeft(Traversable.scala:105)
[info]   at org.apache.spark.sql.catalyst.expressions.CodeGenerationSuite$$anonfun$2.apply$mcV$sp(CodeGenerationSuite.scala:47)
[info]   at org.apache.spark.sql.catalyst.expressions.CodeGenerationSuite$$anonfun$2.apply(CodeGenerationSuite.scala:47)
[info]   at org.apache.spark.sql.catalyst.expressions.CodeGenerationSuite$$anonfun$2.apply(CodeGenerationSuite.scala:47)
[info]   at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
[info]   at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
[info]   at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:22)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:20)
[info]   at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
[info]   at org.apache.spark.SparkFunSuite.withFixture(SparkFunSuite.scala:42)
[info]   at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
[info]   at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
[info]   at org.scalatest.FunSuite.runTest(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
[info]   at scala.collection.immutable.List.foreach(List.scala:318)
[info]   at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
[info]   at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
[info]   at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
[info]   at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:208)
[info]   at org.scalatest.FunSuite.runTests(FunSuite.scala:1555)
[info]   at org.scalatest.Suite$class.run(Suite.scala:1424)
[info]   at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
[info]   at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
[info]   at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
[info]   at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:212)
[info]   at org.scalatest.FunSuite.run(FunSuite.scala:1555)
[info]   at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
[info]   at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:294)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:284)
[info]   at java.util.concurrent.FutureTask.run(FutureTask.java:266)
[info]   at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
[info]   at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
[info]   at java.lang.Thread.run(Thread.java:745)
[info]   Cause: org.codehaus.janino.JaninoRuntimeException: Code of method "(Ljava/lang/Object;)Ljava/lang/Object;" of class "SC$SpecificProjection" grows beyond 64 KB
[info]   at org.codehaus.janino.CodeContext.makeSpace(CodeContext.java:941)
[info]   at org.codehaus.janino.CodeContext.write(CodeContext.java:874)
[info]   at org.codehaus.janino.CodeContext.writeBranch(CodeContext.java:965)
[info]   at org.codehaus.janino.UnitCompiler.writeBranch(UnitCompiler.java:10261)
[info]   at org.codehaus.janino.UnitCompiler.compileBoolean2(UnitCompiler.java:2862)
[info]   at org.codehaus.janino.UnitCompiler.access$4800(UnitCompiler.java:185)
[info]   at org.codehaus.janino.UnitCompiler$8.visitAmbiguousName(UnitCompiler.java:2832)
[info]   at org.codehaus.janino.Java$AmbiguousName.accept(Java.java:3138)
[info]   at org.codehaus.janino.UnitCompiler.compileBoolean(UnitCompiler.java:2842)
[info]   at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:1741)
[info]   at org.codehaus.janino.UnitCompiler.access$1200(UnitCompiler.java:185)
[info]   at org.codehaus.janino.UnitCompiler$4.visitIfStatement(UnitCompiler.java:937)
[info]   at org.codehaus.janino.Java$IfStatement.accept(Java.java:2157)
[info]   at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:958)
[info]   at org.codehaus.janino.UnitCompiler.compileStatements(UnitCompiler.java:1007)
[info]   at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:2293)
[info]   at org.codehaus.janino.UnitCompiler.compileDeclaredMethods(UnitCompiler.java:822)
[info]   at org.codehaus.janino.UnitCompiler.compileDeclaredMethods(UnitCompiler.java:794)
[info]   at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:507)
[info]   at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:658)
[info]   at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:662)
[info]   at org.codehaus.janino.UnitCompiler.access$600(UnitCompiler.java:185)
[info]   at org.codehaus.janino.UnitCompiler$2.visitMemberClassDeclaration(UnitCompiler.java:350)
[info]   at org.codehaus.janino.Java$MemberClassDeclaration.accept(Java.java:1035)
[info]   at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:354)
[info]   at org.codehaus.janino.UnitCompiler.compileDeclaredMemberTypes(UnitCompiler.java:769)
[info]   at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:532)
[info]   at org.codehaus.janino.UnitCompiler.compile2(UnitCompiler.java:393)
[info]   at org.codehaus.janino.UnitCompiler.access$400(UnitCompiler.java:185)
[info]   at org.codehaus.janino.UnitCompiler$2.visitPackageMemberClassDeclaration(UnitCompiler.java:347)
[info]   at org.codehaus.janino.Java$PackageMemberClassDeclaration.accept(Java.java:1139)
[info]   at org.codehaus.janino.UnitCompiler.compile(UnitCompiler.java:354)
[info]   at org.codehaus.janino.UnitCompiler.compileUnit(UnitCompiler.java:322)
[info]   at org.codehaus.janino.SimpleCompiler.compileToClassLoader(SimpleCompiler.java:383)
[info]   at org.codehaus.janino.ClassBodyEvaluator.compileToClass(ClassBodyEvaluator.java:315)
[info]   at org.codehaus.janino.ClassBodyEvaluator.cook(ClassBodyEvaluator.java:233)
[info]   at org.codehaus.janino.SimpleCompiler.cook(SimpleCompiler.java:192)
[info]   at org.codehaus.commons.compiler.Cookable.cook(Cookable.java:84)
[info]   at org.codehaus.commons.compiler.Cookable.cook(Cookable.java:77)
[info]   at org.codehaus.janino.ClassBodyEvaluator.<init>(ClassBodyEvaluator.java:72)
[info]   at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.compile(CodeGenerator.scala:245)
[info]   at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:87)
[info]   at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:29)
[info]   at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator$$anon$1.load(CodeGenerator.scala:272)
[info]   at com.google.common.cache.LocalCache$LoadingValueReference.loadFuture(LocalCache.java:3599)
[info]   at com.google.common.cache.LocalCache$Segment.loadSync(LocalCache.java:2379)
[info]   at com.google.common.cache.LocalCache$Segment.lockedGetOrLoad(LocalCache.java:2342)
[info]   at com.google.common.cache.LocalCache$Segment.get(LocalCache.java:2257)
[info]   at com.google.common.cache.LocalCache.get(LocalCache.java:4000)
[info]   at com.google.common.cache.LocalCache.getOrLoad(LocalCache.java:4004)
[info]   at com.google.common.cache.LocalCache$LocalLoadingCache.get(LocalCache.java:4874)
[info]   at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator.generate(CodeGenerator.scala:285)
[info]   at org.apache.spark.sql.catalyst.expressions.CodeGenerationSuite$$anonfun$2$$anonfun$apply$mcV$sp$2.apply(CodeGenerationSuite.scala:50)
[info]   at org.apache.spark.sql.catalyst.expressions.CodeGenerationSuite$$anonfun$2$$anonfun$apply$mcV$sp$2.apply(CodeGenerationSuite.scala:48)
[info]   at scala.collection.TraversableOnce$$anonfun$foldLeft$1.apply(TraversableOnce.scala:144)
[info]   at scala.collection.TraversableOnce$$anonfun$foldLeft$1.apply(TraversableOnce.scala:144)
[info]   at scala.collection.immutable.Range.foreach(Range.scala:141)
[info]   at scala.collection.TraversableOnce$class.foldLeft(TraversableOnce.scala:144)
[info]   at scala.collection.AbstractTraversable.foldLeft(Traversable.scala:105)
[info]   at org.apache.spark.sql.catalyst.expressions.CodeGenerationSuite$$anonfun$2.apply$mcV$sp(CodeGenerationSuite.scala:47)
[info]   at org.apache.spark.sql.catalyst.expressions.CodeGenerationSuite$$anonfun$2.apply(CodeGenerationSuite.scala:47)
[info]   at org.apache.spark.sql.catalyst.expressions.CodeGenerationSuite$$anonfun$2.apply(CodeGenerationSuite.scala:47)
[info]   at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
[info]   at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
[info]   at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:22)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:20)
[info]   at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
[info]   at org.apache.spark.SparkFunSuite.withFixture(SparkFunSuite.scala:42)
[info]   at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
[info]   at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
[info]   at org.scalatest.FunSuite.runTest(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTests$1.apply(FunSuiteLike.scala:208)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:413)
[info]   at org.scalatest.SuperEngine$$anonfun$traverseSubNodes$1$1.apply(Engine.scala:401)
[info]   at scala.collection.immutable.List.foreach(List.scala:318)
[info]   at org.scalatest.SuperEngine.traverseSubNodes$1(Engine.scala:401)
[info]   at org.scalatest.SuperEngine.org$scalatest$SuperEngine$$runTestsInBranch(Engine.scala:396)
[info]   at org.scalatest.SuperEngine.runTestsImpl(Engine.scala:483)
[info]   at org.scalatest.FunSuiteLike$class.runTests(FunSuiteLike.scala:208)
[info]   at org.scalatest.FunSuite.runTests(FunSuite.scala:1555)
[info]   at org.scalatest.Suite$class.run(Suite.scala:1424)
[info]   at org.scalatest.FunSuite.org$scalatest$FunSuiteLike$$super$run(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
[info]   at org.scalatest.FunSuiteLike$$anonfun$run$1.apply(FunSuiteLike.scala:212)
[info]   at org.scalatest.SuperEngine.runImpl(Engine.scala:545)
[info]   at org.scalatest.FunSuiteLike$class.run(FunSuiteLike.scala:212)
[info]   at org.scalatest.FunSuite.run(FunSuite.scala:1555)
[info]   at org.scalatest.tools.Framework.org$scalatest$tools$Framework$$runSuite(Framework.scala:462)
[info]   at org.scalatest.tools.Framework$ScalaTestTask.execute(Framework.scala:671)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:294)
[info]   at sbt.ForkMain$Run$2.call(ForkMain.java:284)
[info]   at java.util.concurrent.FutureTask.run(FutureTask.java:266)
[info]   at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
[info]   at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
[info]   at java.lang.Thread.run(Thread.java:745)
{code}


---

* [SPARK-8437](https://issues.apache.org/jira/browse/SPARK-8437) | *Minor* | **Using directory path without wildcard for filename slow for large number of files with wholeTextFiles and binaryFiles**

When calling wholeTextFiles or binaryFiles with a directory path with 10,000s of files in it, Spark hangs for a few minutes before processing the files.

If you add a * to the end of the path, there is no delay.

This happens for me on Spark 1.3.1 and 1.4 on the local filesystem, HDFS, and on S3.

To reproduce, create a directory with 50,000 files in it, then run:


val a = sc.binaryFiles("file:/path/to/files/")
a.count()

val b = sc.binaryFiles("file:/path/to/files/*")
b.count()

and monitor the different startup times.

For example, in the spark-shell these commands are pasted in together, so the delay at f.count() is from 10:11:08 t- 10:13:29 to output "Total input paths to process : 49999", then until 10:15:42 to being processing files:

scala> val f = sc.binaryFiles("file:/home/ewan/large/")
15/06/18 10:11:07 INFO MemoryStore: ensureFreeSpace(160616) called with curMem=0, maxMem=278019440
15/06/18 10:11:07 INFO MemoryStore: Block broadcast\_0 stored as values in memory (estimated size 156.9 KB, free 265.0 MB)
15/06/18 10:11:08 INFO MemoryStore: ensureFreeSpace(17282) called with curMem=160616, maxMem=278019440
15/06/18 10:11:08 INFO MemoryStore: Block broadcast\_0\_piece0 stored as bytes in memory (estimated size 16.9 KB, free 265.0 MB)
15/06/18 10:11:08 INFO BlockManagerInfo: Added broadcast\_0\_piece0 in memory on localhost:40430 (size: 16.9 KB, free: 265.1 MB)
15/06/18 10:11:08 INFO SparkContext: Created broadcast 0 from binaryFiles at <console>:21
f: org.apache.spark.rdd.RDD[(String, org.apache.spark.input.PortableDataStream)] = file:/home/ewan/large/ BinaryFileRDD[0] at binaryFiles at <console>:21

scala> f.count()
15/06/18 10:13:29 INFO FileInputFormat: Total input paths to process : 49999
15/06/18 10:15:42 INFO FileInputFormat: Total input paths to process : 49999
15/06/18 10:15:42 INFO CombineFileInputFormat: DEBUG: Terminated node allocation with : CompletedNodes: 1, size left: 0
15/06/18 10:15:42 INFO SparkContext: Starting job: count at <console>:24
15/06/18 10:15:42 INFO DAGScheduler: Got job 0 (count at <console>:24) with 49999 output partitions (allowLocal=false)
15/06/18 10:15:42 INFO DAGScheduler: Final stage: ResultStage 0(count at <console>:24)
15/06/18 10:15:42 INFO DAGScheduler: Parents of final stage: List()

Adding a * to the end of the path removes the delay:


scala> val f = sc.binaryFiles("file:/home/ewan/large/*")
15/06/18 10:08:29 INFO MemoryStore: ensureFreeSpace(160616) called with curMem=0, maxMem=278019440
15/06/18 10:08:29 INFO MemoryStore: Block broadcast\_0 stored as values in memory (estimated size 156.9 KB, free 265.0 MB)
15/06/18 10:08:29 INFO MemoryStore: ensureFreeSpace(17309) called with curMem=160616, maxMem=278019440
15/06/18 10:08:29 INFO MemoryStore: Block broadcast\_0\_piece0 stored as bytes in memory (estimated size 16.9 KB, free 265.0 MB)
15/06/18 10:08:29 INFO BlockManagerInfo: Added broadcast\_0\_piece0 in memory on localhost:42825 (size: 16.9 KB, free: 265.1 MB)
15/06/18 10:08:29 INFO SparkContext: Created broadcast 0 from binaryFiles at <console>:21
f: org.apache.spark.rdd.RDD[(String, org.apache.spark.input.PortableDataStream)] = file:/home/ewan/large/* BinaryFileRDD[0] at binaryFiles at <console>:21

scala> f.count()
15/06/18 10:08:32 INFO FileInputFormat: Total input paths to process : 49999
15/06/18 10:08:33 INFO FileInputFormat: Total input paths to process : 49999
15/06/18 10:08:35 INFO CombineFileInputFormat: DEBUG: Terminated node allocation with : CompletedNodes: 1, size left: 0
15/06/18 10:08:35 INFO SparkContext: Starting job: count at <console>:24
15/06/18 10:08:35 INFO DAGScheduler: Got job 0 (count at <console>:24) with 49999 output partitions


---

* [SPARK-8434](https://issues.apache.org/jira/browse/SPARK-8434) | *Major* | **Add a "pretty" parameter to show**

Sometimes the user may want to show the complete content of cells, such as "sql("set -v")"


---

* [SPARK-8432](https://issues.apache.org/jira/browse/SPARK-8432) | *Major* | **Fix hashCode and equals() of BinaryType in Row**

The hashCode of BinaryType should be consistent with the bytes in it, and equals() should compare the bytes of BinaryType.


---

* [SPARK-8431](https://issues.apache.org/jira/browse/SPARK-8431) | *Major* | **Add in operator to DataFrame Column in SparkR**

To filter values in a set, we should add {{%in%}} operation into SparkR.

{noformat}
df$a %in% c(1, 2, 3)
{noformat}


---

* [SPARK-8429](https://issues.apache.org/jira/browse/SPARK-8429) | *Minor* | **Add ability to set additional tags**

Currently it is not possible to add custom tags to the cluster instances; tags are quite useful for many things, and it should be pretty straightforward to add an extra parameter to support this.


---

* [SPARK-8422](https://issues.apache.org/jira/browse/SPARK-8422) | *Major* | **Introduce a module abstraction inside of dev/run-tests**

At a high level, we have Spark modules / components which

1. are affected / impacted by file changes (e.g. a module is associated with a set of source files, so changes to those files change the module),
2. contain a set of tests to run, which are triggered via Maven, SBT, or via Python / R scripts.
3. depend on other modules and have dependent modules: if we change core, then every downstream test should be run.  If we change only MLlib, then we can skip the SQL tests but should probably run the Python MLlib tests, etc.

Right now, the per-module logic is spread across a few different places inside of the {{dev/run-tests}} script: we have one function that describes how to detect changes for all modules, another function that (implicitly) deals with module dependencies, etc.

Instead, I propose that we introduce a class for describing a module, use instances of this class to build up a dependency graph, then phrase the "find which tests to run" operations in terms of that graph.  I think that this will be easier to understand / maintain.


---

* [SPARK-8420](https://issues.apache.org/jira/browse/SPARK-8420) | *Blocker* | **Inconsistent behavior with Dataframe Timestamp between 1.3.1 and 1.4.0**

I am trying out 1.4.0 and notice there are some differences in behavior with Timestamp between 1.3.1 and 1.4.0. 

In 1.3.1, I can compare a Timestamp with string.
{code}
scala> val df = sqlContext.createDataFrame(Seq((1, Timestamp.valueOf("2015-01-01 00:00:00")), (2, Timestamp.valueOf("2014-01-01 00:00:00"))))
...
scala> df.filter($"\_2" <= "2014-06-01").show
...
\_1 \_2                  
2  2014-01-01 00:00:...
{code}

However, in 1.4.0, the filter is always false:
{code}
scala> val df = sqlContext.createDataFrame(Seq((1, Timestamp.valueOf("2015-01-01 00:00:00")), (2, Timestamp.valueOf("2014-01-01 00:00:00"))))
df: org.apache.spark.sql.DataFrame = [\_1: int, \_2: timestamp]

scala> df.filter($"\_2" <= "2014-06-01").show
+--+--+
|\_1|\_2|
+--+--+
+--+--+
{code}


Not sure if that is intended, but I cannot find any doc mentioning these inconsistencies.


---

* [SPARK-8410](https://issues.apache.org/jira/browse/SPARK-8410) | *Minor* | **Hive VersionsSuite RuntimeException**

While testing Spark Project Hive, there are RuntimeExceptions as follows,

VersionsSuite:
- success sanity check *** FAILED ***
  java.lang.RuntimeException: [download failed: org.jboss.netty#netty;3.2.2.Final!netty.jar(bundle), download failed: org.codehaus.groovy#groovy-all;2.1.6!groovy-all.jar, download failed: asm#asm;3.2!asm.jar]
  at org.apache.spark.deploy.SparkSubmitUtils$.resolveMavenCoordinates(SparkSubmit.scala:978)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$$anonfun$3.apply(IsolatedClientLoader.scala:62)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$$anonfun$3.apply(IsolatedClientLoader.scala:62)
  at org.apache.spark.sql.catalyst.util.package$.quietly(package.scala:38)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$.org$apache$spark$sql$hive$client$IsolatedClientLoader$$downloadVersion(IsolatedClientLoader.scala:61)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$$anonfun$1.apply(IsolatedClientLoader.scala:44)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$$anonfun$1.apply(IsolatedClientLoader.scala:44)
  at scala.collection.mutable.MapLike$class.getOrElseUpdate(MapLike.scala:189)
  at scala.collection.mutable.AbstractMap.getOrElseUpdate(Map.scala:91)
  at org.apache.spark.sql.hive.client.IsolatedClientLoader$.forVersion(IsolatedClientLoader.scala:44)
  ...

The tests are executed with the following set of options,

build/mvn --pl sql/hive --fail-never -Pyarn -Phadoop-2.4 -Dhadoop.version=2.6.0 test

Adding the following dependencies in the "spark/sql/hive/pom.xml"  file solves this issue,

< 	<dependency>
< 		<groupId>org.jboss.netty</groupId>
< 		<artifactId>netty</artifactId>
< 		<version>3.2.2.Final</version>
< 	        <scope>test</scope>
< 	</dependency>
< 	<dependency>
< 		<groupId>org.codehaus.groovy</groupId>
< 		<artifactId>groovy-all</artifactId>
< 		<version>2.1.6</version>
< 		<scope>test</scope>
< 	</dependency>
< 
< 	<dependency>
< 		<groupId>asm</groupId>
< 		<artifactId>asm</artifactId>
< 		<version>3.2</version>
< 	        <scope>test</scope>
< 	</dependency>
< 

The question is, Is this the correct way to fix this runtimeException ?
If yes, Can a pull request fix this issue permanently ?
If not, suggestions please.

Updates:
The above mentioned quick fix is not working with the latest 1.4 because of
this pull commits :
 [SPARK-8095] Resolve dependencies of --packages in local ivy cache #6788 
https://github.com/apache/spark/pull/6788

Due to this above commit, now the lookup directories during testing phase
has changed as follows,
:: problems summary ::
:::: WARNINGS
		[NOT FOUND  ] org.jboss.netty#netty;3.2.2.Final!netty.jar(bundle) (2ms)

	==== local-m2-cache: tried

	  file:/home/joe/sparkibmsoe/spark/sql/hive/dummy/.m2/repository/org/jboss/netty/netty/3.2.2.Final/netty-3.2.2.Final.jar

		[NOT FOUND  ] org.codehaus.groovy#groovy-all;2.1.6!groovy-all.jar (0ms)

	==== local-m2-cache: tried

	  file:/home/joe/sparkibmsoe/spark/sql/hive/dummy/.m2/repository/org/codehaus/groovy/groovy-all/2.1.6/groovy-all-2.1.6.jar

		[NOT FOUND  ] asm#asm;3.2!asm.jar (0ms)

	==== local-m2-cache: tried

	  file:/home/joe/sparkibmsoe/spark/sql/hive/dummy/.m2/repository/asm/asm/3.2/asm-3.2.jar

		::::::::::::::::::::::::::::::::::::::::::::::

		::              FAILED DOWNLOADS            ::

		:: ^ see resolution messages for details  ^ ::

		::::::::::::::::::::::::::::::::::::::::::::::

		:: org.jboss.netty#netty;3.2.2.Final!netty.jar(bundle)

		:: org.codehaus.groovy#groovy-all;2.1.6!groovy-all.jar

		:: asm#asm;3.2!asm.jar

		::::::::::::::::::::::::::::::::::::::::::::::


---

* [SPARK-8407](https://issues.apache.org/jira/browse/SPARK-8407) | *Major* | **complex type constructors: struct and named\_struct**

struct(val1, val2, val3, ...)
Creates a struct with the given field values. Struct field names will be col1, col2, ....

named\_struct(name1, val1, name2, val2, ...)
Creates a struct with the given field names and values. (As of Hive 0.8.0.)


---

* [SPARK-8406](https://issues.apache.org/jira/browse/SPARK-8406) | *Blocker* | **Race condition when writing Parquet files**

To support appending, the Parquet data source tries to find out the max part number of part-files in the destination directory (the <id> in output file name "part-r-<id>.gz.parquet") at the beginning of the write job. In 1.3.0, this step happens on driver side before any files are written. However, in 1.4.0, this is moved to task side. Thus, for tasks scheduled later, they may see wrong max part number generated by newly written files by other finished tasks within the same job. This actually causes a race condition. In most cases, this only causes nonconsecutive IDs in output file names. But when the DataFrame contains thousands of RDD partitions, it's likely that two tasks may choose the same part number, thus one of them gets overwritten by the other.

The following Spark shell snippet can reproduce nonconsecutive part numbers:
{code}
sqlContext.range(0, 128).repartition(16).write.mode("overwrite").parquet("foo")
{code}
"16" can be replaced with any integer that is greater than the default parallelism on your machine (usually it means core number, on my machine it's 8).
{noformat}
-rw-r--r--   3 lian supergroup          0 2015-06-17 00:06 /user/lian/foo/\_SUCCESS
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00001.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00002.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00003.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00004.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00005.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00006.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00007.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00008.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00017.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00018.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00019.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00020.gz.parquet
-rw-r--r--   3 lian supergroup        352 2015-06-17 00:06 /user/lian/foo/part-r-00021.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00022.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00023.gz.parquet
-rw-r--r--   3 lian supergroup        353 2015-06-17 00:06 /user/lian/foo/part-r-00024.gz.parquet
{noformat}

And here is another Spark shell snippet for reproducing overwriting:
{code}
sqlContext.range(0, 10000).repartition(500).write.mode("overwrite").parquet("foo")
sqlContext.read.parquet("foo").count()
{code}
Expected answer should be {{10000}}, but you may see a number like {{9960}} due to overwriting. The actual number varies for different runs and different nodes.

Notice that the newly added ORC data source is less likely to hit this issue because it uses task ID and {{System.currentTimeMills()}} to generate the output file name. Thus, the ORC data source may hit this issue only when two tasks with the same task ID (which means they are in two concurrent jobs) are writing to the same location within the same millisecond.


---

* [SPARK-8399](https://issues.apache.org/jira/browse/SPARK-8399) | *Minor* | **Overlap between histograms and axis' name in Spark Streaming UI**

If you have an histogram skewed towards the maximum of the displayed values as is the case with the number of messages processed per batchInterval with the Kafka direct API (since it's a constant) for example, the histogram will overlap with the name of the X axis (#batches).

Unfortunately, I don't have any screenshots available.


---

* [SPARK-8397](https://issues.apache.org/jira/browse/SPARK-8397) | *Minor* | **Allow custom configuration for TestHive**

We encourage people to use {{TestHive}} in unit tests, because it's impossible to create more than one {{HiveContext}} within one process. The current implementation locks people into using a {{local[2]}} {{SparkContext}} underlying their {{HiveContext}}. We should make it possible to override this using a system property so that people can test against {{local-cluster}} or remote spark clusters to make their tests more realistic.


---

* [SPARK-8395](https://issues.apache.org/jira/browse/SPARK-8395) | *Minor* | **spark-submit documentation is incorrect**

Using a fresh checkout of 1.4.0-bin-hadoop2.6

if you run 
./start-slave.sh  1 spark://localhost:7077

you get
failed to launch org.apache.spark.deploy.worker.Worker:
                             Default is conf/spark-defaults.conf.
  15/06/16 13:11:08 INFO Utils: Shutdown hook called

it seems the worker number is not being accepted  as desccribed here:
https://spark.apache.org/docs/latest/spark-standalone.html

The documentation says:
./sbin/start-slave.sh <worker#> <master-spark-URL>

but the start.slave-sh script states:
usage="Usage: start-slave.sh <spark-master-URL> where <spark-master-URL> is like spark://localhost:7077"

I have checked for similar issues using :
https://issues.apache.org/jira/browse/SPARK-6552?jql=text%20~%20%22start-slave%22

and found nothing similar so am raising this as an issue.


---

* [SPARK-8392](https://issues.apache.org/jira/browse/SPARK-8392) | *Minor* | **RDDOperationGraph: getting cached nodes is slow**

def getAllNodes: Seq[RDDOperationNode] = {
    \_childNodes ++ \_childClusters.flatMap(\_.childNodes)
  }
when the \_childClusters has so many nodes, the process will hang on. I think we can improve the efficiency here.


---

* [SPARK-8389](https://issues.apache.org/jira/browse/SPARK-8389) | *Critical* | **Expose KafkaRDDs offsetRange in Python**

Probably requires creating a JavaKafkaPairRDD and also use that in the python APIs


---

* [SPARK-8381](https://issues.apache.org/jira/browse/SPARK-8381) | *Major* | **reuse typeConvert when convert Seq[Row] to catalyst type**

This method CatalystTypeConverters.convertToCatalyst is slow, so for batch conversion we should be using converter produced by createToCatalystConverter.


---

* [SPARK-8379](https://issues.apache.org/jira/browse/SPARK-8379) | *Major* | **LeaseExpiredException when using dynamic partition with speculative execution**

when inserting to table using dynamic partitions with *spark.speculation=true*  and there is a skew data of some partitions trigger the speculative tasks ,it will throws the exception like
{code}
org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.hdfs.server.namenode.LeaseExpiredException): Lease mismatch on /tmp/hive-jeanlyn/hive\_2015-06-15\_15-20-44\_734\_8801220787219172413-1/-ext-10000/ds=2015-06-15/type=2/part-00301.lzo owned by DFSClient\_attempt\_201506031520\_0011\_m\_000189\_0\_-1513487243\_53 but is accessed by DFSClient\_attempt\_201506031520\_0011\_m\_000042\_0\_-1275047721\_57
{code}


---

* [SPARK-8376](https://issues.apache.org/jira/browse/SPARK-8376) | *Minor* | **Commons Lang 3 is one of the required JAR of Spark Flume Sink but is missing in the docs**

Commons Lang 3 is added as one of the dependencies of Spark Flume Sink since https://github.com/apache/spark/pull/5703. However, the docs has not yet updated.


---

* [SPARK-8373](https://issues.apache.org/jira/browse/SPARK-8373) | *Minor* | **When an RDD has no partition, Python sum will throw "Can not reduce() empty RDD"**

The issue is because "sum" uses "reduce". Replacing it with "fold" will fix it.


---

* [SPARK-8372](https://issues.apache.org/jira/browse/SPARK-8372) | *Minor* | **History server shows incorrect information for application not started**

The history server may show an incorrect App ID for an incomplete application like <App ID>.inprogress. This app info will never disappear even after the app is completed.


---

* [SPARK-8368](https://issues.apache.org/jira/browse/SPARK-8368) | *Blocker* | **ClassNotFoundException in closure for map**

After upgraded the cluster from spark 1.3.0 to 1.4.0(rc4), I encountered the following exception:
======begin exception========
{quote}
Exception in thread "main" java.lang.ClassNotFoundException: com.yhd.ycache.magic.Model$$anonfun$9$$anonfun$10
	at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:425)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
	at java.lang.Class.forName0(Native Method)
	at java.lang.Class.forName(Class.java:278)
	at org.apache.spark.util.InnerClosureFinder$$anon$4.visitMethodInsn(ClosureCleaner.scala:455)
	at com.esotericsoftware.reflectasm.shaded.org.objectweb.asm.ClassReader.accept(Unknown Source)
	at com.esotericsoftware.reflectasm.shaded.org.objectweb.asm.ClassReader.accept(Unknown Source)
	at org.apache.spark.util.ClosureCleaner$.getInnerClosureClasses(ClosureCleaner.scala:101)
	at org.apache.spark.util.ClosureCleaner$.org$apache$spark$util$ClosureCleaner$$clean(ClosureCleaner.scala:197)
	at org.apache.spark.util.ClosureCleaner$.clean(ClosureCleaner.scala:132)
	at org.apache.spark.SparkContext.clean(SparkContext.scala:1891)
	at org.apache.spark.rdd.RDD$$anonfun$map$1.apply(RDD.scala:294)
	at org.apache.spark.rdd.RDD$$anonfun$map$1.apply(RDD.scala:293)
	at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:148)
	at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:109)
	at org.apache.spark.rdd.RDD.withScope(RDD.scala:286)
	at org.apache.spark.rdd.RDD.map(RDD.scala:293)
	at org.apache.spark.sql.DataFrame.map(DataFrame.scala:1210)
	at com.yhd.ycache.magic.Model$.main(SSExample.scala:239)
	at com.yhd.ycache.magic.Model.main(SSExample.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:664)
	at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:169)
	at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:192)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:111)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)
{quote}
===============end exception===========

I simplify the code that cause this issue, as following:
==========begin code==================
{noformat}
object Model extends Serializable{
  def main(args: Array[String]) {
    val Array(sql) = args
    val sparkConf = new SparkConf().setAppName("Mode Example")
    val sc = new SparkContext(sparkConf)
    val hive = new HiveContext(sc)
    //get data by hive sql
    val rows = hive.sql(sql)

    val data = rows.map(r => { 
      val arr = r.toSeq.toArray
      val label = 1.0
      def fmap = ( input: Any ) => 1.0
      val feature = arr.map(\_=>1.0)
      LabeledPoint(label, Vectors.dense(feature))
    })

    data.count()
  }
}
{noformat}
=====end code===========
This code can run pretty well on spark-shell, but error when submit it to spark cluster (standalone or local mode).  I try the same code on spark 1.3.0(local mode), and no exception is encountered.


---

* [SPARK-8367](https://issues.apache.org/jira/browse/SPARK-8367) | *Major* | **ReliableKafka will loss data when `spark.streaming.blockInterval` was 0**

{code:title=BlockGenerator.scala|borderStyle=solid}
  /** Change the buffer to which single records are added to. */
  private def updateCurrentBuffer(time: Long): Unit = synchronized {
    try {
      val newBlockBuffer = currentBuffer
      currentBuffer = new ArrayBuffer[Any]
      if (newBlockBuffer.size > 0) {

       val blockId = StreamBlockId(receiverId, time - blockIntervalMs)

        val newBlock = new Block(blockId, newBlockBuffer)
        listener.onGenerateBlock(blockId)
        blocksForPushing.put(newBlock)  // put is blocking when queue is full
        logDebug("Last element in " + blockId + " is " + newBlockBuffer.last)
      }
    } catch {
      case ie: InterruptedException =>
        logInfo("Block updating timer thread was interrupted")
      case e: Exception =>
        reportError("Error in block updating thread", e)
    }
  }
{code}

If *spark.streaming.blockInterval* was 0, the *blockId* in the code will always be the same because of  *time* was 0 and *blockIntervalMs* was 0 too.

{code:title=ReliableKafkaReceiver.scala|borderStyle=solid}
   private def rememberBlockOffsets(blockId: StreamBlockId): Unit = {
    // Get a snapshot of current offset map and store with related block id.
    val offsetSnapshot = topicPartitionOffsetMap.toMap
    blockOffsetMap.put(blockId, offsetSnapshot)
    topicPartitionOffsetMap.clear()
  }
{code}
If the *blockId* was the same,  Streaming will commit the  *offset*  before the really data comsumed(data was waitting to be commit but the offset had updated and commit by previous commit)
So when exception occures, the *offset* had commit but the data will loss since the data was in memory and not comsumed yet.


---

* [SPARK-8363](https://issues.apache.org/jira/browse/SPARK-8363) | *Major* | **Move sqrt into math**

It doesn't really belong in Arithmetic. It should also extend UnaryMathExpression.


---

* [SPARK-8358](https://issues.apache.org/jira/browse/SPARK-8358) | *Blocker* | **DataFrame explode with alias and \* fails**

{code}
scala> Seq((Array("a"), 1)).toDF("a", "b").select(explode($"a").as("a"), $"*")
org.apache.spark.sql.catalyst.analysis.UnresolvedException: Invalid call to dataType on unresolved object, tree: 'a
        at org.apache.spark.sql.catalyst.analysis.UnresolvedAttribute.dataType(unresolved.scala:60)
        at org.apache.spark.sql.catalyst.expressions.Explode.elementTypes(generators.scala:107)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveGenerate$AliasedGenerator$.unapply(Analyzer.scala:577)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveGenerate$$anonfun$apply$16$$anonfun$22.apply(Analyzer.scala:535)
        at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveGenerate$$anonfun$apply$16$$anonfun$22.apply(Analyzer.scala:534)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
        at scala.collection.TraversableLike$$anonfun$flatMap$1.apply(TraversableLike.scala:251)
...
{code}


---

* [SPARK-8356](https://issues.apache.org/jira/browse/SPARK-8356) | *Critical* | **Reconcile callUDF and callUdf**

Right now we have two functions {{callUDF}} and {{callUdf}}.  I think the former is used for calling Java functions (and the documentation is wrong) and the latter is for calling functions by name.  Either way this is confusing and we should unify or pick different names.  Also, lets make sure the docs are right.


---

* [SPARK-8355](https://issues.apache.org/jira/browse/SPARK-8355) | *Critical* | **Python DataFrameReader/Writer should mirror scala**

All the functions that I can run in scala should also work in python.  At least {{ctx.read.option}} is missing, but we should also audit to make sure there aren't others.


---

* [SPARK-8354](https://issues.apache.org/jira/browse/SPARK-8354) | *Major* | **Fix off-by-factor-of-8 error when allocating scratch space in UnsafeFixedWidthAggregationMap**

UnsafeFixedWidthAggregationMap contains an off-by-factor-of-8 error when allocating row conversion scratch space: we take a size requirement, measured in bytes, then allocate a long array of that size.  This means that we end up allocating 8x too much conversion space.


---

* [SPARK-8353](https://issues.apache.org/jira/browse/SPARK-8353) | *Major* | **Show anchor links when hovering over documentation headers**

When hovering over documentation headers, we should show clickable links that allow users to deep-link to specific sections of the documentation, similar to GitHub and Bootstrap docs.


---

* [SPARK-8350](https://issues.apache.org/jira/browse/SPARK-8350) | *Minor* | **R unit tests output should be logged to "unit-tests.log"**

Right now it's logged to "R-unit-tests.log". Jenkins currently only archives files named "unit-tests.log", and this is what all other modules (e.g. SQL, network, REPL) use.

1. We should be consistent
2. I don't want to reconfigure Jenkins to accept a different file


---

* [SPARK-8349](https://issues.apache.org/jira/browse/SPARK-8349) | *Major* | **Use expression constructors (rather than apply) in FunctionRegistry**

Right now we use appy methods -- would be better to switch to constructors so expressions with overloaded constructors don't need to define companion objects.


---

* [SPARK-8348](https://issues.apache.org/jira/browse/SPARK-8348) | *Major* | **Add in operator to DataFrame Column**

It is convenient to add "in" operator to column, so we can filter values in a set.

{code}
df.filter(col("brand").in("dell", "sony"))
{code}

In R, the operator should be `%in%`.


---

* [SPARK-8346](https://issues.apache.org/jira/browse/SPARK-8346) | *Major* | **Use InternalRow instread of catalyst.InternalRow**

It's annoying to use catalyst.InternalRow inside catalyst


---

* [SPARK-8344](https://issues.apache.org/jira/browse/SPARK-8344) | *Major* | **Add internal metrics / logging for DAGScheduler to detect long pauses / blocking**

It would be useful to be able to log warnings if the DAGScheduler event processing loop blocks for more than a certain amount of time (or if its message inbox grows too large).  This debugging logging (probably disabled by default) would be very helpful for finding places where the scheduling loop blocks / slows down.

We might be able to infer this information now from the web UI scheduler delays, but that's kind of hard to parse out of logs or use to raise monitoring alerts.


---

* [SPARK-8343](https://issues.apache.org/jira/browse/SPARK-8343) | *Minor* | **Improve the Spark Streaming Guides**

Improve the Spark Streaming Guides by fixing broken links, rewording confusing sections, fixing typos, adding missing words, etc.


---

* [SPARK-8342](https://issues.apache.org/jira/browse/SPARK-8342) | *Major* | **Decimal Math beyond ~2^112 is broken**

Here is a snippet from the spark-shell that should not happen

{code}
scala> val d = Decimal(Long.MaxValue,100,0) * Decimal(Long.MaxValue,100,0)
d: org.apache.spark.sql.types.Decimal = 0
scala> d.toDebugString
res3: String = Decimal(expanded,0,1,0})
{code}

It looks like precision gets reseted on some operations and values are then truncated.


---

* [SPARK-8339](https://issues.apache.org/jira/browse/SPARK-8339) | *Minor* | **Itertools islice requires an integer for the stop argument.**

Itertools islice requires an integer for the stop argument.  The bug is in serializers.py and can prevent and rdd from being written to disk.


---

* [SPARK-8336](https://issues.apache.org/jira/browse/SPARK-8336) | *Major* | **Fix NullPointerException with functions.rand()**

The problem was first reported by Justin Yip in the thread 'NullPointerException with functions.rand()'

Here is how to reproduce the problem:
{code}
sqlContext.createDataFrame(Seq((1,2), (3, 100))).withColumn("index", rand(30)).show()
{code}


---

* [SPARK-8330](https://issues.apache.org/jira/browse/SPARK-8330) | *Major* | **DAG visualization: trim whitespace from input**

Just as a safeguard against DOM rewriting.


---

* [SPARK-8329](https://issues.apache.org/jira/browse/SPARK-8329) | *Blocker* | **DataSource options parser no longer accepts '\_'**

This is a regression from 1.3.1


---

* [SPARK-8322](https://issues.apache.org/jira/browse/SPARK-8322) | *Major* | **EC2 script not fully updated for 1.4.0 release**

In the spark\_ec2.py script, the "1.4.0" spark version hasn't been added to the VALID\_SPARK\_VERSIONS map or the SPARK\_TACHYON\_MAP, causing the script to break for the latest release.


---

* [SPARK-8320](https://issues.apache.org/jira/browse/SPARK-8320) | *Minor* | **Add example in streaming programming guide that shows union of multiple input streams**

The section on "Level of Parallelism in Data Receiving" has a Scala and a Java example for union of multiple input streams. A python example should be added.


---

* [SPARK-8319](https://issues.apache.org/jira/browse/SPARK-8319) | *Major* | **Update logic related to key ordering in shuffle dependencies**

The Tungsten ShuffleManager falls back to regular SortShuffleManager whenever the shuffle dependency specifies a key ordering, but technically we only need to fall back when an aggregator is also specified.  We should update the fallback logic to handle this case so that the Tungsten optimizations can apply to more workloads.

I also noticed that the SQL Exchange operator performs defensive copying of shuffle inputs when a key ordering is specified, but this is unnecessary: the only shuffle manager that performs sorting on the map side is SortShuffleManager, and it only performs sorting if an aggregator is specified.  SQL never uses Spark's shuffle for performing aggregation, so this copying is unnecessary.


---

* [SPARK-8317](https://issues.apache.org/jira/browse/SPARK-8317) | *Major* | **Do not push sort into shuffle in Exchange operator**

In some cases, Spark SQL pushes sorting operations into the shuffle layer by specifying a key ordering as part of the shuffle dependency. I think that we should not do this:

- Since we do not delegate aggregation to Spark's shuffle, specifying the keyOrdering as part of the shuffle has no effect on the shuffle map side.
- By performing the shuffle ourselves (by inserting a sort operator after the shuffle instead), we can use the Exchange planner to choose specialized sorting implementations based on the types of rows being sorted.
- We can remove some complexity from SqlSerializer2 by not requiring it to know about sort orderings, since SQL's own sort operators will already perform the necessary defensive copying.


---

* [SPARK-8316](https://issues.apache.org/jira/browse/SPARK-8316) | *Minor* | **Upgrade Maven to 3.3.3**

Maven versions prior to 3.3 apparently have some bugs.

See: https://github.com/apache/spark/pull/6492#issuecomment-111001101


---

* [SPARK-8314](https://issues.apache.org/jira/browse/SPARK-8314) | *Major* | **improvement in performance of MLUtils.appendBias**

MLUtils.appendBias method is heavily used in creating intercepts for linear models. This method uses Breeze's vector concatenation which is very slow compared to the plain System.arrayCopy. This improvement is to change the implementation to use System.arrayCopy. 

We saw the following performance improvements after the change:
Benchmark with mnist dataset for 50 times:
MLUtils.appendBias (SparseVector Before): 47320 ms
MLUtils.appendBias (SparseVector After): 1935 ms

MLUtils.appendBias (DenseVector Before): 5340 ms
MLUtils.appendBias (DenseVector After): 4080 ms

This is almost a 24 times performance boost for SparseVectors.


---

* [SPARK-8310](https://issues.apache.org/jira/browse/SPARK-8310) | *Critical* | **Spark EC2 branch in 1.4 is wrong**

It points to `branch-1.3` of spark-ec2 right now while it should point to `branch-1.4`

cc [~brdwrd] [~pwendell]


---

* [SPARK-8309](https://issues.apache.org/jira/browse/SPARK-8309) | *Critical* | **OpenHashMap doesn't work with more than 12M items**

The problem might be demonstrated with the following testcase:

{code}
  test("support for more than 12M items") {
    val cnt = 12000000 // 12M
    val map = new OpenHashMap[Int, Int](cnt)
    for (i <- 0 until cnt) {
      map(i) = 1
    }
    val numInvalidValues = map.iterator.count(\_.\_2 == 0)
    assertResult(0)(numInvalidValues)
  }

{code}


---

* [SPARK-8308](https://issues.apache.org/jira/browse/SPARK-8308) | *Minor* | **add missing save load for python doc example and tune down MatrixFactorization iterations**

1. add some missing save/load in python examples, LogisticRegression, LinearRegression, NaiveBayes
2. tune down iterations for MatrixFactorization, since current number will trigger StackOverflow.


---

* [SPARK-8307](https://issues.apache.org/jira/browse/SPARK-8307) | *Major* | **Improve timestamp from parquet**

Currently, it's complicated to convert a timestamp from Parquet or Hive, really slow.


---

* [SPARK-8306](https://issues.apache.org/jira/browse/SPARK-8306) | *Major* | **AddJar command needs to set the new class loader to the HiveConf inside executionHive.state.**

In {{AddJar}} command, we are using {{org.apache.hadoop.hive.ql.metadata.Hive.get().getConf().setClassLoader(newClassLoader)}}. However, the conf returned by {{Hive.get().getConf()}} is not necessary the one set in {{executionHive.state}}. Thus, we may fail to set the correct class loader to {{executionHive}} in some cases.


---

* [SPARK-8305](https://issues.apache.org/jira/browse/SPARK-8305) | *Major* | **Improve codegen**

Fix small issues in codegen:

1. Fix Cast Decimal into Boolean
2. Fix Literal(null)
3. refactor


---

* [SPARK-8302](https://issues.apache.org/jira/browse/SPARK-8302) | *Major* | **Support heterogeneous cluster nodes on YARN**

Some of our customers install Hadoop on different paths across the cluster. When running a Spark app, this leads to a few complications because of how we try to reuse the rest of Hadoop.

Since all configuration for a Spark-on-YARN application is local, the code does not have enough information about how to run things on the rest of the cluster in such cases.

To illustrate: let's say that a node's configuration says that {{SPARK\_DIST\_CLASSPATH=/disk1/hadoop/lib/*}}. If I launch a Spark app from that machine, but there's a machine on the cluster where Hadoop is actually installed in {{/disk2/hadoop/lib}}, then any container launched on that node will fail.

The problem does not exist (or is much less pronounced) on standalone and mesos since they require a local Spark installation and configuration.

It would be nice if we could easily support this use case on YARN.


---

* [SPARK-8301](https://issues.apache.org/jira/browse/SPARK-8301) | *Critical* | **Improve UTF8String substring/startsWith/endsWith/contains performance**

Many functions in UTF8String are unnecessarily expensive.


---

* [SPARK-8300](https://issues.apache.org/jira/browse/SPARK-8300) | *Major* | **DataFrame hint for broadcast join**

It is not always possible to have perfect cardinality estimation. We should allow users to give hint to the optimizer to do broadcast join.


---

* [SPARK-8290](https://issues.apache.org/jira/browse/SPARK-8290) | *Minor* | **spark class command builder need read SPARK\_JAVA\_OPTS and SPARK\_DRIVER\_MEMORY properly**

SPARK\_JAVA\_OPTS was missed in reconstructing the launcher part, we should add it back so spark-class could read it.

The missing part is here: https://github.com/apache/spark/blob/1c30afdf94b27e1ad65df0735575306e65d148a1/bin/spark-class#L97.


---

* [SPARK-8289](https://issues.apache.org/jira/browse/SPARK-8289) | *Major* | **Provide a specific stack size with all Java implementations to prevent stack overflows with certain tests**

Default stack sizes differ per Java implementation - so tests can pass for those with higher stack sizes (OpenJDK) but will fail with Oracle or IBM Java owing to lower default sizes. In particular we can see this happening with the JavaALSSuite - with 15 iterations, we get stackoverflow errors with Oracle and IBM Java. We don't with OpenJDK. This JIRA aims to address such an issue by providing a default specified stack size to be used for all Java distributions: 4096k specified for both SBT test args and for Maven test args (changing project/ScalaBuild.scala and pom.xml respectively).


---

* [SPARK-8285](https://issues.apache.org/jira/browse/SPARK-8285) | *Trivial* | **CombineSum should be calculated as unlimited decimal first**

{code:title=GeneratedAggregate.scala}
case cs @ CombineSum(expr) =>
        val calcType = expr.dataType
          expr.dataType match {
            case DecimalType.Fixed(\_, \_) =>
              DecimalType.Unlimited
            case \_ =>
              expr.dataType
          }
{code}
calcType is always expr.dataType. credits are all belong to IntelliJ


---

* [SPARK-8283](https://issues.apache.org/jira/browse/SPARK-8283) | *Blocker* | **udf\_struct test failure**

{code}
[info] - udf\_struct *** FAILED *** (704 milliseconds)
[info]   Failed to execute query using catalyst:
[info]   Error: org.apache.spark.sql.catalyst.expressions.Literal cannot be cast to org.apache.spark.sql.catalyst.expressions.NamedExpression
[info]   java.lang.ClassCastException: org.apache.spark.sql.catalyst.expressions.Literal cannot be cast to org.apache.spark.sql.catalyst.expressions.NamedExpression
[info]   	at org.apache.spark.sql.catalyst.expressions.CreateStruct$$anonfun$1.apply(complexTypes.scala:64)
[info]   	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   	at scala.collection.immutable.List.foreach(List.scala:318)
[info]   	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
[info]   	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
[info]   	at org.apache.spark.sql.catalyst.expressions.CreateStruct.dataType$lzycompute(complexTypes.scala:64)
[info]   	at org.apache.spark.sql.catalyst.expressions.CreateStruct.dataType(complexTypes.scala:61)
[info]   	at org.apache.spark.sql.catalyst.expressions.CreateStruct.dataType(complexTypes.scala:55)
[info]   	at org.apache.spark.sql.catalyst.expressions.ExtractValue$.apply(ExtractValue.scala:43)
[info]   	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$8$$anonfun$applyOrElse$4.applyOrElse(Analyzer.scala:353)
[info]   	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$8$$anonfun$applyOrElse$4.applyOrElse(Analyzer.scala:340)
[info]   	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:286)
[info]   	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:286)
[info]   	at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:51)
[info]   	at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:285)
[info]   	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$5.apply(TreeNode.scala:299)
[info]   	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
[info]   	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
[info]   	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
[info]   	at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
[info]   	at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
[info]   	at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
[info]   	at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
[info]   	at scala.collection.AbstractIterator.to(Iterator.scala:1157)
[info]   	at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
{code}


---

* [SPARK-8282](https://issues.apache.org/jira/browse/SPARK-8282) | *Major* | **Make number of threads used in RBackend configurable**

RBackend starts a netty server which uses two threads. The number of threads is hardcoded. It is useful to have it configurable.


---

* [SPARK-8281](https://issues.apache.org/jira/browse/SPARK-8281) | *Blocker* | **udf\_asin and udf\_acos test failure**

acos/asin in Hive returns NaN for not a number, whereas we always return null.


---

* [SPARK-8280](https://issues.apache.org/jira/browse/SPARK-8280) | *Blocker* | **udf7 failed due to null vs nan semantics**

To execute
{code}
sbt/sbt -Phive -Dspark.hive.whitelist="udf7.*" "hive/test-only org.apache.spark.sql.hive.execution.HiveCompatibilitySuite"
{code}

If we want to be consistent with Hive, we need to special case our log function.


---

* [SPARK-8279](https://issues.apache.org/jira/browse/SPARK-8279) | *Blocker* | **udf\_round\_3 test fails**

query

{code}
select round(cast(negative(pow(2, 31)) as INT)), round(cast((pow(2, 31) - 1) as INT)), round(-32769), round(32768) from src tablesample (1 rows);
{code}

{code}
[info] - udf\_round\_3 *** FAILED *** (4 seconds, 803 milliseconds)
[info]   Failed to execute query using catalyst:
[info]   Error: java.lang.Integer cannot be cast to java.lang.Double
[info]   java.lang.ClassCastException: java.lang.Integer cannot be cast to java.lang.Double
[info]   	at scala.runtime.BoxesRunTime.unboxToDouble(BoxesRunTime.java:119)
[info]   	at org.apache.spark.sql.catalyst.expressions.BinaryMathExpression.eval(math.scala:86)
[info]   	at org.apache.spark.sql.hive.HiveInspectors$class.toInspector(HiveInspectors.scala:628)
[info]   	at org.apache.spark.sql.hive.HiveGenericUdf.toInspector(hiveUdfs.scala:148)
[info]   	at org.apache.spark.sql.hive.HiveGenericUdf$$anonfun$argumentInspectors$1.apply(hiveUdfs.scala:160)
[info]   	at org.apache.spark.sql.hive.HiveGenericUdf$$anonfun$argumentInspectors$1.apply(hiveUdfs.scala:160)
[info]   	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   	at scala.collection.immutable.List.foreach(List.scala:318)
[info]   	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
[info]   	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
[info]   	at org.apache.spark.sql.hive.HiveGenericUdf.argumentInspectors$lzycompute(hiveUdfs.scala:160)
[info]   	at org.apache.spark.sql.hive.HiveGenericUdf.argumentInspectors(hiveUdfs.scala:160)
[info]   	at org.apache.spark.sql.hive.HiveGenericUdf.returnInspector$lzycompute(hiveUdfs.scala:164)
[info]   	at org.apache.spark.sql.hive.HiveGenericUdf.returnInspector(hiveUdfs.scala:163)
[info]   	at org.apache.spark.sql.hive.HiveGenericUdf.dataType$lzycompute(hiveUdfs.scala:180)
[info]   	at org.apache.spark.sql.hive.HiveGenericUdf.dataType(hiveUdfs.scala:180)
[info]   	at org.apache.spark.sql.catalyst.expressions.Cast.resolved$lzycompute(Cast.scala:31)
[info]   	at org.apache.spark.sql.catalyst.expressions.Cast.resolved(Cast.scala:31)
[info]   	at org.apache.spark.sql.catalyst.expressions.Expression$$anonfun$childrenResolved$1.apply(Expression.scala:121)
[info]   	at org.apache.spark.sql.catalyst.expressions.Expression$$anonfun$childrenResolved$1.apply(Expression.scala:121)
[info]   	at scala.collection.LinearSeqOptimized$class.forall(LinearSeqOptimized.scala:70)
[info]   	at scala.collection.immutable.List.forall(List.scala:84)
[info]   	at org.apache.spark.sql.catalyst.expressions.Expression.childrenResolved(Expression.scala:121)
[info]   	at org.apache.spark.sql.catalyst.expressions.Expression.resolved$lzycompute(Expression.scala:109)
[info]   	at org.apache.spark.sql.catalyst.expressions.Expression.resolved(Expression.scala:109)
[info]   	at org.apache.spark.sql.catalyst.expressions.Expression$$anonfun$childrenResolved$1.apply(Expression.scala:121)
[info]   	at org.apache.spark.sql.catalyst.expressions.Expression$$anonfun$childrenResolved$1.apply(Expression.scala:121)
[info]   	at scala.collection.LinearSeqOptimized$class.forall(LinearSeqOptimized.scala:70)
[info]   	at scala.collection.immutable.List.forall(List.scala:84)
[info]   	at org.apache.spark.sql.catalyst.expressions.Expression.childrenResolved(Expression.scala:121)
[info]   	at org.apache.spark.sql.catalyst.analysis.HiveTypeCoercion$ConvertNaNs$$anonfun$apply$2$$anonfun$applyOrElse$2.applyOrElse(HiveTypeCoercion.scala:138)
[info]   	at org.apache.spark.sql.catalyst.analysis.HiveTypeCoercion$ConvertNaNs$$anonfun$apply$2$$anonfun$applyOrElse$2.applyOrElse(HiveTypeCoercion.scala:136)
[info]   	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$3.apply(TreeNode.scala:222)
[info]   	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$3.apply(TreeNode.scala:222)
[info]   	at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:51)
[info]   	at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:221)
[info]   	at org.apache.spark.sql.catalyst.plans.QueryPlan.org$apache$spark$sql$catalyst$plans$QueryPlan$$transformExpressionDown$1(QueryPlan.scala:75)
[info]   	at org.apache.spark.sql.catalyst.plans.QueryPlan$$anonfun$1$$anonfun$apply$1.apply(QueryPlan.scala:90)
[info]   	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
[info]   	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
[info]   	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
[info]   	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
[info]   	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
[info]   	at org.apache.spark.sql.catalyst.plans.QueryPlan$$anonfun$1.apply(QueryPlan.scala:89)
[info]   	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
[info]   	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
[info]   	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
[info]   	at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
[info]   	at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
[info]   	at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
[info]   	at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
[info]   	at scala.collection.AbstractIterator.to(Iterator.scala:1157)
[info]   	at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
[info]   	at scala.collection.AbstractIterator.toBuffer(Iterator.scala:1157)
[info]   	at scala.collection.TraversableOnce$class.toArray(TraversableOnce.scala:252)
[info]   	at scala.collection.AbstractIterator.toArray(Iterator.scala:1157)
{code}


---

* [SPARK-8278](https://issues.apache.org/jira/browse/SPARK-8278) | *Critical* | **Remove deprecated JsonRDD functionality in Spark SQL**

The old JSON functionality (deprecated in 1.4) needs to be removed for 1.5.


---

* [SPARK-8274](https://issues.apache.org/jira/browse/SPARK-8274) | *Trivial* | **Fix wrong URLs in MLlib Frequent Pattern Mining Documentation**

There is a mistake in the URLs of the Scala section of FP-Growth in the MLlib Frequent Pattern Mining documentation. The URL points to https://spark.apache.org/docs/latest/api/java/org/apache/spark/mllib/fpm/FPGrowth.html which is the Java's API, the link should point to the Scala API https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.fpm.FPGrowth

There's another mistake in the FP-GrowthModel in the same section, the link points, again, to the Java's API https://spark.apache.org/docs/latest/api/java/org/apache/spark/mllib/fpm/FPGrowthModel.html, the link should point to the Scala API https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.fpm.FPGrowthModel


---

* [SPARK-8270](https://issues.apache.org/jira/browse/SPARK-8270) | *Major* | **string function: levenshtein**

levenshtein(string A, string B): int

Returns the Levenshtein distance between two strings (as of Hive 1.2.0). For example, levenshtein('kitten', 'sitting') results in 3.


---

* [SPARK-8268](https://issues.apache.org/jira/browse/SPARK-8268) | *Major* | **string function: unbase64**

unbase64(string str): binary

Converts the argument from a base 64 string to BINARY.


---

* [SPARK-8267](https://issues.apache.org/jira/browse/SPARK-8267) | *Major* | **string function: trim**

trim(string A): string

Returns the string resulting from trimming spaces from both ends of A. For example, trim(' foobar ') results in 'foobar'


---

* [SPARK-8265](https://issues.apache.org/jira/browse/SPARK-8265) | *Minor* | **Add LinearDataGenerator to pyspark.mllib.utils**

This is useful in testing various linear models in pyspark


---

* [SPARK-8262](https://issues.apache.org/jira/browse/SPARK-8262) | *Major* | **string function: split**

split(string str, string pat): array[string]

Splits str around pat (pat is a regular expression).


---

* [SPARK-8261](https://issues.apache.org/jira/browse/SPARK-8261) | *Major* | **string function: space**

space(int n): string

Returns a string of n spaces.


---

* [SPARK-8260](https://issues.apache.org/jira/browse/SPARK-8260) | *Major* | **string function: rtrim**

rtrim(string A): string

Returns the string resulting from trimming spaces from the end(right hand side) of A. For example, rtrim(' foobar ') results in ' foobar'.


---

* [SPARK-8259](https://issues.apache.org/jira/browse/SPARK-8259) | *Major* | **string function: rpad**

rpad(string str, int len, string pad): string

Returns str, right-padded with pad to a length of len.


---

* [SPARK-8258](https://issues.apache.org/jira/browse/SPARK-8258) | *Major* | **string function: reverse**

reverse(string A): string

Returns the reversed string.


---

* [SPARK-8257](https://issues.apache.org/jira/browse/SPARK-8257) | *Major* | **string function: repeat**

repeat(string str, int n): string

Repeats str n times.


---

* [SPARK-8254](https://issues.apache.org/jira/browse/SPARK-8254) | *Major* | **string function: printf**

printf(String format, Obj... args): string

Returns the input formatted according do printf-style format strings.


We need to come up with a name for this in DataFrame -- maybe formatString.


---

* [SPARK-8253](https://issues.apache.org/jira/browse/SPARK-8253) | *Major* | **string function: ltrim**

ltrim(string A): string

Returns the string resulting from trimming spaces from the beginning(left hand side) of A. For example, ltrim(' foobar ') results in 'foobar '.


---

* [SPARK-8252](https://issues.apache.org/jira/browse/SPARK-8252) | *Major* | **string function: lpad**

lpad(string str, int len, string pad): string

Returns str, left-padded with pad to a length of len.


---

* [SPARK-8251](https://issues.apache.org/jira/browse/SPARK-8251) | *Major* | **string function: alias upper / ucase**

Alias upper / ucase in FunctionRegistry.


---

* [SPARK-8250](https://issues.apache.org/jira/browse/SPARK-8250) | *Major* | **string function: alias lower/lcase**

Alias lower/lcase in FunctionRegistry.


---

* [SPARK-8249](https://issues.apache.org/jira/browse/SPARK-8249) | *Major* | **string function: locate**

locate(string substr, string str[, int pos]): int

Returns the position of the first occurrence of substr in str after position pos.


---

* [SPARK-8248](https://issues.apache.org/jira/browse/SPARK-8248) | *Major* | **string function: length**

length(string A): int

Returns the length of the string.


---

* [SPARK-8247](https://issues.apache.org/jira/browse/SPARK-8247) | *Major* | **string function: instr**

instr(string str, string substr): int 

Returns the position of the first occurrence of substr in str. Returns null if either of the arguments are null and returns 0 if substr could not be found in str. Be aware that this is not zero based. The first character in str has index 1.


---

* [SPARK-8245](https://issues.apache.org/jira/browse/SPARK-8245) | *Major* | **string function: format\_number**

format\_number(number x, int d): string

Formats the number X to a format like '#,###,###.##', rounded to D decimal places, and returns the result as a string. If D is 0, the result has no decimal point or fractional part. (As of Hive 0.10.0; bug with float types fixed in Hive 0.14.0, decimal type support added in Hive 0.14.0)


---

* [SPARK-8243](https://issues.apache.org/jira/browse/SPARK-8243) | *Major* | **string function: encode**

encode(string src, string charset): binary

Encodes the first argument into a BINARY using the provided character set (one of 'US-ASCII', 'ISO-8859-1', 'UTF-8', 'UTF-16BE', 'UTF-16LE', 'UTF-16'). If either argument is null, the result will also be null. (As of Hive 0.12.0.)


---

* [SPARK-8242](https://issues.apache.org/jira/browse/SPARK-8242) | *Major* | **string function: decode**

decode(binary bin, string charset): string

Decodes the first argument into a String using the provided character set (one of 'US-ASCII', 'ISO-8859-1', 'UTF-8', 'UTF-16BE', 'UTF-16LE', 'UTF-16'). If either argument is null, the result will also be null. (As of Hive 0.12.0.)


---

* [SPARK-8241](https://issues.apache.org/jira/browse/SPARK-8241) | *Major* | **string function: concat\_ws**

concat\_ws(string SEP, string A, string B...): string

concat\_ws(string SEP, array<string>): string


---

* [SPARK-8240](https://issues.apache.org/jira/browse/SPARK-8240) | *Major* | **string function: concat**

concat(string|binary A, string|binary B...): string / binary

Returns the string or bytes resulting from concatenating the strings or bytes passed in as parameters in order. For example, concat('foo', 'bar') results in 'foobar'. Note that this function can take any number of input strings.


---

* [SPARK-8239](https://issues.apache.org/jira/browse/SPARK-8239) | *Major* | **string function: base64**

base64(binary bin): string

Converts the argument from binary to a base 64 string


---

* [SPARK-8238](https://issues.apache.org/jira/browse/SPARK-8238) | *Major* | **string function: ascii**

ascii(string str): int

Returns the numeric value of the first character of str.


---

* [SPARK-8237](https://issues.apache.org/jira/browse/SPARK-8237) | *Major* | **misc function: sha2**

sha2(string/binary, int): string

Calculates the SHA-2 family of hash functions (SHA-224, SHA-256, SHA-384, and SHA-512) (as of Hive 1.3.0). The first argument is the string or binary to be hashed. The second argument indicates the desired bit length of the result, which must have a value of 224, 256, 384, 512, or 0 (which is equivalent to 256). SHA-224 is supported starting from Java 8. If either argument is NULL or the hash length is not one of the permitted values, the return value is NULL. Example: sha2('ABC', 256) = 'b5d4045c3f466fa91fe2cc6abe79232a1a57cdf104f7a26e716e0a1e2789df78'.


---

* [SPARK-8236](https://issues.apache.org/jira/browse/SPARK-8236) | *Major* | **misc function: crc32**

crc32(string/binary): bigint

Computes a cyclic redundancy check value for string or binary argument and returns bigint value (as of Hive 1.3.0). Example: crc32('ABC') = 2743272264.


---

* [SPARK-8235](https://issues.apache.org/jira/browse/SPARK-8235) | *Major* | **misc function: sha1 / sha**

sha1(string/binary): string
sha(string/binary): string


Calculates the SHA-1 digest for string or binary and returns the value as a hex string (as of Hive 1.3.0). Example: sha1('ABC') = '3c01bdbb26f358bab27f267924aa2c9a03fcfdb8'.


---

* [SPARK-8234](https://issues.apache.org/jira/browse/SPARK-8234) | *Major* | **misc function: md5**

md5(string/binary): string

Calculates an MD5 128-bit checksum for the string or binary (as of Hive 1.3.0). The value is returned as a string of 32 hex digits, or NULL if the argument was NULL. Example: md5('ABC') = '902fbdd2b1df0c4f70b4a5d23525e932'.


---

* [SPARK-8229](https://issues.apache.org/jira/browse/SPARK-8229) | *Major* | **conditional function: isnotnull**

Just need to register it in the FunctionRegistry.


---

* [SPARK-8228](https://issues.apache.org/jira/browse/SPARK-8228) | *Major* | **conditional function: isnull**

Just need to register it in FunctionRegistry.


---

* [SPARK-8227](https://issues.apache.org/jira/browse/SPARK-8227) | *Major* | **math function: unhex**

unhex(STRING a): BINARY

Inverse of hex. Interprets each pair of characters as a hexadecimal number and converts to the byte representation of the number.


---

* [SPARK-8226](https://issues.apache.org/jira/browse/SPARK-8226) | *Major* | **math function: shiftrightunsigned**

shiftrightunsigned(INT a), shiftrightunsigned(BIGINT a)	

Bitwise unsigned right shift (as of Hive 1.2.0). Returns int for tinyint, smallint and int a. Returns bigint for bigint a.


---

* [SPARK-8225](https://issues.apache.org/jira/browse/SPARK-8225) | *Major* | **math function: alias sign / signum**

Alias them in FunctionRegistry.


---

* [SPARK-8224](https://issues.apache.org/jira/browse/SPARK-8224) | *Major* | **math function: shiftright**

shiftrightunsigned(INT a), shiftrightunsigned(BIGINT a)	

Bitwise unsigned right shift (as of Hive 1.2.0). Returns int for tinyint, smallint and int a. Returns bigint for bigint a.


---

* [SPARK-8223](https://issues.apache.org/jira/browse/SPARK-8223) | *Major* | **math function: shiftleft**

shiftleft(INT a)
shiftleft(BIGINT a)

Bitwise left shift (as of Hive 1.2.0). Returns int for tinyint, smallint and int a. Returns bigint for bigint a.


---

* [SPARK-8222](https://issues.apache.org/jira/browse/SPARK-8222) | *Major* | **math function: alias power / pow**

Add to FunctionRegistry power.


---

* [SPARK-8221](https://issues.apache.org/jira/browse/SPARK-8221) | *Major* | **math function: pmod**

pmod(INT a, INT b): INT
pmod(DOUBLE a, DOUBLE b): DOUBLE


Returns the positive value of a mod b.


---

* [SPARK-8220](https://issues.apache.org/jira/browse/SPARK-8220) | *Major* | **math function: positive**

positive(INT a): INT
positive(DOUBLE a): DOUBLE

This is really just an identify function. We should create an Identity expression, and then in the optimizer just removes the Identity functions.


---

* [SPARK-8219](https://issues.apache.org/jira/browse/SPARK-8219) | *Major* | **math function: negative**

This is just an alias for UnaryMinus. Only add it to FunctionRegistry, and not DataFrame.


---

* [SPARK-8218](https://issues.apache.org/jira/browse/SPARK-8218) | *Major* | **math function: log**

log(DOUBLE base, DOUBLE a): DOUBLE

Returns the base-base logarithm of the argument a.


---

* [SPARK-8217](https://issues.apache.org/jira/browse/SPARK-8217) | *Major* | **math function: log2**

log2(double a): double

Returns the base-2 logarithm of the argument a.


---

* [SPARK-8216](https://issues.apache.org/jira/browse/SPARK-8216) | *Major* | **math function: rename log -\> ln**

Rename expression Log -> Ln.

Also create aliased data frame functions, and update FunctionRegistry.


---

* [SPARK-8215](https://issues.apache.org/jira/browse/SPARK-8215) | *Major* | **math function: pi**

pi(): double

Returns the value of pi. We should make sure foldable = true so it gets folded by the optimizer.


---

* [SPARK-8214](https://issues.apache.org/jira/browse/SPARK-8214) | *Major* | **math function: hex**

hex(BIGINT a): string
hex(STRING a): string
hex(BINARY a): string

If the argument is an INT or binary, hex returns the number as a STRING in hexadecimal format. Otherwise if the number is a STRING, it converts each character into its hexadecimal representation and returns the resulting STRING. (See http://dev.mysql.com/doc/refman/5.0/en/string-functions.html#function\_hex, BINARY version as of Hive 0.12.0.)


---

* [SPARK-8213](https://issues.apache.org/jira/browse/SPARK-8213) | *Major* | **math function: factorial**

factorial(INT a): long

Returns the factorial of a (as of Hive 1.2.0). Valid a is [0..20].


---

* [SPARK-8212](https://issues.apache.org/jira/browse/SPARK-8212) | *Major* | **math function: e**

e(): double

Returns the value of e.


We should make this foldable so it gets folded by the optimizer.


---

* [SPARK-8211](https://issues.apache.org/jira/browse/SPARK-8211) | *Major* | **math function: radians**

Alias toRadians -> radians in FunctionRegistry.


---

* [SPARK-8210](https://issues.apache.org/jira/browse/SPARK-8210) | *Major* | **math function: degrees**

Alias todegrees -> degrees.


---

* [SPARK-8209](https://issues.apache.org/jira/browse/SPARK-8209) | *Major* | **math function: conv**

conv(BIGINT num, INT from\_base, INT to\_base): string
conv(STRING num, INT from\_base, INT to\_base): string

Converts a number from a given base to another (see http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html#function\_conv).


---

* [SPARK-8208](https://issues.apache.org/jira/browse/SPARK-8208) | *Major* | **math function: ceiling**

We already have ceil -- just need to create an alias for it in FunctionRegistry.


---

* [SPARK-8206](https://issues.apache.org/jira/browse/SPARK-8206) | *Major* | **math function: round**

round(double a): double
Returns the rounded BIGINT value of a.

round(double a, INT d): double
Returns a rounded to d decimal places.


---

* [SPARK-8205](https://issues.apache.org/jira/browse/SPARK-8205) | *Major* | **conditional function: nvl**

nvl(T value, T default\_value): T

Returns default value if value is null else returns value (as of HIve 0.11).

We already have this (called Coalesce). Just need to register an alias for it in FunctionRegistry.


---

* [SPARK-8204](https://issues.apache.org/jira/browse/SPARK-8204) | *Major* | **conditional function: least**

least(T v1, T v2, ...): T

Returns the least value of the list of values (as of Hive 1.1.0).


---

* [SPARK-8203](https://issues.apache.org/jira/browse/SPARK-8203) | *Major* | **conditional functions: greatest**

greatest(T v1, T v2, ...): T

Returns the greatest value of the list of values (as of Hive 1.1.0).


---

* [SPARK-8202](https://issues.apache.org/jira/browse/SPARK-8202) | *Critical* | **PySpark: infinite loop during external sort**

The batch size during external sort will grow up to max 10000, then shrink down to zero, causing infinite loop.

Given the assumption that the items usually have similar size, so we don't need to adjust the batch size after first spill.


---

* [SPARK-8201](https://issues.apache.org/jira/browse/SPARK-8201) | *Major* | **conditional function: if**

We already have an If expression. Just need to register it in FunctionRegistry.


---

* [SPARK-8200](https://issues.apache.org/jira/browse/SPARK-8200) | *Minor* | **Exception in StreamingLinearAlgorithm on Stream with Empty RDD.**

When training a streaming logistic regression model or a streaming linear regression model, any empty RDDs in a stream will cause an exception.

  java.lang.UnsupportedOperationException: empty collection
  at org.apache.spark.rdd.RDD$$anonfun$first$1.apply(RDD.scala:1288)
  at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:148)
  at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:109)
  at org.apache.spark.rdd.RDD.withScope(RDD.scala:286)
  at org.apache.spark.rdd.RDD.first(RDD.scala:1285)
  at org.apache.spark.mllib.regression.GeneralizedLinearAlgorithm.run(GeneralizedLinearAlgorithm.scala:215)
  at org.apache.spark.mllib.regression.StreamingLinearAlgorithm$$anonfun$trainOn$1.apply(StreamingLinearAlgorithm.scala:91)
  at org.apache.spark.mllib.regression.StreamingLinearAlgorithm$$anonfun$trainOn$1.apply(StreamingLinearAlgorithm.scala:85)
  at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1$$anonfun$apply$mcV$sp$1.apply$mcV$sp(ForEachDStream.scala:42)
  at org.apache.spark.streaming.dstream.ForEachDStream$$anonfun$1$$anonfun$apply$mcV$sp$1.apply(ForEachDStream.scala:40)


---

* [SPARK-8199](https://issues.apache.org/jira/browse/SPARK-8199) | *Major* | **date/time function: date\_format**

date\_format(date/timestamp/string ts, string fmt): string

Converts a date/timestamp/string to a value of string in the format specified by the date format fmt (as of Hive 1.2.0). Supported formats are Java SimpleDateFormat formats – https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html. The second argument fmt should be constant. Example: date\_format('2015-04-08', 'y') = '2015'.
date\_format can be used to implement other UDFs, e.g.:
dayname(date) is date\_format(date, 'EEEE')
dayofyear(date) is date\_format(date, 'D')


---

* [SPARK-8193](https://issues.apache.org/jira/browse/SPARK-8193) | *Major* | **date/time function: current\_timestamp**

current\_timestamp(): timestamp

Returns the current timestamp at the start of query evaluation (as of Hive 1.2.0). All calls of current\_timestamp within the same query return the same value.


We should just replace this with a timestamp literal in the optimizer.


---

* [SPARK-8192](https://issues.apache.org/jira/browse/SPARK-8192) | *Major* | **date/time function: current\_date**

current\_date(): date

Returns the current date at the start of query evaluation (as of Hive 1.2.0). All calls of current\_date within the same query return the same value.

We should just replace this with a date literal in the optimizer.


---

* [SPARK-8189](https://issues.apache.org/jira/browse/SPARK-8189) | *Major* | **Use 100ns precision for TimestampType**

100ns means we only need 8 bytes to represent a Timestamp.


---

* [SPARK-8184](https://issues.apache.org/jira/browse/SPARK-8184) | *Major* | **date/time function: weekofyear**

weekofyear(string|date|timestamp): int

Returns the week number of a timestamp string: weekofyear("1970-11-01 00:00:00") = 44, weekofyear("1970-11-01") = 44.


---

* [SPARK-8183](https://issues.apache.org/jira/browse/SPARK-8183) | *Major* | **date/time function: second**

second(string|date|timestamp): int

Returns the second of the timestamp.

See https://cwiki.apache.org/confluence/display/Hive/LanguageManual+UDF


---

* [SPARK-8182](https://issues.apache.org/jira/browse/SPARK-8182) | *Major* | **date/time function: minute**

minute(string|date|timestamp): int

Returns the minute of the timestamp.

See https://cwiki.apache.org/confluence/display/Hive/LanguageManual+UDF


---

* [SPARK-8181](https://issues.apache.org/jira/browse/SPARK-8181) | *Major* | **date/time function: hour**

hour(string|date|timestamp): int

Returns the hour of the timestamp: hour('2009-07-30 12:58:59') = 12, hour('12:58:59') = 12.


---

* [SPARK-8180](https://issues.apache.org/jira/browse/SPARK-8180) | *Major* | **date/time function: day / dayofmonth**

day(string|date|timestamp): int
dayofmonth(string|date|timestamp): int

Returns the day part of a date or a timestamp string: day("1970-11-01 00:00:00") = 1, day("1970-11-01") = 1.

See https://cwiki.apache.org/confluence/display/Hive/LanguageManual+UDF


---

* [SPARK-8179](https://issues.apache.org/jira/browse/SPARK-8179) | *Major* | **date/time function: month**

month(string|date|timestamp): int

Returns the month part of a date or a timestamp string: month("1970-11-01 00:00:00") = 11, month("1970-11-01") = 11.

See https://cwiki.apache.org/confluence/display/Hive/LanguageManual+UDF


---

* [SPARK-8178](https://issues.apache.org/jira/browse/SPARK-8178) | *Major* | **date/time function: quarter**

quarter(timestamp): int

Returns the quarter of the year for a date, timestamp, or string in the range 1 to 4. Example: quarter('2015-04-08') = 2.

Note that through implicit type casts, we can support date/string type as well.


---

* [SPARK-8177](https://issues.apache.org/jira/browse/SPARK-8177) | *Major* | **date/time function: year**


{code}
year(timestamp time): int
{code}

Returns the year part of a date or a timestamp string: year("1970-01-01 00:00:00") = 1970, year("1970-01-01") = 1970.


---

* [SPARK-8162](https://issues.apache.org/jira/browse/SPARK-8162) | *Blocker* | **Run spark-shell cause NullPointerException**

run spark-shell on latest master branch, then failed, details are:

{noformat}
Welcome to
      \_\_\_\_              \_\_
     / \_\_/\_\_  \_\_\_ \_\_\_\_\_/ /\_\_
    \_\ \/ \_ \/ \_ `/ \_\_/  '\_/
   /\_\_\_/ .\_\_/\\_,\_/\_/ /\_/\\_\   version 1.5.0-SNAPSHOT
      /\_/

Using Scala version 2.10.4 (Java HotSpot(TM) 64-Bit Server VM, Java 1.8.0\_40)
Type in expressions to have them evaluated.
Type :help for more information.
error: error while loading JobProgressListener, Missing dependency 'bad symbolic reference. A signature in JobProgressListener.class refers to term annotations
in package com.google.common which is not available.
It may be completely missing from the current classpath, or the version on
the classpath might be incompatible with the version used when compiling JobProgressListener.class.', required by /opt/apache/spark/lib/spark-assembly-1.5.0-SNAPSHOT-hadoop2.7.0.jar(org/apache/spark/ui/jobs/JobProgressListener.class)
java.lang.NullPointerException
	at org.apache.spark.sql.SQLContext.<init>(SQLContext.scala:193)
	at org.apache.spark.sql.hive.HiveContext.<init>(HiveContext.scala:68)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:422)
	at org.apache.spark.repl.SparkILoop.createSQLContext(SparkILoop.scala:1028)
	at $iwC$$iwC.<init>(<console>:9)
	at $iwC.<init>(<console>:18)
	at <init>(<console>:20)
	at .<init>(<console>:24)
	at .<clinit>(<console>)
	at .<init>(<console>:7)
	at .<clinit>(<console>)
	at $print(<console>)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:497)
	at org.apache.spark.repl.SparkIMain$ReadEvalPrint.call(SparkIMain.scala:1065)
	at org.apache.spark.repl.SparkIMain$Request.loadAndRun(SparkIMain.scala:1338)
	at org.apache.spark.repl.SparkIMain.loadAndRunReq$1(SparkIMain.scala:840)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:871)
	at org.apache.spark.repl.SparkIMain.interpret(SparkIMain.scala:819)
	at org.apache.spark.repl.SparkILoop.reallyInterpret$1(SparkILoop.scala:857)
	at org.apache.spark.repl.SparkILoop.interpretStartingWith(SparkILoop.scala:902)
	at org.apache.spark.repl.SparkILoop.command(SparkILoop.scala:814)
	at org.apache.spark.repl.SparkILoopInit$$anonfun$initializeSpark$1.apply(SparkILoopInit.scala:130)
	at org.apache.spark.repl.SparkILoopInit$$anonfun$initializeSpark$1.apply(SparkILoopInit.scala:122)
	at org.apache.spark.repl.SparkIMain.beQuietDuring(SparkIMain.scala:324)
	at org.apache.spark.repl.SparkILoopInit$class.initializeSpark(SparkILoopInit.scala:122)
	at org.apache.spark.repl.SparkILoop.initializeSpark(SparkILoop.scala:64)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1$$anonfun$apply$mcZ$sp$5.apply$mcV$sp(SparkILoop.scala:974)
	at org.apache.spark.repl.SparkILoopInit$class.runThunks(SparkILoopInit.scala:157)
	at org.apache.spark.repl.SparkILoop.runThunks(SparkILoop.scala:64)
	at org.apache.spark.repl.SparkILoopInit$class.postInitialization(SparkILoopInit.scala:106)
	at org.apache.spark.repl.SparkILoop.postInitialization(SparkILoop.scala:64)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply$mcZ$sp(SparkILoop.scala:991)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:945)
	at org.apache.spark.repl.SparkILoop$$anonfun$org$apache$spark$repl$SparkILoop$$process$1.apply(SparkILoop.scala:945)
	at scala.tools.nsc.util.ScalaClassLoader$.savingContextLoader(ScalaClassLoader.scala:135)
	at org.apache.spark.repl.SparkILoop.org$apache$spark$repl$SparkILoop$$process(SparkILoop.scala:945)
	at org.apache.spark.repl.SparkILoop.process(SparkILoop.scala:1059)
	at org.apache.spark.repl.Main$.main(Main.scala:31)
	at org.apache.spark.repl.Main.main(Main.scala)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:497)
	at org.apache.spark.deploy.SparkSubmit$.org$apache$spark$deploy$SparkSubmit$$runMain(SparkSubmit.scala:663)
	at org.apache.spark.deploy.SparkSubmit$.doRunMain$1(SparkSubmit.scala:169)
	at org.apache.spark.deploy.SparkSubmit$.submit(SparkSubmit.scala:192)
	at org.apache.spark.deploy.SparkSubmit$.main(SparkSubmit.scala:111)
	at org.apache.spark.deploy.SparkSubmit.main(SparkSubmit.scala)

<console>:10: error: not found: value sqlContext
       import sqlContext.implicits.\_
              ^
<console>:10: error: not found: value sqlContext
       import sqlContext.sql
              ^
{noformat}

JDK: 1.8.0\_40
Hadoop: 2.7.0


---

* [SPARK-8161](https://issues.apache.org/jira/browse/SPARK-8161) | *Major* | **externalBlockStoreInitialized is never set to be true**

externalBlockStoreInitialized is never set to be true, which causes the blocks stored in ExternalBlockStore can not be removed.


---

* [SPARK-8158](https://issues.apache.org/jira/browse/SPARK-8158) | *Major* | **HiveShim improvement**

1. explicitly import implicit conversion support.
2. use .nonEmpty instead of .size > 0
3. use val instead of var
4. comment indention


---

* [SPARK-8154](https://issues.apache.org/jira/browse/SPARK-8154) | *Major* | **Remove Term/Code type aliases in code generation**

From my perspective as a code reviewer, I find them more confusing than using String directly.


---

* [SPARK-8151](https://issues.apache.org/jira/browse/SPARK-8151) | *Blocker* | **Pipeline components should correctly implement copy**

Some pipeline components (models and meta-algorithms) should correctly implement copy in order to work properly in pipeline fitting.


---

* [SPARK-8149](https://issues.apache.org/jira/browse/SPARK-8149) | *Major* | **Break ExpressionEvaluationSuite down to multiple files**

We need to substantially improve unit test coverage for expressions, and as a result it is not possible to have all expression tests in a single file.


---

* [SPARK-8148](https://issues.apache.org/jira/browse/SPARK-8148) | *Major* | **Do not use FloatType in partition column inference**

Always use DoubleType to be more stable and less error prone.


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

* [SPARK-8139](https://issues.apache.org/jira/browse/SPARK-8139) | *Minor* | **Documents data sources and Parquet output committer related options**

Should document the following two options:

- {{spark.sql.sources.outputCommitterClass}}
- {{spark.sql.parquet.output.committer.class}}


---

* [SPARK-8138](https://issues.apache.org/jira/browse/SPARK-8138) | *Minor* | **Error message for discovered conflicting partition columns is not intuitive**

For data stored as a Hive-style partitioned table, data files should only live in leaf partition directories.

For example, the following directory layout is illegal:
{noformat}
.
├── \_SUCCESS
├── b=0
│   ├── c=0
│   │   └── part-r-00004.gz.parquet
│   └── part-r-00004.gz.parquet
└── b=1
    ├── c=1
    │   └── part-r-00008.gz.parquet
    └── part-r-00008.gz.parquet
{noformat}
For now, we give an unintuitive error message like this:
{noformat}
Conflicting partition column names detected:
 ArrayBuffer(b, c)
ArrayBuffer(b)
{noformat}
This should be improved.


---

* [SPARK-8136](https://issues.apache.org/jira/browse/SPARK-8136) | *Major* | **AM link download test can be flaky**

Sometimes YARN does not replace the link (or replaces it too soon) causing the YarnClusterSuite to fail. On a real cluster, the NM automatically redirects once the app is complete. So we should make the test less strict and have it only check the link's format rather than try to download the logs.


---

* [SPARK-8135](https://issues.apache.org/jira/browse/SPARK-8135) | *Major* | **Don't load defaults when reconstituting Hadoop Configurations**

Calling "new Configuration()" is an expensive operation because it loads any Hadoop configuration XMLs from disk.

In SerializableWritable, we call new Configuration needlessly when instantiating an ObjectWritable.  The ObjectWritable only needs the Configuration for its class cache, not for any Hadoop properties that might be in XML files, so it should be ok to call new Configuration with loadDefaults = false.


---

* [SPARK-8129](https://issues.apache.org/jira/browse/SPARK-8129) | *Minor* | **Securely pass auth secrets to executors in standalone cluster mode**

Currently, when authentication is turned on, the standalone cluster manager passes auth secrets to executors (also drivers in cluster mode) as java options on the command line, which isn't secure. The passed secret can be seen by anyone running 'ps' command, e.g.,


bq.  501 94787 94734   0  2:32PM ??         0:00.78 /Library/Java/JavaVirtualMachines/jdk1.7.0\_60.jdk/Contents/Home/jre/bin/java -cp /Users/kan/github/spark/sbin/../conf/:/Users/kan/github/spark/assembly/target/scala-2.10/spark-assembly-1.4.0-SNAPSHOT-hadoop2.3.0.jar:/Users/kan/github/spark/lib\_managed/jars/datanucleus-api-jdo-3.2.6.jar:/Users/kan/github/spark/lib\_managed/jars/datanucleus-core-3.2.10.jar:/Users/kan/github/spark/lib\_managed/jars/datanucleus-rdbms-3.2.9.jar -Xms512M -Xmx512M *-Dspark.authenticate.secret=090A030E0F0A05010900000A0C0E0C0B03050D05* -Dspark.driver.port=49625 -Dspark.authenticate=true -XX:MaxPermSize=128m org.apache.spark.executor.CoarseGrainedExecutorBackend --driver-url akka.tcp://sparkDriver@192.168.1.152:49625/user/CoarseGrainedScheduler --executor-id 0 --hostname 192.168.1.152 --cores 8 --app-id app-20150605143259-0000 --worker-url akka.tcp://sparkWorker@192.168.1.152:49623/user/Worker


---

* [SPARK-8127](https://issues.apache.org/jira/browse/SPARK-8127) | *Minor* | **KafkaRDD optimize count() take() isEmpty()**

KafkaRDD can use offset range to avoid doing extra work

Possibly related to SPARK-7122


---

* [SPARK-8126](https://issues.apache.org/jira/browse/SPARK-8126) | *Minor* | **Use temp directory under build dir for unit tests**

Spark's unit tests leave a lot of garbage in /tmp after a run, making it hard to clean things up. Let's place those files under the build dir so that "mvn|sbt|git clean" can do their job.


---

* [SPARK-8124](https://issues.apache.org/jira/browse/SPARK-8124) | *Minor* | **Created more examples on SparkR DataFrames**

(Components please) https://cwiki.apache.org/confluence/display/SPARK/Contributing+to+Spark


---

* [SPARK-8117](https://issues.apache.org/jira/browse/SPARK-8117) | *Major* | **Push codegen into Expression**

Push the codegen implementation of expression into Expression itself, make it easy to manage and extend.


---

* [SPARK-8116](https://issues.apache.org/jira/browse/SPARK-8116) | *Minor* | **sc.range() doesn't match python range()**

Python's built-in range() and xrange() functions can take 1, 2, or 3 arguments. Ranges with just 1 argument are probably used the most frequently, e.g.:
for i in range(len(myList)): ...

However, in pyspark, the SparkContext range() method throws an error when called with a single argument, due to the way its arguments get passed into python's range function.

There's no good reason that I can think of not to support the same syntax as the built-in function. To fix this, we can set the default of the sc.range() method's `stop` argument to None, and then inside the method, if it is None, replace `stop` with `start` and set `start` to 0, which is what the c implementation of range() does:
https://github.com/python/cpython/blob/master/Objects/rangeobject.c#L87


---

* [SPARK-8106](https://issues.apache.org/jira/browse/SPARK-8106) | *Major* | **Set derby.system.durability=test in order to speed up Hive compatibility tests**

Derby has a configuration property named {{derby.system.durability}} that disables I/O synchronization calls for many writes.  This sacrifices durability but can result in large performance gains, which is appropriate for tests.

We should enable this in our test system properties in order to speed up the Hive compatibility tests.  I saw 2-3x speedups locally with this change.


---

* [SPARK-8104](https://issues.apache.org/jira/browse/SPARK-8104) | *Major* | **move the auto alias logic into Analyzer**

Currently we auto alias expression in parser. However, during parser phase we don't have enough information to do the right alias. For example, Generator that has more than 1 kind of element need MultiAlias, ExtractValue don't need Alias if it's in middle of a ExtractValue chain.


---

* [SPARK-8101](https://issues.apache.org/jira/browse/SPARK-8101) | *Minor* | **Upgrade netty to avoid memory leak accord to netty #3837 issues**

There is a direct buffer leak in netty, due to netty 4.0.23-Final not release threadlocal after netty already send message success.

Please Ref: https://github.com/netty/netty/issues/3837


---

* [SPARK-8099](https://issues.apache.org/jira/browse/SPARK-8099) | *Major* | **In yarn-cluster mode, "--executor-cores" can't be setted into SparkConf**

While testing dynamic executor allocation function, I set the executor cores with *--executor-cores 4* in spark-submit command. But in *ExecutorAllocationManager*, the *private val tasksPerExecutor =conf.getInt("spark.executor.cores", 1) / conf.getInt("spark.task.cpus", 1)* is still to be 1.


---

* [SPARK-8098](https://issues.apache.org/jira/browse/SPARK-8098) | *Minor* | **Show correct length of bytes on log page**

The log page should only show desired length of bytes. Currently it shows bytes from the startIndex to the end of the file. The "Next" button on the page is always disabled.


---

* [SPARK-8095](https://issues.apache.org/jira/browse/SPARK-8095) | *Major* | **Spark package dependencies not resolved when package is in local-ivy-cache**

Given a dependency expressed with '--packages', the transitive dependencies are supposed to be automatically included. This is true for most repository types including local-m2-cache, Spark Packages, and central.   For ivy-local-cache, it is not.


---

* [SPARK-8093](https://issues.apache.org/jira/browse/SPARK-8093) | *Critical* | **Spark 1.4 branch's new JSON schema inference has changed the behavior of handling inner empty JSON object.**

This is similar to SPARK-3365. Sample json is attached. Code to reproduce
{code}
var jsonDF = read.json("/tmp/t1.json")
jsonDF.write.parquet("/tmp/t1.parquet")
{code}

The 'integration' object is empty in the json.
StackTrace:
{code}
....
Caused by: java.io.IOException: Could not read footer: java.lang.IllegalStateException: Cannot build an empty group
	at parquet.hadoop.ParquetFileReader.readAllFootersInParallel(ParquetFileReader.java:238)
	at org.apache.spark.sql.parquet.ParquetRelation2$MetadataCache.refresh(newParquet.scala:369)
	at org.apache.spark.sql.parquet.ParquetRelation2.org$apache$spark$sql$parquet$ParquetRelation2$$metadataCache$lzycompute(newParquet.scala:154)
	at org.apache.spark.sql.parquet.ParquetRelation2.org$apache$spark$sql$parquet$ParquetRelation2$$metadataCache(newParquet.scala:152)
	at org.apache.spark.sql.parquet.ParquetRelation2.refresh(newParquet.scala:197)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.insert(commands.scala:134)
	... 69 more
Caused by: java.lang.IllegalStateException: Cannot build an empty group
{code}


---

* [SPARK-8091](https://issues.apache.org/jira/browse/SPARK-8091) | *Major* | **SerializationDebugger does not handle classes with writeObject method**

SerializationDebugger skips testing an object whose class has writeObject(), as it was not trivial to test the serializability all the arbitrary stuff that writeObject() could write.


---

* [SPARK-8090](https://issues.apache.org/jira/browse/SPARK-8090) | *Major* | **SerializationDebugger does not handle classes with writeReplace correctly**

The following class with not serializable object used through writeReplace will not be caught correctly by the SerializationDebugger
{code}
class SerializableClassWithWriteReplace()
  extends Serializable {
  private def writeReplace(): Object = {
    new NotSerializableObjectI()
  }
}
{code}

The reason is that SerializationDebugger does not check the type of the replaced object (whether serializable or not).


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

* [SPARK-8087](https://issues.apache.org/jira/browse/SPARK-8087) | *Blocker* | **PipelineModel.copy didn't copy the stages**

So extra params in transform do not work.


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

* [SPARK-8080](https://issues.apache.org/jira/browse/SPARK-8080) | *Minor* | **Custom Receiver.store with Iterator type do not give correct count at Spark UI**

In Custom receiver if I call store with Iterator type (store(dataIterator: Iterator[T]): Unit ) , Spark UI does not show the correct count of records in block which leads to wrong value for Input Rate, Scheduling Delay and Input SIze.


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

* [SPARK-8077](https://issues.apache.org/jira/browse/SPARK-8077) | *Minor* | **Optimisation of TreeNode for large number of children**

Large IN clauses are parsed very slowly. For example SQL below (10K items in IN) takes 45-50s. 

{code}
s"""SELECT * FROM Person WHERE ForeName IN ('${(1 to 10000).map("n" + \_).mkString("','")}')"""
{code}

This is principally due to TreeNode which repeatedly call contains on children, where children in this case is a List that is 10K long. In effect parsing for large IN clauses is O(N squared).

A small change that uses a lazily initialised Set based on children for contains reduces parse time to around 2.5s

I'd like to create PR for change, as we often use IN clauses with a few thousand items.


---

* [SPARK-8075](https://issues.apache.org/jira/browse/SPARK-8075) | *Major* | **apply type checking interface to more expressions**

As https://github.com/apache/spark/pull/6405 has been merged, we need to apply the type checking interface to more expressions, and finally remove the default implementation of it in Expression.


---

* [SPARK-8074](https://issues.apache.org/jira/browse/SPARK-8074) | *Major* | **Parquet should throw AnalysisException during setup for data type/name related failures**

Change sys.error/RuntimeException to AnalysisException.


---

* [SPARK-8072](https://issues.apache.org/jira/browse/SPARK-8072) | *Blocker* | **Better AnalysisException for writing DataFrame with identically named columns**

We should check if there are duplicate columns, and if yes, throw an explicit error message saying there are duplicate columns. See current error message below. 

{code}
In [3]: df.withColumn('age', df.age)
Out[3]: DataFrame[age: bigint, name: string, age: bigint]

In [4]: df.withColumn('age', df.age).write.parquet('test-parquet.out')
---------------------------------------------------------------------------
Py4JJavaError                             Traceback (most recent call last)
<ipython-input-4-eecb85256898> in <module>()
----> 1 df.withColumn('age', df.age).write.parquet('test-parquet.out')

/scratch/rxin/spark/python/pyspark/sql/readwriter.py in parquet(self, path, mode)
    350         >>> df.write.parquet(os.path.join(tempfile.mkdtemp(), 'data'))
    351         """
--> 352         self.\_jwrite.mode(mode).parquet(path)
    353 
    354     @since(1.4)

/Users/rxin/anaconda/lib/python2.7/site-packages/py4j-0.8.1-py2.7.egg/py4j/java\_gateway.pyc in \_\_call\_\_(self, *args)
    535         answer = self.gateway\_client.send\_command(command)
    536         return\_value = get\_return\_value(answer, self.gateway\_client,
--> 537                 self.target\_id, self.name)
    538 
    539         for temp\_arg in temp\_args:

/Users/rxin/anaconda/lib/python2.7/site-packages/py4j-0.8.1-py2.7.egg/py4j/protocol.pyc in get\_return\_value(answer, gateway\_client, target\_id, name)
    298                 raise Py4JJavaError(
    299                     'An error occurred while calling {0}{1}{2}.\n'.
--> 300                     format(target\_id, '.', name), value)
    301             else:
    302                 raise Py4JError(

Py4JJavaError: An error occurred while calling o35.parquet.
: org.apache.spark.sql.AnalysisException: Reference 'age' is ambiguous, could be: age#0L, age#3L.;
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.resolve(LogicalPlan.scala:279)
	at org.apache.spark.sql.catalyst.plans.logical.LogicalPlan.resolveChildren(LogicalPlan.scala:116)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$8$$anonfun$applyOrElse$4$$anonfun$16.apply(Analyzer.scala:350)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$8$$anonfun$applyOrElse$4$$anonfun$16.apply(Analyzer.scala:350)
	at org.apache.spark.sql.catalyst.analysis.package$.withPosition(package.scala:48)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$8$$anonfun$applyOrElse$4.applyOrElse(Analyzer.scala:350)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$8$$anonfun$applyOrElse$4.applyOrElse(Analyzer.scala:341)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:286)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:286)
	at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:51)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:285)
	at org.apache.spark.sql.catalyst.plans.QueryPlan.org$apache$spark$sql$catalyst$plans$QueryPlan$$transformExpressionUp$1(QueryPlan.scala:108)
	at org.apache.spark.sql.catalyst.plans.QueryPlan$$anonfun$2$$anonfun$apply$2.apply(QueryPlan.scala:123)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at org.apache.spark.sql.catalyst.plans.QueryPlan$$anonfun$2.apply(QueryPlan.scala:122)
	at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
	at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
	at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
	at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
	at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
	at scala.collection.AbstractIterator.to(Iterator.scala:1157)
	at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
	at scala.collection.AbstractIterator.toBuffer(Iterator.scala:1157)
	at scala.collection.TraversableOnce$class.toArray(TraversableOnce.scala:252)
	at scala.collection.AbstractIterator.toArray(Iterator.scala:1157)
	at org.apache.spark.sql.catalyst.plans.QueryPlan.transformExpressionsUp(QueryPlan.scala:127)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$8.applyOrElse(Analyzer.scala:341)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$$anonfun$apply$8.applyOrElse(Analyzer.scala:243)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:286)
	at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$transformUp$1.apply(TreeNode.scala:286)
	at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:51)
	at org.apache.spark.sql.catalyst.trees.TreeNode.transformUp(TreeNode.scala:285)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$.apply(Analyzer.scala:243)
	at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveReferences$.apply(Analyzer.scala:242)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$execute$1$$anonfun$apply$1.apply(RuleExecutor.scala:61)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$execute$1$$anonfun$apply$1.apply(RuleExecutor.scala:59)
	at scala.collection.LinearSeqOptimized$class.foldLeft(LinearSeqOptimized.scala:111)
	at scala.collection.immutable.List.foldLeft(List.scala:84)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$execute$1.apply(RuleExecutor.scala:59)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$execute$1.apply(RuleExecutor.scala:51)
	at scala.collection.immutable.List.foreach(List.scala:318)
	at org.apache.spark.sql.catalyst.rules.RuleExecutor.execute(RuleExecutor.scala:51)
	at org.apache.spark.sql.SQLContext$QueryExecution.analyzed$lzycompute(SQLContext.scala:903)
	at org.apache.spark.sql.SQLContext$QueryExecution.analyzed(SQLContext.scala:903)
	at org.apache.spark.sql.SQLContext$QueryExecution.assertAnalyzed(SQLContext.scala:901)
	at org.apache.spark.sql.DataFrame.<init>(DataFrame.scala:131)
	at org.apache.spark.sql.DataFrame$.apply(DataFrame.scala:51)
	at org.apache.spark.sql.sources.InsertIntoHadoopFsRelation.run(commands.scala:98)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult$lzycompute(commands.scala:57)
	at org.apache.spark.sql.execution.ExecutedCommand.sideEffectResult(commands.scala:57)
	at org.apache.spark.sql.execution.ExecutedCommand.doExecute(commands.scala:68)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$1.apply(SparkPlan.scala:88)
	at org.apache.spark.sql.execution.SparkPlan$$anonfun$execute$1.apply(SparkPlan.scala:88)
	at org.apache.spark.rdd.RDDOperationScope$.withScope(RDDOperationScope.scala:148)
	at org.apache.spark.sql.execution.SparkPlan.execute(SparkPlan.scala:87)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd$lzycompute(SQLContext.scala:920)
	at org.apache.spark.sql.SQLContext$QueryExecution.toRdd(SQLContext.scala:920)
	at org.apache.spark.sql.sources.ResolvedDataSource$.apply(ddl.scala:338)
	at org.apache.spark.sql.DataFrameWriter.save(DataFrameWriter.scala:144)
	at org.apache.spark.sql.DataFrameWriter.save(DataFrameWriter.scala:135)
	at org.apache.spark.sql.DataFrameWriter.parquet(DataFrameWriter.scala:281)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:231)
	at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
	at py4j.Gateway.invoke(Gateway.java:259)
	at py4j.commands.AbstractCommand.invokeMethod(AbstractCommand.java:133)
	at py4j.commands.CallCommand.execute(CallCommand.java:79)
	at py4j.GatewayConnection.run(GatewayConnection.java:207)
	at java.lang.Thread.run(Thread.java:744)
{code}


---

* [SPARK-8070](https://issues.apache.org/jira/browse/SPARK-8070) | *Major* | **Improve createDataFrame in Python**

Currently, createDataFrame will issue multiple jobs in Spark (mostly are small jobs of take()), but it's still better to avoid them if possible.


---

* [SPARK-8068](https://issues.apache.org/jira/browse/SPARK-8068) | *Minor* | **Add confusionMatrix method at class MulticlassMetrics in pyspark/mllib**

There is no confusionMatrix method at class MulticlassMetrics in pyspark/mllib. This method is actually implemented in scala mllib. To achieve this, we just need add a function call to the corresponding one in scala mllib.


---

* [SPARK-8063](https://issues.apache.org/jira/browse/SPARK-8063) | *Major* | **Spark master URL conflict between MASTER env variable and --master command line option**

Currently, Spark supports several ways to specify the Spark master URL, like --master option for spark-submit, spark.master configuration option, MASTER env variable. They have different precedences, for example, --master overrides MASTER if both are specified.

However, for SparkR shell, it always use the master URL specified by MASTER, not honoring --master.


---

* [SPARK-8059](https://issues.apache.org/jira/browse/SPARK-8059) | *Minor* | **Reduce latency between executor requests and RM heartbeat**

This is a follow up to SPARK-7533. On top of the changes done as part of that issue, we could reduce allocation latency by waking up the allocation thread when the driver send new requests.


---

* [SPARK-8058](https://issues.apache.org/jira/browse/SPARK-8058) | *Major* | **Add tests for SPARK-7853 and SPARK-8020**

This jira is used to track the work of adding tests for SPARK-7853 (make sure {{spark-shell}} with and without {{--jars}} works with the isolated class loader) and SPARK-8020 (we are using correct metastore versions and jars setting to initialize {{metadataHive}}).


---

* [SPARK-8056](https://issues.apache.org/jira/browse/SPARK-8056) | *Major* | **Design an easier way to construct schema for both Scala and Python**

StructType is fairly hard to construct, especially in Python.


---

* [SPARK-8054](https://issues.apache.org/jira/browse/SPARK-8054) | *Major* | **Java compatibility fixes for MLlib 1.4**

See [SPARK-7529]


---

* [SPARK-8052](https://issues.apache.org/jira/browse/SPARK-8052) | *Major* | **Hive on Spark: CAST string AS BIGINT produces wrong value**

Example hive query:
SELECT CAST("775983671874188101" as BIGINT)
produces:           775983671874188160L
Look at: last 2 digits.


---

* [SPARK-8051](https://issues.apache.org/jira/browse/SPARK-8051) | *Major* | **StringIndexerModel (and other models) shouldn't complain if the input column is missing.**

If a transformer is not used during transformation, it should keep silent if the input column is missing.


---

* [SPARK-8049](https://issues.apache.org/jira/browse/SPARK-8049) | *Major* | **OneVsRest's output includes a temp column**

The temp accumulator column "mbc$acc" is included in the output which should be removed with withoutColumn.


---

* [SPARK-8043](https://issues.apache.org/jira/browse/SPARK-8043) | *Minor* | **update NaiveBayes and SVM examples in doc**

I found some issues during testing the save/load examples in markdown Documents, as a part of 1.4 QA plan


---

* [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | *Major* | **Make NumPy version checking in mllib/\_\_init\_\_.py**

The current checking does version `1.x' is less than `1.4' this will fail if x has greater than 1 digit, since x > 4, however `1.x` < `1.4`


---

* [SPARK-8031](https://issues.apache.org/jira/browse/SPARK-8031) | *Trivial* | **Version number written to Hive metastore is "0.13.1aa" instead of "0.13.1a"**

While debugging {{CliSuite}} for 1.4.0-SNAPSHOT, noticed the following WARN log line:
{noformat}
15/06/02 13:40:29 WARN ObjectStore: Version information not found in metastore. hive.metastore.schema.verification is not enabled so recording the schema version 0.13.1aa
{noformat}
The problem is that, the version of Hive dependencies 1.4.0-SNAPSHOT uses is {{0.13.1a}} (the one shaded by [~pwendell]), but the version showed in this line is {{0.13.1aa}} (one more {{a}}). The WARN log itself is OK since {{CliSuite}} initializes a brand new temporary Derby metastore.

While initializing Hive metastore, Hive calls {{ObjectStore.checkSchema()}} and may write the "short" version string to metastore. This short version string is defined by {{hive.version.shortname}} in the POM. However, [it was defined as {{0.13.1aa}}|https://github.com/pwendell/hive/commit/32e515907f0005c7a28ee388eadd1c94cf99b2d4#diff-600376dffeb79835ede4a0b285078036R62]. Confirmed with [~pwendell] that it should be a typo.

This doesn't cause any trouble for now, but we probably want to fix this in the future if we ever need to release another shaded version of Hive 0.13.1.


---

* [SPARK-8019](https://issues.apache.org/jira/browse/SPARK-8019) | *Major* | **[SparkR] Create worker R processes with a command other then Rscript**

Currently, SparkR creates worker R processes by calling the command
"Rscript", so it depends on R being installed with that command
globally visible.

This could be a problem if one wants to use an R engine that is not
installed in this way.  For example, suppose that one has multiple
versions of R on the worker machines, and wants to try a new version
of R under SparkR before it has been formally installed.  Ideally, one
could do this by running SparkR and specifying the full path name to
the Rscript command (such as "/usr/local/R-alt/bin/Rscript").

I faced this problem in a different situation: I am working on an
alternate R engine (TERR), which has an alternate version of the
Rscript command (TERRScript).  I could make TERR work with SparkR by
setting up appropriate links from the file Rscript to my TERRscript,
but I'd rather not disable normal access to R.

I finally dealt with this by making a one-line change to
core/src/main/scala/org/apache/spark/api/r/RRDD.scala (which I will
shortly submit as a pull request for this bug) that uses the new
environment variable "spark.sparkr.r.command" to get the path for
spawning R engines.  If this variable is not defined, it defaults to
"Rscript", so we get the old behavior.  With this change, I can start
SparkR to use TERR with a command such as:

{noformat}
sc <- sparkR.init(
        sparkEnvir=list(spark.sparkr.use.daemon="false",
                        spark.sparkr.r.command="/usr/local/TERR/bin/TERRscript"))
{noformat}

This is a very low-risk change that could be generally useful to other
people.


---

* [SPARK-8018](https://issues.apache.org/jira/browse/SPARK-8018) | *Major* | **KMeans should accept initial cluster centers as param**

KMeans should allow model initialization using an existing set of cluster centers.


---

* [SPARK-8013](https://issues.apache.org/jira/browse/SPARK-8013) | *Critical* | **Get JDBC server working with Scala 2.11**

It's worth some investigation here, but I believe the simplest solution is to see if we can get Scala to shade it's use of JLine to avoid JLine conflicts between Hive and the Spark repl.

It's also possible that there is a simpler internal solution to the conflict (I haven't looked at it in a long time). So doing some investigation of that would be good. IIRC, there is use of Jline in our own repl code, in addition to in Hive and also in the Scala 2.11 repl. Back when we created the 2.11 build I couldn't harmonize all the versions in a nice way.


---

* [SPARK-8010](https://issues.apache.org/jira/browse/SPARK-8010) | *Major* | **Implict promote Numeric type to String type in HiveTypeCoercion**

1. Given a query
`select coalesce(null, 1, '1') from dual` will cause exception:
  
  java.lang.RuntimeException: Could not determine return type of Coalesce for IntegerType,StringType

2. Given a query:
`select case when true then 1 else '1' end from dual` will cause exception:

  java.lang.RuntimeException: Types in CASE WHEN must be the same or coercible to a common type: StringType != IntegerType

I checked the code, the main cause is the HiveTypeCoercion doesn't do implicit convert when there is a IntegerType and StringType.

Numeric types can be promoted to string type in case throw exceptions.

Since Hive will always do this. It need to be fixed.


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

* [SPARK-7993](https://issues.apache.org/jira/browse/SPARK-7993) | *Blocker* | **Improve DataFrame.show() output**

1. Each column should be at the minimum 3 characters wide. Right now if the widest value is 1, it is just 1 char wide, which looks ugly. Example below:

2. If a DataFrame have more than N number of rows (N = 20 by default for show), at the end we should display a message like "only showing the top 20 rows".

{code}
+--+--+-+
| a| b|c|
+--+--+-+
| 1| 2|3|
| 1| 2|1|
| 1| 2|3|
| 3| 6|3|
| 1| 2|3|
| 5|10|1|
| 1| 2|3|
| 7|14|3|
| 1| 2|3|
| 9|18|1|
| 1| 2|3|
|11|22|3|
| 1| 2|3|
|13|26|1|
| 1| 2|3|
|15|30|3|
| 1| 2|3|
|17|34|1|
| 1| 2|3|
|19|38|3|
+--+--+-+
only showing top 20 rows   <---- add this at the end
{code}

3. For array values, instead of printing "ArrayBuffer", we should just print square brackets:

{code}
+------------------+------------------+-----------------+
|       a\_freqItems|       b\_freqItems|      c\_freqItems|
+------------------+------------------+-----------------+
|ArrayBuffer(11, 1)|ArrayBuffer(2, 22)|ArrayBuffer(1, 3)|
+------------------+------------------+-----------------+
{code}

should be

{code}
+-----------+-----------+-----------+
|a\_freqItems|b\_freqItems|c\_freqItems|
+-----------+-----------+-----------+
|    [11, 1]|    [2, 22]|     [1, 3]|
+-----------+-----------+-----------+
{code}


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

* [SPARK-7990](https://issues.apache.org/jira/browse/SPARK-7990) | *Major* | **Add methods to facilitate equi-join on multiple join keys**

We have a variant of the join function that facilitates equi-join on a single join key, but we don't have one to do it for multiple join keys.

This is the existing Python API:
{code}
def join(self, other, joinExprs=None, joinType=None):
{code}

I think we should rename joinExprs to "on", and joinType to "how" to match Pandas. And then the "on" column should support either a string, a join condition, a list of string, or a list of join condition ("and" together).

In order to support the Python API, we'd need to add a variant for Scala as well. I think we can add another join method that looks like
{code}
def join(other: DataFrame, on: Seq[String], joinType: String): DataFrame
{code}
and update the existing Scala one to call this one.


---

* [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | *Major* | **Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite**

The flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite will fail if there are not enough executors up before running the jobs.


---

* [SPARK-7988](https://issues.apache.org/jira/browse/SPARK-7988) | *Critical* | **Mechanism to control receiver scheduling**

Streaming receivers are currently scheduled by the underlying Spark scheduler in the same way as other tasks. Will help performance if we added a knob to control receiver scheduling. In most cases, even distribution of receivers among workers should yield best results. In some cases, dense scheduling (e.g, all receivers on one node) may perform better. Maybe support for a new configuration parameter spark.receiver.scheduling.mode (or some such) would help. With 'default' as the current scheduling scheme and 'round-robin' for even distribution among workers (and potentially a third mode for 'dense' scheduling).


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

* [SPARK-7977](https://issues.apache.org/jira/browse/SPARK-7977) | *Major* | **Disallow println**

Very often we see pull requests that added println from debugging, but the author forgot to remove it before code review.

We can use the regex checker to disallow println. For legitimate use of println, we can then disable the rule where they are used.

Add to scalastyle-config.xml file:
{code}
  <check customId="println" level="error" class="org.scalastyle.scalariform.TokenChecker" enabled="true">
    <parameters><parameter name="regex">^println$</parameter></parameters>
    <customMessage><![CDATA[Are you sure you want to println? If yes, wrap the code block with 
      // scalastyle:off println
      println(...)
      // scalastyle:on println]]></customMessage>
  </check>
{code}


---

* [SPARK-7969](https://issues.apache.org/jira/browse/SPARK-7969) | *Minor* | **Drop method on Dataframes should handle Column**

For now the drop method available on Dataframe since Spark 1.4.0 only accepts a column name (as a string), it should also accept a Column as input.


---

* [SPARK-7961](https://issues.apache.org/jira/browse/SPARK-7961) | *Critical* | **Redesign SQLConf for better error message reporting**

Right now, we don't validate config values and as a result will throw exceptions when queries or DataFrame operations are run.

Imagine if one user sets config variable "spark.sql.retainGroupColumns" (requires "true", "false") to "hello". The set action itself will complete fine. When another user runs a query, it will throw the following exception:
{code}
java.lang.IllegalArgumentException: For input string: "hello"
    at scala.collection.immutable.StringLike$class.parseBoolean(StringLike.scala:238)
    at scala.collection.immutable.StringLike$class.toBoolean(StringLike.scala:226)
    at scala.collection.immutable.StringOps.toBoolean(StringOps.scala:31)
    at org.apache.spark.sql.SQLConf.dataFrameRetainGroupColumns(SQLConf.scala:265)
    at org.apache.spark.sql.GroupedData.toDF(GroupedData.scala:74)
    at org.apache.spark.sql.GroupedData.agg(GroupedData.scala:227)
{code}

This is highly confusing. We should redesign SQLConf to validate data input at set time (during setConf call).


---

* [SPARK-7956](https://issues.apache.org/jira/browse/SPARK-7956) | *Major* | **Use Janino to compile SQL expression**

The overhead of current implementation of codegen is to high (50ms - 500ms), which blocks us from turning it on by default.

We should try to investigate using Janino to compile the SQL expressions into JVM bytecode, which should be much faster to compile (about 10ms).


---

* [SPARK-7955](https://issues.apache.org/jira/browse/SPARK-7955) | *Major* | **Dynamic allocation: longer timeout for executors with cached blocks**

When dynamic allocation is enabled, executor idle time is currently the only parameter considered. This can be annoying if executors get removed but have cached blocks. This can cause sever performance degradation.


---

* [SPARK-7952](https://issues.apache.org/jira/browse/SPARK-7952) | *Major* | **equality check between boolean type and numeric type is broken.**

Currently we only support literal numeric values.


---

* [SPARK-7945](https://issues.apache.org/jira/browse/SPARK-7945) | *Minor* | **Do trim to values of properties**

Now applications submited by org.apache.spark.launcher.Main read properties file without doing trim to values in it. 

If user left a space after a value(say spark.driver.extraClassPath) then it probably affect global functions(like some jar could not be included in the classpath), so we should do it like Utils.getPropertiesFromFile.


---

* [SPARK-7944](https://issues.apache.org/jira/browse/SPARK-7944) | *Critical* | **Spark-Shell 2.11 1.4.0-RC-03 does not add jars to class path**

When I run the spark-shell with the --jars argument and supply a path to a single jar file, none of the classes in the jar are available in the REPL.

I have encountered this same behaviour in both 1.3.1 and 1.4.0\_RC-03 builds for scala 2.11. I have yet to do a 1.4.0 RC-03 build for scala 2.10, but the contents of the jar are available in the 1.3.1\_2.10 REPL.


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

* [SPARK-7916](https://issues.apache.org/jira/browse/SPARK-7916) | *Major* | **MLlib Python doc parity check for classification and regression.**

Check then make the MLlib Python classification and regression doc to be as complete as the Scala doc.


---

* [SPARK-7915](https://issues.apache.org/jira/browse/SPARK-7915) | *Major* | **Support specifying the column list for target table in CTAS**

{code}
create table t1 (a int, b string) as select key, value from src;

desc t1;
key	int	NULL
value	string	NULL
{code}

Thus Hive doesn't support specifying the column list for target table in CTAS, however, we should either throwing exception explicitly, or supporting the this feature, we just pick up the later, which seems useful and straightforward.


---

* [SPARK-7913](https://issues.apache.org/jira/browse/SPARK-7913) | *Minor* | **Increase the maximum capacity of PartitionedPairBuffer, PartitionedSerializedPairBuffer and AppendOnlyMap**

We can change the growing strategy to increase the maximum capacity of PartitionedPairBuffer, PartitionedSerializedPairBuffer and AppendOnlyMap.


---

* [SPARK-7910](https://issues.apache.org/jira/browse/SPARK-7910) | *Minor* | **Expose partitioner information in JavaRDD**

It would be useful to expose the partitioner info in the Java & Python APIs for RDDs.


---

* [SPARK-7902](https://issues.apache.org/jira/browse/SPARK-7902) | *Critical* | **SQL UDF doesn't support UDT in PySpark**

We don't convert Python SQL internal types to Python types in SQL UDF execution. This causes problems if the input arguments contain UDTs or the return type is a UDT. Right now, the raw SQL types are passed into the Python UDF and the return value is not converted to Python SQL types.

This is the code (from [~rams]) to produce this bug. (Actually, it triggers another bug first right now.)
{code}
from pyspark.mllib.linalg import SparseVector
from pyspark.sql.functions import udf
from pyspark.sql.types import IntegerType

df = sqlContext.createDataFrame([(SparseVector(2, {0: 0.0}),)], ["features"])
sz = udf(lambda s: s.size, IntegerType())
df.select(sz(df.features).alias("sz")).collect()
{code}


---

* [SPARK-7887](https://issues.apache.org/jira/browse/SPARK-7887) | *Major* | **Remove EvaluatedType from SQL Expression**

It's not a very useful type to use. We can just remove it to simplify expressions slightly.


---

* [SPARK-7886](https://issues.apache.org/jira/browse/SPARK-7886) | *Blocker* | **Add built-in expressions to FunctionRegistry**

Once we do this, we no longer needs to hardcode expressions into the parser (both for internal SQL and Hive QL).


---

* [SPARK-7884](https://issues.apache.org/jira/browse/SPARK-7884) | *Major* | **Move block deserialization from BlockStoreShuffleFetcher to ShuffleReader**

The current Spark shuffle has some hard-coded assumptions about how shuffle managers will read and write data.

The BlockStoreShuffleFetcher.fetch method relies on the ShuffleBlockFetcherIterator that assumes shuffle data is written using the BlockManager.getDiskWriter method and doesn't allow for customization.


---

* [SPARK-7879](https://issues.apache.org/jira/browse/SPARK-7879) | *Critical* | **KMeans API for spark.ml Pipelines**

Create a K-Means API for the spark.ml Pipelines API.  This should wrap the existing KMeans implementation in spark.mllib.

This should be the first clustering method added to Pipelines, and it will be important to consider [SPARK-7610] and think about designing the clustering API.  We do not have to have abstractions from the beginning (and probably should not) but should think far enough ahead so we can add abstractions later on.


---

* [SPARK-7878](https://issues.apache.org/jira/browse/SPARK-7878) | *Minor* | **Rename Stage.jobId to Stage.earliestJobId**

The jobId field in stage refers to the earliest job that uses that job; there is another field, jobIds, that lists all jobs for the stage. We should rename this field to avoid future bugs where people think jobId refers to the one and only job for the stage (e.g., SPARK-6880).


---

* [SPARK-7862](https://issues.apache.org/jira/browse/SPARK-7862) | *Major* | **Query would hang when the using script has error output in SparkSQL**

Steps to reproduce:

val data = (1 to 100000).map { i => (i, i, i) }
data.toDF("d1", "d2", "d3").registerTempTable("script\_trans")
 sql("SELECT TRANSFORM (d1, d2, d3) USING 'cat 1>&2' AS (a,b,c) FROM script\_trans")


---

* [SPARK-7859](https://issues.apache.org/jira/browse/SPARK-7859) | *Major* | **Collect\_SET behaves different under different version of JDK**

To reproduce 
{code}
JAVA\_HOME=/home/hcheng/Java/jdk1.8.0\_45 | build/sbt -Phadoop-2.3 -Phive  'test-only org.apache.spark.sql.hive.execution.HiveWindowFunctionQueryWithoutCodeGenSuite'
{code}

{panel}
- windowing.q -- 20. testSTATs *** FAILED ***
  Results do not match for windowing.q -- 20. testSTATs:
...

Manufacturer#1	almond antique burnished rose metallic	2	258.10677784349235	258.10677784349235	[34,2,6]	66619.10876874991	0.811328754177887	2801.7074999999995               
Manufacturer#1	almond antique burnished rose metallic	2	258.10677784349235	258.10677784349235	[2,34,6]	66619.10876874991	0.811328754177887	2801.7074999999995
{panel}


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

* [SPARK-7845](https://issues.apache.org/jira/browse/SPARK-7845) | *Critical* | **Bump "Hadoop 1" tests to version 1.2.1**

A small number of API's in Hadoop were added between 1.0.4 and 1.2.1. It appears this is one cause of SPARK-7843 since some Hive code relies on newer Hadoop API's. My feeling is we should just bump our tested version up to 1.2.1 (both versions are extremely old). If users are still on < 1.2.1 and run into some of these corner cases, we can consider doing some engineering and supporting the older versions. I'd like to bump our test version though and let this be driven by users, if they exist.

https://github.com/apache/spark/blob/master/dev/run-tests#L43


---

* [SPARK-7835](https://issues.apache.org/jira/browse/SPARK-7835) | *Major* | **Refactor HeartbeatReceiverSuite for coverage and clean up**

As of the writing of this description, the existing test suite has a lot of duplicate code and doesn't even cover the most fundamental feature of the HeartbeatReceiver, which is expiring hosts that have not responded in a while.

https://github.com/apache/spark/blob/31d5d463e76b6611c854c6cf27059fec8198adc9/core/src/test/scala/org/apache/spark/HeartbeatReceiverSuite.scala

We should rewrite this test suite to increase coverage and decrease duplicate code.


---

* [SPARK-7826](https://issues.apache.org/jira/browse/SPARK-7826) | *Major* | **Suppress extra calling getCacheLocs.**

There are too many extra call method {{getCacheLocs}} for {{DAGScheduler}}, which includes Akka communication.
To improve {{DAGScheduler}} performance, suppress extra calling the method.

In my application with over 1200 stages, the execution time became 3.8 min from 8.5 min with my patch.


---

* [SPARK-7824](https://issues.apache.org/jira/browse/SPARK-7824) | *Major* | **Collapsing operator reordering and constant folding into a single batch to push down the single side.**

SQL:
{noformat}
select * from tableA join tableB on (a > 3 and b = d) or (a > 3 and b = e)
{noformat}

Plan before modify
{noformat}
== Optimized Logical Plan ==
Project [a#293,b#294,c#295,d#296,e#297]
 Join Inner, Some(((a#293 > 3) && ((b#294 = d#296) || (b#294 = e#297))))
  MetastoreRelation default, tablea, None
  MetastoreRelation default, tableb, None
{noformat}

Plan after modify
{noformat}
== Optimized Logical Plan ==
Project [a#293,b#294,c#295,d#296,e#297]
 Join Inner, Some(((b#294 = d#296) || (b#294 = e#297)))
  Filter (a#293 > 3)
   MetastoreRelation default, tablea, None
  MetastoreRelation default, tableb, None
{noformat}


---

* [SPARK-7820](https://issues.apache.org/jira/browse/SPARK-7820) | *Critical* | **Java8-tests suite compile error under SBT**

Lots of compilation error is shown when java 8 test suite is enabled in SBT:

{{JAVA\_HOME=/usr/java/jdk1.8.0\_45 ./sbt/sbt -Pyarn -Phadoop-2.4 -Dhadoop.version=2.6.0 -Pjava8-tests}}

{code}
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:43: error: cannot find symbol
[error] public class Java8APISuite extends LocalJavaStreamingContext implements Serializable {
[error]                                    ^
[error]   symbol: class LocalJavaStreamingContext
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:55: error: cannot find symbol
[error]     JavaDStream<String> stream = JavaTestUtils.attachTestInputStream(ssc, inputData, 1);
[error]                                                                      ^
[error]   symbol:   variable ssc
[error]   location: class Java8APISuite
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:55: error: cannot find symbol
[error]     JavaDStream<String> stream = JavaTestUtils.attachTestInputStream(ssc, inputData, 1);
[error]                                  ^
[error]   symbol:   variable JavaTestUtils
[error]   location: class Java8APISuite
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:57: error: cannot find symbol
[error]     JavaTestUtils.attachTestOutputStream(letterCount);
[error]     ^
[error]   symbol:   variable JavaTestUtils
[error]   location: class Java8APISuite
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:58: error: cannot find symbol
[error]     List<List<Integer>> result = JavaTestUtils.runStreams(ssc, 2, 2);
[error]                                                           ^
[error]   symbol:   variable ssc
[error]   location: class Java8APISuite
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:58: error: cannot find symbol
[error]     List<List<Integer>> result = JavaTestUtils.runStreams(ssc, 2, 2);
[error]                                  ^
[error]   symbol:   variable JavaTestUtils
[error]   location: class Java8APISuite
[error] /mnt/data/project/apache-spark/extras/java8-tests/src/test/java/org/apache/spark/streaming/Java8APISuite.java:73: error: cannot find symbol
[error]     JavaDStream<String> stream = JavaTestUtils.attachTestInputStream(ssc, inputData, 1);
[error]                                                                      ^
[error]   symbol:   variable ssc
[error]   location: class Java8APISuite
{code}

The class {{JavaAPISuite}} relies on {{LocalJavaStreamingContext}} which exists in streaming test jar. It is OK for maven compile, since it will generate test jar, but will be failed in sbt test compile, sbt do not generate test jar by default.


---

* [SPARK-7811](https://issues.apache.org/jira/browse/SPARK-7811) | *Trivial* | **Fix typo on slf4j configuration on metrics.properties.template**

There are a minor typo on slf4jsink configuration at metrics.properties.template. 

slf4j is mispelled as sl4j on 2 of the configuration. 

Correcting the typo so users' custom settings will be loaded correctly.


---

* [SPARK-7810](https://issues.apache.org/jira/browse/SPARK-7810) | *Major* | **rdd.py "\_load\_from\_socket" cannot load data from jvm socket if ipv6 is used**

Method "\_load\_from\_socket" in rdd.py cannot load data from jvm socket if ipv6 is used. The current method only works well with ipv4. New modification should work around both two protocols.


---

* [SPARK-7795](https://issues.apache.org/jira/browse/SPARK-7795) | *Major* | **Speed up task serialization in standalone mode**

My experiments with scheduling very short tasks in standalone cluster mode indicated that a significant amount of time was being spent in scheduling the tasks (>500ms for 256 tasks). I found that most of the time was being spent in creating a new instance of serializer for each task. Changing this to just one serializer brought down the scheduling time to 8ms.


---

* [SPARK-7792](https://issues.apache.org/jira/browse/SPARK-7792) | *Major* | **HiveContext registerTempTable not thread safe**

{code:java}
public class ThreadRepro {
    public static void main(String[] args) throws Exception{
       new ThreadRepro().sparkPerfTest();
    }

    public void sparkPerfTest(){

        final AtomicLong counter = new AtomicLong();
        SparkConf conf = new SparkConf();
        conf.setAppName("My Application");
        conf.setMaster("local[7]");
        SparkContext sc = new SparkContext(conf);

        org.apache.spark.sql.hive.HiveContext hc = new org.apache.spark.sql.hive.HiveContext(sc);
        int poolSize = 10;
        ExecutorService pool = Executors.newFixedThreadPool(poolSize);
        for (int i=0; i<poolSize;i++ )
            pool.execute(new QueryJob(hc, i, counter));

        pool.shutdown();
        try {
            pool.awaitTermination(60, TimeUnit.MINUTES);
        }catch(Exception e){
            System.out.println("Thread interrupted");
        }
        System.out.println("All jobs complete");
        System.out.println(" Counter is "+counter.get());

    }
}

class QueryJob implements Runnable{
    String threadId;
    org.apache.spark.sql.hive.HiveContext sqlContext;
    String key;
    AtomicLong counter;
    final AtomicLong local\_counter = new AtomicLong();

    public QueryJob(org.apache.spark.sql.hive.HiveContext \_sqlContext,int id,AtomicLong ctr){

        threadId = "thread\_"+id;
        this.sqlContext= \_sqlContext;
        this.counter = ctr;
    }
    public void run() {
        for (int i = 0; i < 100; i++) {
            String tblName = threadId +"\_"+i;
            DataFrame df = sqlContext.emptyDataFrame();
            df.registerTempTable(tblName);
            String \_query = String.format("select count(*) from %s",tblName);
            System.out.println(String.format(" registered table %s; catalog (%s) ",tblName,debugTables()));
            List<Row> res;
            try {
                res = sqlContext.sql(\_query).collectAsList();
            }catch (Exception e){
                System.out.println("*Exception "+ debugTables() +"**");
                throw e;
            }
            sqlContext.dropTempTable(tblName);
            System.out.println(" dropped table "+tblName);
            try {
                Thread.sleep(3000);//lets make this a not-so-tight loop
            }catch(Exception e){
                System.out.println("Thread interrupted");
            }
        }
    }

    private String debugTables(){
        String v = Joiner.on(',').join(sqlContext.tableNames());
        if (v==null)return ""; else return v;
    }
}
{code}

this will periodically produce the following:

{quote}
 registered table thread\_0\_50; catalog (thread\_1\_50)
 registered table thread\_4\_50; catalog (thread\_4\_50,thread\_1\_50)
 registered table thread\_1\_50; catalog (thread\_1\_50)
 dropped table thread\_1\_50
 dropped table thread\_4\_50
*Exception **
Exception in thread "pool-6-thread-1" java.lang.Error: org.apache.spark.sql.AnalysisException: no such table thread\_0\_50; line 1 pos 21
  at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1151)
  at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
  at java.lang.Thread.run(Thread.java:745)
Caused by: org.apache.spark.sql.AnalysisException: no such table thread\_0\_50; line 1 pos 21
  at org.apache.spark.sql.catalyst.analysis.package$AnalysisErrorAt.failAnalysis(package.scala:42)
  at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$.getTable(Analyzer.scala:177)
  at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$$anonfun$apply$6.applyOrElse(Analyzer.scala:186)
  at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$$anonfun$apply$6.applyOrElse(Analyzer.scala:181)
  at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$3.apply(TreeNode.scala:188)
  at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$3.apply(TreeNode.scala:188)
  at org.apache.spark.sql.catalyst.trees.CurrentOrigin$.withOrigin(TreeNode.scala:51)
  at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:187)
  at org.apache.spark.sql.catalyst.trees.TreeNode$$anonfun$4.apply(TreeNode.scala:208)
  at scala.collection.Iterator$$anon$11.next(Iterator.scala:328)
  at scala.collection.Iterator$class.foreach(Iterator.scala:727)
  at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
  at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
  at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
  at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
  at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
  at scala.collection.AbstractIterator.to(Iterator.scala:1157)
  at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
  at scala.collection.AbstractIterator.toBuffer(Iterator.scala:1157)
  at scala.collection.TraversableOnce$class.toArray(TraversableOnce.scala:252)
  at scala.collection.AbstractIterator.toArray(Iterator.scala:1157)
  at org.apache.spark.sql.catalyst.trees.TreeNode.transformChildrenDown(TreeNode.scala:238)
  at org.apache.spark.sql.catalyst.trees.TreeNode.transformDown(TreeNode.scala:193)
  at org.apache.spark.sql.catalyst.trees.TreeNode.transform(TreeNode.scala:178)
  at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$.apply(Analyzer.scala:181)
  at org.apache.spark.sql.catalyst.analysis.Analyzer$ResolveRelations$.apply(Analyzer.scala:171)
  at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:61)
  at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1$$anonfun$apply$2.apply(RuleExecutor.scala:59)
  at scala.collection.LinearSeqOptimized$class.foldLeft(LinearSeqOptimized.scala:111)
  at scala.collection.immutable.List.foldLeft(List.scala:84)
  at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:59)
  at org.apache.spark.sql.catalyst.rules.RuleExecutor$$anonfun$apply$1.apply(RuleExecutor.scala:51)
  at scala.collection.immutable.List.foreach(List.scala:318)
  at org.apache.spark.sql.catalyst.rules.RuleExecutor.apply(RuleExecutor.scala:51)
  at org.apache.spark.sql.SQLContext$QueryExecution.analyzed$lzycompute(SQLContext.scala:1082)
  at org.apache.spark.sql.SQLContext$QueryExecution.analyzed(SQLContext.scala:1082)
  at org.apache.spark.sql.SQLContext$QueryExecution.assertAnalyzed(SQLContext.scala:1080)
  at org.apache.spark.sql.DataFrame.<init>(DataFrame.scala:133)
  at org.apache.spark.sql.DataFrame$.apply(DataFrame.scala:51)
  at org.apache.spark.sql.hive.HiveContext.sql(HiveContext.scala:101)
  at test.unit.QueryJob.run(ThreadRepro.java:93)
  at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
{quote}

Line 93 is the .sql call...


---

* [SPARK-7785](https://issues.apache.org/jira/browse/SPARK-7785) | *Minor* | **Add pretty printing to pyspark.mllib.linalg.Matrices**

Add \_\_str\_\_ and  \_\_repr\_\_ to matrices.


---

* [SPARK-7781](https://issues.apache.org/jira/browse/SPARK-7781) | *Major* | **GradientBoostedTrees is missing maxBins parameter in pyspark**

I'm running Spark v1.3.1 and when I run the following against my dataset:

{code}
model = GradientBoostedTrees.trainRegressor(trainingData, categoricalFeaturesInfo=catFeatures, maxDepth=6, numIterations=3)

The job will fail with the following message:
Traceback (most recent call last):
  File "/Users/drake/fd/spark/mltest.py", line 73, in <module>
    model = GradientBoostedTrees.trainRegressor(trainingData, categoricalFeaturesInfo=catFeatures, maxDepth=6, numIterations=3)
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/pyspark/mllib/tree.py", line 553, in trainRegressor
    loss, numIterations, learningRate, maxDepth)
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/pyspark/mllib/tree.py", line 438, in \_train
    loss, numIterations, learningRate, maxDepth)
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/pyspark/mllib/common.py", line 120, in callMLlibFunc
    return callJavaFunc(sc, api, *args)
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/pyspark/mllib/common.py", line 113, in callJavaFunc
    return \_java2py(sc, func(*args))
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/lib/py4j-0.8.2.1-src.zip/py4j/java\_gateway.py", line 538, in \_\_call\_\_
  File "/Users/drake/spark/spark-1.3.1-bin-hadoop2.6/python/lib/py4j-0.8.2.1-src.zip/py4j/protocol.py", line 300, in get\_return\_value
15/05/20 16:40:12 INFO BlockManager: Removing block rdd\_32\_95
py4j.protocol.Py4JJavaError: An error occurred while calling o69.trainGradientBoostedTreesModel.
: java.lang.IllegalArgumentException: requirement failed: DecisionTree requires maxBins (= 32) >= max categories in categorical features (= 1895)
	at scala.Predef$.require(Predef.scala:233)
	at org.apache.spark.mllib.tree.impl.DecisionTreeMetadata$.buildMetadata(DecisionTreeMetadata.scala:128)
	at org.apache.spark.mllib.tree.RandomForest.run(RandomForest.scala:138)
	at org.apache.spark.mllib.tree.DecisionTree.run(DecisionTree.scala:60)
	at org.apache.spark.mllib.tree.GradientBoostedTrees$.org$apache$spark$mllib$tree$GradientBoostedTrees$$boost(GradientBoostedTrees.scala:150)
	at org.apache.spark.mllib.tree.GradientBoostedTrees.run(GradientBoostedTrees.scala:63)
	at org.apache.spark.mllib.tree.GradientBoostedTrees$.train(GradientBoostedTrees.scala:96)
	at org.apache.spark.mllib.api.python.PythonMLLibAPI.trainGradientBoostedTreesModel(PythonMLLibAPI.scala:595)
{code}

So, it's complaining about the maxBins, if I provide maxBins=1900 and re-run it:

{code}
model = GradientBoostedTrees.trainRegressor(trainingData, categoricalFeaturesInfo=catFeatures, maxDepth=6, numIterations=3, maxBins=1900)

Traceback (most recent call last):
  File "/Users/drake/fd/spark/mltest.py", line 73, in <module>
    model = GradientBoostedTrees.trainRegressor(trainingData, categoricalFeaturesInfo=catF
eatures, maxDepth=6, numIterations=3, maxBins=1900)
TypeError: trainRegressor() got an unexpected keyword argument 'maxBins'
{code}

It now says it knows nothing of maxBins.

If I run the same command against DecisionTree or RandomForest (with maxBins=1900) it works just fine.

Seems like a bug in GradientBoostedTrees.


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

* [SPARK-7739](https://issues.apache.org/jira/browse/SPARK-7739) | *Minor* | **Improve ChiSqSelector example code in the user guide**

As discussed in http://apache-spark-user-list.1001560.n3.nabble.com/Discretization-td22811.html

We should mention the values are gray levels (0-255) and change the division to integer division.


---

* [SPARK-7735](https://issues.apache.org/jira/browse/SPARK-7735) | *Minor* | **Raise Exception on non-zero exit from pyspark pipe commands**

In pyspark errors are ignored when using the rdd.pipe function. This is different to the scala behaviour where abnormal exit of the piped command is raised. I have submitted a pull request on github which I believe will bring the pyspark behaviour closer to the scala behaviour.

A simple case of where this bug may be problematic is using a network bash utility to perform computations on an rdd. Currently, network errors will be ignored and blank results returned when it would be more desirable to raise an exception so that spark can retry the failed task.


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

* [SPARK-7715](https://issues.apache.org/jira/browse/SPARK-7715) | *Major* | **Update MLlib Programming Guide for 1.4**

Before the release, we need to update the MLlib Programming Guide.  Updates will include:
* Add migration guide subsection.
** Use the results of the QA audit JIRAs.
* Check phrasing, especially in main sections (for outdated items such as "In this release, ..."


---

* [SPARK-7714](https://issues.apache.org/jira/browse/SPARK-7714) | *Major* | **SparkR tests should use more specific expectations than expect\_true**

SparkR's test use testthat's {{expect\_true(foo == bar)}}, but using expectations like {{expect\_equal(foo, bar)}} will give informative error messages if the assertion fails.  We should update the existing tests to use the more specific matchers, such as expect\_equal, expect\_is, expect\_identical, expect\_error, etc.

See http://r-pkgs.had.co.nz/tests.html for more documentation on testtthat expectation functions.


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

* [SPARK-7667](https://issues.apache.org/jira/browse/SPARK-7667) | *Major* | **MLlib Python API consistency check**

Check and ensure the MLlib Python API(class/method/parameter) consistent with Scala.

The following APIs are not consistent:
* class
* method
** recommendation.MatrixFactorizationModel.predictAll() (Because it's a public API, so not change it)
* parameter
** feature.StandardScaler.fit()
** many transform() function of feature module


---

* [SPARK-7666](https://issues.apache.org/jira/browse/SPARK-7666) | *Major* | **MLlib Python doc parity check**

Check then make the MLlib Python doc to be as complete as the Scala doc.


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

* [SPARK-7633](https://issues.apache.org/jira/browse/SPARK-7633) | *Major* | **Streaming Logistic Regression- Python bindings**

Add Python API for StreamingLogisticRegressionWithSGD


---

* [SPARK-7605](https://issues.apache.org/jira/browse/SPARK-7605) | *Major* | **Python API for ElementwiseProduct**

Python API for org.apache.spark.mllib.feature.ElementwiseProduct


---

* [SPARK-7604](https://issues.apache.org/jira/browse/SPARK-7604) | *Major* | **Python API for PCA and PCAModel**

Python API for org.apache.spark.mllib.feature.PCA and org.apache.spark.mllib.feature.PCAModel


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

* [SPARK-7555](https://issues.apache.org/jira/browse/SPARK-7555) | *Major* | **User guide update for ElasticNet**

Copied from [SPARK-7443]:
{quote}
Now that we have algorithms in spark.ml which are not in spark.mllib, we should start making subsections for the spark.ml API as needed. We can follow the structure of the spark.mllib user guide.
* The spark.ml user guide can provide: (a) code examples and (b) info on algorithms which do not exist in spark.mllib.
* We should not duplicate info in the spark.ml guides. Since spark.mllib is still the primary API, we should provide links to the corresponding algorithms in the spark.mllib user guide for more info.
{quote}


---

* [SPARK-7533](https://issues.apache.org/jira/browse/SPARK-7533) | *Major* | **Decrease spacing between AM-RM heartbeats.**

The current default of spark.yarn.scheduler.heartbeat.interval-ms is 5 seconds.  This is really long.  For reference, the MR equivalent is 1 second.

To avoid noise and unnecessary communication, we could have a fast rate for when we're waiting for executors and a slow rate for when we're just heartbeating.


---

* [SPARK-7527](https://issues.apache.org/jira/browse/SPARK-7527) | *Minor* | **Wrong detection of REPL mode in ClosureCleaner**

If REPL class is not present on the classpath, the {{inIntetpreter}} boolean switch shall be {{false}}, not {{true}} at: https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/util/ClosureCleaner.scala#L247


---

* [SPARK-7524](https://issues.apache.org/jira/browse/SPARK-7524) | *Major* | **add configs for keytab and principal, move originals to internal**

As spark now supports long running service by updating tokens for namenode, but only accept parameters passed with "--k=v" format which is not very convinient.

I wanna add spark.* configs in properties file and system property


---

* [SPARK-7515](https://issues.apache.org/jira/browse/SPARK-7515) | *Minor* | **Update documentation for PySpark on YARN with cluster mode**

Now PySpark on YARN with cluster mode is supported so let's update doc.


---

* [SPARK-7514](https://issues.apache.org/jira/browse/SPARK-7514) | *Major* | **Add MinMaxScaler to feature transformation**

Add a popular scaling method to feature component, which is commonly known as min-max normalization or Rescaling.

Core function is,
Normalized( x ) = (x - min) / (max - min) * scale + newBase

where newBase and scale are parameters of the VectorTransformer. newBase is the new minimum number for the feature, and scale controls the range after transformation. This is a little complicated than the basic MinMax normalization, yet it provides flexibility so that users can control the range more specifically. like [0.1, 0.9] in some NN application.

for case that max == min, 0.5 is used as the raw value.

reference:
 http://en.wikipedia.org/wiki/Feature\_scaling
http://stn.spotfire.com/spotfire\_client\_help/index.htm#norm/norm\_scale\_between\_0\_and\_1.htm


---

* [SPARK-7444](https://issues.apache.org/jira/browse/SPARK-7444) | *Minor* | **Eliminate noisy css warn/error logs for UISeleniumSuite**

Eliminate the following noisy logs for {{UISeleniumSuite}}:

{code}
15/05/07 10:09:50.196 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS error: 'http://192.168.0.170:4040/static/bootstrap.min.css' [793:167] Error in style rule. (Invalid token "*". Was expecting one of: <EOF>, <S>, <IDENT>, "}", ";".)
15/05/07 10:09:50.196 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS warning: 'http://192.168.0.170:4040/static/bootstrap.min.css' [793:167] Ignoring the following declarations in this rule.
15/05/07 10:09:50.197 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS error: 'http://192.168.0.170:4040/static/bootstrap.min.css' [799:325] Error in style rule. (Invalid token "*". Was expecting one of: <EOF>, <S>, <IDENT>, "}", ";".)
15/05/07 10:09:50.197 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS warning: 'http://192.168.0.170:4040/static/bootstrap.min.css' [799:325] Ignoring the following declarations in this rule.
15/05/07 10:09:50.198 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS error: 'http://192.168.0.170:4040/static/bootstrap.min.css' [805:18] Error in style rule. (Invalid token "*". Was expecting one of: <EOF>, <S>, <IDENT>, "}", ";".)
15/05/07 10:09:50.198 pool-1-thread-1-ScalaTest-running-UISeleniumSuite WARN DefaultCssErrorHandler: CSS warning: 'http://192.168.0.170:4040/static/bootstrap.min.css' [805:18] Ignoring the following declarations in this rule.
{code}


---

* [SPARK-7440](https://issues.apache.org/jira/browse/SPARK-7440) | *Major* | **Remove physical Distinct operator in favor of Aggregate**

We can just rewrite distinct using groupby (i.e. aggregate operator).


---

* [SPARK-7426](https://issues.apache.org/jira/browse/SPARK-7426) | *Minor* | **spark.ml AttributeFactory.fromStructField should allow other NumericTypes**

It currently only supports DoubleType, but it should support others, at least for fromStructField (importing into ML attribute format, rather than exporting).


---

* [SPARK-7422](https://issues.apache.org/jira/browse/SPARK-7422) | *Minor* | **Add argmax to Vector, SparseVector**

DenseVector has an argmax method which is currently private to Spark.  It would be nice to add that method to Vector and SparseVector.  Adding it to SparseVector would require being careful about handling the inactive elements correctly and efficiently.

We should make argmax public and add unit tests.


---

* [SPARK-7419](https://issues.apache.org/jira/browse/SPARK-7419) | *Critical* | **Flaky test: o.a.s.streaming.CheckpointSuite**

Failing with error messages like
{code}
5 did not equal 7 Number of outputs do not match
{code}

Various tests in the suite seem to be failing with similar error messages:
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.3,label=centos/2228/
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.0,label=centos/2230/


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

* [SPARK-7289](https://issues.apache.org/jira/browse/SPARK-7289) | *Major* | **Combine Limit and Sort to avoid total ordering**

Optimize following sql

select key from (select * from testData order by key) t limit 5

from 

== Parsed Logical Plan ==
'Limit 5
 'Project ['key]
  'Subquery t
   'Sort ['key ASC], true
    'Project [*]
     'UnresolvedRelation [testData], None

== Analyzed Logical Plan ==
Limit 5
 Project [key#0]
  Subquery t
   Sort [key#0 ASC], true
    Project [key#0,value#1]
     Subquery testData
      LogicalRDD [key#0,value#1], MapPartitionsRDD[1] 

== Optimized Logical Plan ==
Limit 5
 Project [key#0]
  Sort [key#0 ASC], true
   LogicalRDD [key#0,value#1], MapPartitionsRDD[1] 
== Physical Plan ==
Limit 5
 Project [key#0]
  Sort [key#0 ASC], true
   Exchange (RangePartitioning [key#0 ASC], 5), []
    PhysicalRDD [key#0,value#1], MapPartitionsRDD[1] 

to

== Parsed Logical Plan ==
'Limit 5
 'Project ['key]
  'Subquery t
   'Sort ['key ASC], true
    'Project [*]
     'UnresolvedRelation [testData], None

== Analyzed Logical Plan ==
Limit 5
 Project [key#0]
  Subquery t
   Sort [key#0 ASC], true
    Project [key#0,value#1]
     Subquery testData
      LogicalRDD [key#0,value#1], MapPartitionsRDD[1]

== Optimized Logical Plan ==
Project [key#0]
 Limit 5
  Sort [key#0 ASC], true
   LogicalRDD [key#0,value#1], MapPartitionsRDD[1] 

== Physical Plan ==
Project [key#0]
 TakeOrdered 5, [key#0 ASC]
  PhysicalRDD [key#0,value#1], MapPartitionsRDD[1]


---

* [SPARK-7287](https://issues.apache.org/jira/browse/SPARK-7287) | *Critical* | **Flaky test: o.a.s.deploy.SparkSubmitSuite --packages**

Error message was not helpful (did not complete within 60 seconds or something).

Observed only in master:

https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop1.0,label=centos/2239/
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-SBT/AMPLAB\_JENKINS\_BUILD\_PROFILE=hadoop2.0,label=centos/2238/
https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-pre-YARN/hadoop.version=1.0.4,label=centos/2163/
...


---

* [SPARK-7265](https://issues.apache.org/jira/browse/SPARK-7265) | *Trivial* | **Improving documentation for Spark SQL Hive support**

miscellaneous documentation improvement for Spark SQL Hive support, Yarn cluster deployment.


---

* [SPARK-7261](https://issues.apache.org/jira/browse/SPARK-7261) | *Blocker* | **Change default log level to WARN in the REPL**

We should add a log4j properties file for the repl (log4j-defaults-repl.properties) that has the level of warning. The main reason for doing this is that we now display nice progress bars in the REPL so the need for task level INFO messages is much less.

The best way to accomplish this is the following:
1. Add a second logging defaults file called log4j-defaults-repl.properties that has log level WARN. https://github.com/apache/spark/blob/branch-1.4/core/src/main/resources/org/apache/spark/log4j-defaults.properties
2. When logging is initialized, check whether you are inside the REPL. If so, then use that one:
https://github.com/apache/spark/blob/branch-1.4/core/src/main/scala/org/apache/spark/Logging.scala#L124
3. The printed message should say something like:
Using Spark's repl log4j profile: org/apache/spark/log4j-defaults-repl.properties
To adjust logging level use sc.setLogLevel("INFO")


---

* [SPARK-7235](https://issues.apache.org/jira/browse/SPARK-7235) | *Major* | **Refactor the GroupingSet implementation**

The logical plan `Expand` takes the `output` as constructor argument, which break the references chain for logical plan optimization. We need to refactor the code.


---

* [SPARK-7199](https://issues.apache.org/jira/browse/SPARK-7199) | *Major* | **Add date and timestamp support to UnsafeRow**

We should add date and timestamp support to UnsafeRow.  This should be fairly easy, as both data types are fixed-length.


---

* [SPARK-7186](https://issues.apache.org/jira/browse/SPARK-7186) | *Blocker* | **Decouple internal Row from external Row**

Currently, we use o.a.s.sql.Row both internally and externally. The external interface is wider than what the internal needs because it is designed to facilitate end-user programming. This design has proven to be very error prone and cumbersome for internal Row implementations.

As a first step, we should just create an InternalRow interface in the catalyst module, which is identical to the current Row interface. And we should switch all internal operators/expressions to use this InternalRow instead. When we need to expose Row, we convert the InternalRow implementation into Row for users.

After this, we can start removing methods that don't make sense for InternalRow (in a separate ticket). This is probably one of the most important refactoring in Spark 1.5.


---

* [SPARK-7184](https://issues.apache.org/jira/browse/SPARK-7184) | *Major* | **Investigate turning codegen on by default**

If it is not the default, users get suboptimal performance out of the box, and the codegen path falls behind the interpreted path over time.

The best option might be to have only the codegen path.


---

* [SPARK-7180](https://issues.apache.org/jira/browse/SPARK-7180) | *Major* | **SerializationDebugger fails with ArrayOutOfBoundsException**

Simple reproduction:
{code}
class Parent extends Serializable {
  val a = "a"
  val b = "b"
}

class Child extends Parent with Serializable {
  val c = Array(1)
  val d = Array(2)
  val e = Array(3)
  val f = Array(4)
  val g = Array(5)
  val o = new Object
}

// ArrayOutOfBoundsException
SparkEnv.get.closureSerializer.newInstance().serialize(new Child)
{code}

I dug into this a little and found that we are trying to fill the fields of `Parent` with the values of `Child`. See the following output I generated by adding println's everywhere:
{code}
* Visiting object org.apache.spark.serializer.Child@2c3299f6 of type org.apache.spark.serializer.Child
  - Found 2 class data slot descriptions
  - Looking at desc #1: org.apache.spark.serializer.Parent: static final long serialVersionUID = 3254964199136071914L;
    - Found 2 fields
      - Ljava/lang/String; a
      - Ljava/lang/String; b
    - getObjFieldValues: 
      - [I@23faa614
      - [I@1cad7d80
      - [I@420a6d35
      - [I@3a87d472
      - [I@2b8ca663
      - java.lang.Object@1effc3eb
{code}
SerializationDebugger#visitSerializable found two fields that belong to the parents, but it tried to cram the child's values into these two fields. The mismatch of number of fields here throws the ArrayOutOfBoundExceptions as a result. The culprit is this line: https://github.com/apache/spark/blob/4d9e560b5470029143926827b1cb9d72a0bfbeff/core/src/main/scala/org/apache/spark/serializer/SerializationDebugger.scala#L150, which runs reflection on the object `Child` even when it's considering the description for `Parent`.

I ran into this when trying to serialize a test suite that extends `FunSuite` (don't ask why).


---

* [SPARK-7169](https://issues.apache.org/jira/browse/SPARK-7169) | *Minor* | **Allow to specify metrics configuration more flexibly**

Metrics are configured in {{metrics.properties}} file. Path to this file is specified in {{SparkConf}} at a key {{spark.metrics.conf}}. The property is read when {{MetricsSystem}} is created which means, during {{SparkEnv}} initialisation. 

h5.Problem
When the user runs his application he has no way to provide the metrics configuration for executors. Although one can specify the path to metrics configuration file (1) the path is common for all the nodes and the client machine so there is implicit assumption that all the machines has same file in the same location, and (2) actually the user needs to copy the file manually to the worker nodes because the file is read before the user files are populated to the executor local directories. All of this makes it very difficult to play with the metrics configuration.

h5. Proposed solution
I think that the easiest and the most consistent solution would be to move the configuration from a separate file directly to {{SparkConf}}. We may prefix all the configuration settings from the metrics configuration by, say {{spark.metrics.props}}. For the backward compatibility, these properties would be loaded from the specified as it works now. Such a solution doesn't change the API so maybe it could be even included in patch release of Spark 1.2 and Spark 1.3.

Appreciate any feedback.


---

* [SPARK-7161](https://issues.apache.org/jira/browse/SPARK-7161) | *Minor* | **Provide REST api to download event logs from History Server**

The idea is to tar up the logs and return the tar.gz file using a REST api. This can be used for debugging even after the app is done.

I am planning to take a look at this.


---

* [SPARK-7158](https://issues.apache.org/jira/browse/SPARK-7158) | *Blocker* | **collect and take return different results**

Reported by [~rams]

{code}
import java.util.UUID
import org.apache.spark.sql.\_
import org.apache.spark.sql.types.\_
val rdd = sc.parallelize(List(1,2,3), 2)
val schema = StructType(List(StructField("index",IntegerType,true)))
val df = sqlContext.createDataFrame(rdd.map(p => Row(p)), schema)
def id:() => String = () => {UUID.randomUUID().toString()}
def square:Int => Int = (x: Int) => {x * x}
val dfWithId = df.withColumn("id",callUDF(id, StringType)).cache() //expect the ID to have materialized at this point
dfWithId.collect()
//res0: Array[org.apache.spark.sql.Row] = Array([1,43c7b8e2-b4a3-43ee-beff-0bb4b7d6c1b1], [2,efd061be-e8cc-43fa-956e-cfd6e7355982], [3,79b0baab-627c-4761-af0d-8995b8c5a125])

val dfWithIdAndSquare = dfWithId.withColumn("square",callUDF(square, IntegerType, col("index")))
dfWithIdAndSquare.collect()
//res1: Array[org.apache.spark.sql.Row] = Array([1,a3b2e744-a0a1-40fe-8133-87a67660b4ab,1], [2,0a7052a0-6071-4ef5-a25a-2670248ea5cd,4], [3,209f269e-207a-4dfd-a186-738be5db2eff,9])
//why are the IDs in lines 11 and 15 different?
{code}

The randomly generated IDs are the same if show (which uses take under the hood) is used instead of collect.


---

* [SPARK-7153](https://issues.apache.org/jira/browse/SPARK-7153) | *Major* | **support Long type ordinal in GetItem**

In GetItem, we will cast the ordinal into Int first. However, if the ordinal is Long type, execution will fail even the value of ordinal meets the requirement. The reason is boxing. In java, we can convert long to int, but can't convert Long to Integer.
{code}
test("get item") {
  jsonRDD(sparkContext.makeRDD(
    """{"a": [1,2,3], "b": 2}""" :: Nil)).registerTempTable("t")
  checkAnswer(sql("SELECT a[b] FROM t"), Row(3))
}
{code}
This test will fail as "b" is inferred as Long type.


---

* [SPARK-7137](https://issues.apache.org/jira/browse/SPARK-7137) | *Trivial* | **Add checkInputColumn back to Params and print more info**

In the PR for [https://issues.apache.org/jira/browse/SPARK-5957], Params.checkInputColumn was moved to SchemaUtils and renamed to checkColumnType.  The downside is that it no longer has access to the parameter info, so it cannot state which input column parameter was incorrect.

We should keep checkColumnType but also add checkInputColumn back to Params.  It should print out the parameter name and description.  Internally, it may call checkColumnType.


---

* [SPARK-7131](https://issues.apache.org/jira/browse/SPARK-7131) | *Major* | **Move tree,forest implementation from spark.mllib to spark.ml**

We want to change and improve the spark.ml API for trees and ensembles, but we cannot change the old API in spark.mllib.  To support the changes we want to make, we should move the implementation from spark.mllib to spark.ml.  We will generalize and modify it, but will also ensure that we do not change the behavior of the old API.

This JIRA should be done in several PRs, in this order:
1. Copy the implementation over to spark.ml and change the spark.ml classes to use that implementation, rather than calling the spark.mllib implementation.  The current spark.ml tests will ensure that the 2 implementations learn exactly the same models.  Note: This should include performance testing to make sure the updated code does not have any regressions.
2. Remove the spark.mllib implementation, and make the spark.mllib APIs wrappers around the spark.ml implementation.  The spark.ml tests will again ensure that we do not change any behavior.
3. Move the unit tests to spark.ml, and change the spark.mllib unit tests to verify model equivalence.

After these updates, we can more safely generalize and improve the spark.ml implementation.


---

* [SPARK-7127](https://issues.apache.org/jira/browse/SPARK-7127) | *Minor* | **Broadcast spark.ml tree ensemble models for predict**

GBTRegressor/Classifier and RandomForestRegressor/Classifier should broadcast models and then predict.  This will mean overriding transform().

Note: Try to reduce duplicated code via the TreeEnsembleModel abstraction.


---

* [SPARK-7114](https://issues.apache.org/jira/browse/SPARK-7114) | *Major* | **parse error for DataFrame.filter after aggregate**

DataFrame.filter has 2 overloaded versions. One of it accept String parameter to represent condition expression.
{code}
val df = ... // df has 2 columns: key, value
val agg = df.groupBy("key").count()
agg.filter(df("count") > 1) // this success
agg.filter("count > 1") // this failed
{code}
the error message is:
{code}
[1.7] failure: ``('' expected but `>' found

count > 1
      ^
java.lang.RuntimeException: [1.7] failure: ``('' expected but `>' found

count > 1
      ^
{code}


---

* [SPARK-7088](https://issues.apache.org/jira/browse/SPARK-7088) | *Critical* | **[REGRESSION] Spark 1.3.1 breaks analysis of third-party logical plans**

We're using some custom logical plans. We are now migrating from Spark 1.3.0 to 1.3.1 and found a few incompatible API changes. All of them seem to be in internal code, so we understand that. But now the ResolveReferences rule, that used to work with third-party logical plans just does not work, without any possible workaround that I'm aware other than just copying ResolveReferences rule and using it with our own fix.

The change in question is this section of code:
{code}
        }.headOption.getOrElse { // Only handle first case, others will be fixed on the next pass.
          sys.error(
            s"""
              |Failure when resolving conflicting references in Join:
              |$plan
              |
              |Conflicting attributes: ${conflictingAttributes.mkString(",")}
              """.stripMargin)
        }
{code}

Which causes the following error on analysis:

{code}
Failure when resolving conflicting references in Join:
'Project ['l.name,'r.name,'FUNC1('l.node,'r.node) AS c2#37,'FUNC2('l.node,'r.node) AS c3#38,'FUNC3('r.node,'l.node) AS c4#39]
 'Join Inner, None
  Subquery l
   Subquery h
    Project [name#12,node#36]
     CustomPlan H, u, (p#13L = s#14L), [ord#15 ASC], IS NULL p#13L, node#36
      Subquery v
       Subquery h\_src
        LogicalRDD [name#12,p#13L,s#14L,ord#15], MapPartitionsRDD[1] at mapPartitions at ExistingRDD.scala:37
  Subquery r
   Subquery h
    Project [name#40,node#36]
     CustomPlan H, u, (p#41L = s#42L), [ord#43 ASC], IS NULL pred#41L, node#36
      Subquery v
       Subquery h\_src
        LogicalRDD [name#40,p#41L,s#42L,ord#43], MapPartitionsRDD[1] at mapPartitions at ExistingRDD.scala:37
{code}


---

* [SPARK-7078](https://issues.apache.org/jira/browse/SPARK-7078) | *Major* | **Cache-aware binary processing in-memory sort**

A cache-friendly sort algorithm that can be used eventually for:
* sort-merge join
* shuffle

See the old alpha sort paper: http://research.microsoft.com/pubs/68249/alphasort.doc

Note that state-of-the-art for sorting has improved quite a bit, but we can easily optimize the sorting algorithm itself later.


---

* [SPARK-7067](https://issues.apache.org/jira/browse/SPARK-7067) | *Major* | **Can't resolve nested column in ORDER BY**

In order to avoid breaking existing HiveQL queries, the current way we resolve column in ORDER BY is: first resolve based on what comes from the select clause and then fall back on its child only when this fails.

However, this case will fail:
{code}
test("orderby queries") {
  jsonRDD(sparkContext.makeRDD(
    """{"a": {"b": [{"c": 1}]}, "b": [{"d": 1}]}""" :: Nil)).registerTempTable("t")
  sql("SELECT a.b FROM t ORDER BY b[0].d").queryExecution.analyzed
}
{code}

As hive doesn't support resolve ORDER BY attribute not exist in select clause, so this problem is spark sql only.


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

* [SPARK-7050](https://issues.apache.org/jira/browse/SPARK-7050) | *Minor* | **Fix Python Kafka test assembly jar not found issue under Maven build**

The behavior of {{mvn package}} and {{sbt kafka-assembly/assembly}} under kafka-assembly module is different, sbt will generate an assembly jar under target/scala-version/, while mvn generates this jar under target/, which will make python Kafka streaming unit test fail to find the related jar.


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

* [SPARK-7026](https://issues.apache.org/jira/browse/SPARK-7026) | *Major* | **LeftSemiJoin can not work when it  has both equal condition and not equal condition.**

Run sql like that 
{panel}
select *
from
web\_sales ws1
left semi join
web\_sales ws2
on ws1.ws\_order\_number = ws2.ws\_order\_number
and ws1.ws\_warehouse\_sk <> ws2.ws\_warehouse\_sk 
{panel}
 then get an exception
{panel}
Couldn't find ws\_warehouse\_sk#287 in {ws\_sold\_date\_sk#237,ws\_sold\_time\_sk#238,ws\_ship\_date\_sk#239,ws\_item\_sk#240,ws\_bill\_customer\_sk#241,ws\_bill\_cdemo\_sk#242,ws\_bill\_hdemo\_sk#243,ws\_bill\_addr\_sk#244,ws\_ship\_customer\_sk#245,ws\_ship\_cdemo\_sk#246,ws\_ship\_hdemo\_sk#247,ws\_ship\_addr\_sk#248,ws\_web\_page\_sk#249,ws\_web\_site\_sk#250,ws\_ship\_mode\_sk#251,ws\_warehouse\_sk#252,ws\_promo\_sk#253,ws\_order\_number#254,ws\_quantity#255,ws\_wholesale\_cost#256,ws\_list\_price#257,ws\_sales\_price#258,ws\_ext\_discount\_amt#259,ws\_ext\_sales\_price#260,ws\_ext\_wholesale\_cost#261,ws\_ext\_list\_price#262,ws\_ext\_tax#263,ws\_coupon\_amt#264,ws\_ext\_ship\_cost#265,ws\_net\_paid#266,ws\_net\_paid\_inc\_tax#267,ws\_net\_paid\_inc\_ship#268,ws\_net\_paid\_inc\_ship\_tax#269,ws\_net\_profit#270,ws\_sold\_date#236}
at scala.sys.package$.error(package.scala:27)
{panel}


---

* [SPARK-7020](https://issues.apache.org/jira/browse/SPARK-7020) | *Critical* | **Restrict module testing based on commit contents**

Currently all builds trigger all tests. This does not need to happen and, to minimize the test window, the {{git}} commit contents should be checked to determine which modules were affected and, for each, only run those tests.


---

* [SPARK-7017](https://issues.apache.org/jira/browse/SPARK-7017) | *Major* | **Refactor dev/run-tests into Python**

This issue is to specifically track the progress of the {{dev/run-tests}} script into Python.


---

* [SPARK-6980](https://issues.apache.org/jira/browse/SPARK-6980) | *Minor* | **Akka timeout exceptions indicate which conf controls them**

If you hit one of the akka timeouts, you just get an exception like

{code}
java.util.concurrent.TimeoutException: Futures timed out after [30 seconds]
{code}

The exception doesn't indicate how to change the timeout, though there is usually (always?) a corresponding setting in {{SparkConf}} .  It would be nice if the exception including the relevant setting.

I think this should be pretty easy to do -- we just need to create something like a {{NamedTimeout}}.  It would have its own {{await}} method, catches the akka timeout and throws its own exception.  We should change {{RpcUtils.askTimeout}} and {{RpcUtils.lookupTimeout}} to always give a {{NamedTimeout}}, so we can be sure that anytime we have a timeout, we get a better exception.

Given the latest refactoring to the rpc layer, this needs to be done in both {{AkkaUtils}} and {{AkkaRpcEndpoint}}.


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

* [SPARK-6941](https://issues.apache.org/jira/browse/SPARK-6941) | *Blocker* | **Provide a better error message to explain that tables created from RDDs are immutable**

We should explicitly let users know that tables created from RDDs are immutable and new rows cannot be inserted into it. We can add a better error message and also explain it in the programming guide.


---

* [SPARK-6912](https://issues.apache.org/jira/browse/SPARK-6912) | *Major* | **Throw an AnalysisException when unsupported Java Map\<K,V\> types used in Hive UDF**

The current implementation can't handle Map<K,V> as a return type in Hive UDF. 
We assume an UDF below;

public class UDFToIntIntMap extends UDF {
    public Map<Integer, Integer> evaluate(Object o);
}

Hive supports this type, and see a link below for details;

https://github.com/kyluka/hive/blob/master/ql/src/java/org/apache/hadoop/hive/ql/udf/generic/GenericUDFBridge.java#L163
https://github.com/l1x/apache-hive/blob/master/hive-0.8.1/src/serde/src/java/org/apache/hadoop/hive/serde2/objectinspector/ObjectInspectorFactory.java#L118


---

* [SPARK-6833](https://issues.apache.org/jira/browse/SPARK-6833) | *Minor* | **Extend `addPackage` so that any given R file can be sourced in the worker before functions are run.**

Similar to how extra python files or packages can be specified (in zip / egg formats), it will be good to support the ability to add extra R files to the executors working directory.

One thing that needs to be investigated is if this will just work out of the box using the spark-submit flag --files ?


---

* [SPARK-6820](https://issues.apache.org/jira/browse/SPARK-6820) | *Critical* | **Convert NAs to null type in SparkR DataFrames**

While converting RDD or local R DataFrame to a SparkR DataFrame we need to handle missing values or NAs.
We should convert NAs to SparkSQL's null type to handle the conversion correctly


---

* [SPARK-6797](https://issues.apache.org/jira/browse/SPARK-6797) | *Critical* | **Add support for YARN cluster mode**

SparkR currently does not work in YARN cluster mode as the R package is not shipped along with the assembly jar to the YARN AM. We could try to use the support for archives in YARN to send out the R package as a zip file.


---

* [SPARK-6785](https://issues.apache.org/jira/browse/SPARK-6785) | *Major* | **DateUtils can not handle date before 1970/01/01 correctly**

{code}
scala> val d = new Date(100)
d: java.sql.Date = 1969-12-31

scala> DateUtils.toJavaDate(DateUtils.fromJavaDate(d))
res1: java.sql.Date = 1970-01-01

{code}


---

* [SPARK-6782](https://issues.apache.org/jira/browse/SPARK-6782) | *Minor* | **add sbt-revolver plugin to sbt build**

[sbt-revolver|https://github.com/spray/sbt-revolver] is a very useful sbt plugin for development.  You can start & stop long-running processes without being forced to kill the entire sbt session.  This can save a lot of time in the development cycle.

With sbt-revolver, you run {{re-start}} to start your app in a forked jvm.   It immediately gives you the sbt shell back, so you can continue to code.  When you want to reload your app with whatever changes you make, you just run {{re-start}} again -- it will kill the forked jvm, recompile your code, and start the process again.  (Or you can run {{re-stop}} at any time to kill the forked jvm.)

I used this a ton while working on adding json support to the UI in https://issues.apache.org/jira/browse/SPARK-3454 (as the history server never stops, without this plugin I had to kill sbt between every time I'd run it manually to play with the behavior.)  I don't write a lot of spark-streaming jobs, but I've also used this plugin in that case, since again my streaming jobs never terminate -- I imagine it would be really useful to anybody that is modifying streaming and wants to test out running some jobs.

I'll post a PR.


---

* [SPARK-6777](https://issues.apache.org/jira/browse/SPARK-6777) | *Critical* | **Implement backwards-compatibility rules in Parquet schema converters**

When converting Parquet schemas to/from  Spark SQL schemas, we should recognize commonly used legacy non-standard representation of complex types. We can follow the pattern used in Parquet's {{AvroSchemaConverter}}.


---

* [SPARK-6749](https://issues.apache.org/jira/browse/SPARK-6749) | *Critical* | **Make metastore client robust to underlying socket connection loss**

Right now, if metastore get restarted, we have to restart the driver to get a new connection to the metastore client because the underlying socket connection is gone. We should make metastore client robust to it.


---

* [SPARK-6747](https://issues.apache.org/jira/browse/SPARK-6747) | *Major* | **Throw an AnalysisException when unsupported Java list types used in Hive UDF**

The current implementation can't handle List<> as a return type in Hive UDF and
throws meaningless Match Error.
We assume an UDF below;

public class UDFToListString extends UDF {
    public List<String> evaluate(Object o) {
        return Arrays.asList("xxx", "yyy", "zzz");
    }
}

An exception of scala.MatchError is thrown as follows when the UDF used;

scala.MatchError: interface java.util.List (of class java.lang.Class)
	at org.apache.spark.sql.hive.HiveInspectors$class.javaClassToDataType(HiveInspectors.scala:174)
	at org.apache.spark.sql.hive.HiveSimpleUdf.javaClassToDataType(hiveUdfs.scala:76)
	at org.apache.spark.sql.hive.HiveSimpleUdf.dataType$lzycompute(hiveUdfs.scala:106)
	at org.apache.spark.sql.hive.HiveSimpleUdf.dataType(hiveUdfs.scala:106)
	at org.apache.spark.sql.catalyst.expressions.Alias.toAttribute(namedExpressions.scala:131)
	at org.apache.spark.sql.catalyst.planning.PhysicalOperation$$anonfun$collectAliases$1.applyOrElse(patterns.scala:95)
	at org.apache.spark.sql.catalyst.planning.PhysicalOperation$$anonfun$collectAliases$1.applyOrElse(patterns.scala:94)
	at scala.runtime.AbstractPartialFunction.apply(AbstractPartialFunction.scala:33)
	at scala.collection.TraversableLike$$anonfun$collect$1.apply(TraversableLike.scala:278)
...

To make udf developers more understood, we need to throw a more suitable exception.


---

* [SPARK-6707](https://issues.apache.org/jira/browse/SPARK-6707) | *Major* | **Mesos Scheduler should allow the user to specify constraints based on slave attributes**

Currently, the mesos scheduler only looks at the 'cpu' and 'mem' resources when trying to determine the usablility of a resource offer from a mesos slave node. It may be preferable for the user to be able to ensure that the spark jobs are only started on a certain set of nodes (based on attributes). 

For example, If the user sets a property, let's say {code}spark.mesos.constraints{code} is set to {code}tachyon=true;us-east-1=false{code}, then the resource offers will be checked to see if they meet both these constraints and only then will be accepted to start new executors.


---

* [SPARK-6566](https://issues.apache.org/jira/browse/SPARK-6566) | *Major* | **Update Spark to use the latest version of Parquet libraries**

There are a lot of bug fixes in the latest version of parquet (1.6.0rc7). E.g. PARQUET-136

It would be good to update Spark to use the latest parquet version.

The following changes are required:
{code}
diff --git a/pom.xml b/pom.xml
index 5ad39a9..095b519 100644
--- a/pom.xml
+++ b/pom.xml
@@ -132,7 +132,7 @@
     <!-- Version used for internal directory structure -->
     <hive.version.short>0.13.1</hive.version.short>
     <derby.version>10.10.1.1</derby.version>
-    <parquet.version>1.6.0rc3</parquet.version>
+    <parquet.version>1.6.0rc7</parquet.version>
     <jblas.version>1.2.3</jblas.version>
     <jetty.version>8.1.14.v20131031</jetty.version>
     <orbit.version>3.0.0.v201112011016</orbit.version>
{code}
and
{code}
--- a/sql/core/src/main/scala/org/apache/spark/sql/parquet/ParquetTableOperations.scala
+++ b/sql/core/src/main/scala/org/apache/spark/sql/parquet/ParquetTableOperations.scala
@@ -480,7 +480,7 @@ private[parquet] class FilteringParquetRowInputFormat
     globalMetaData = new GlobalMetaData(globalMetaData.getSchema,
       mergedMetadata, globalMetaData.getCreatedBy)
 
-    val readContext = getReadSupport(configuration).init(
+    val readContext = ParquetInputFormat.getReadSupportInstance(configuration).init(
       new InitContext(configuration,
         globalMetaData.getKeyValueMetaData,
         globalMetaData.getSchema))

{code}

I am happy to prepare a pull request if necessary.


---

* [SPARK-6487](https://issues.apache.org/jira/browse/SPARK-6487) | *Critical* | **Add sequential pattern mining algorithm PrefixSpan to Spark MLlib**

[~mengxr] [~zhangyouhua]
Sequential pattern mining is an important branch in the pattern mining. In the past the actual work, we use the sequence mining (mainly PrefixSpan algorithm) to find the telecommunication signaling sequence pattern, achieved good results. But once the data is too large, the operation time is too long, even can not meet the the service requirements. We are ready to implement the PrefixSpan algorithm in spark, and applied to our subsequent work. 

The related Paper: 

PrefixSpan: 
Pei, Jian, et al. "Mining sequential patterns by pattern-growth: The prefixspan approach." Knowledge and Data Engineering, IEEE Transactions on 16.11 (2004): 1424-1440.

Parallel Algorithm: 
Cong, Shengnan, Jiawei Han, and David Padua. "Parallel mining of closed sequential patterns." Proceedings of the eleventh ACM SIGKDD international conference on Knowledge discovery in data mining. ACM, 2005.

Distributed Algorithm: 
Wei, Yong-qing, Dong Liu, and Lin-shan Duan. "Distributed PrefixSpan algorithm based on MapReduce." Information Technology in Medicine and Education (ITME), 2012 International Symposium on. Vol. 2. IEEE, 2012.

Pattern mining and sequential mining Knowledge: 
Han, Jiawei, et al. "Frequent pattern mining: current status and future directions." Data Mining and Knowledge Discovery 15.1 (2007): 55-86.


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

* [SPARK-6419](https://issues.apache.org/jira/browse/SPARK-6419) | *Major* | **GenerateOrdering does not support BinaryType and complex types.**

When user want to order by binary columns or columns with complex types and code gen is enabled, there will be a MatchError ([see here|https://github.com/apache/spark/blob/v1.3.0/sql/catalyst/src/main/scala/org/apache/spark/sql/catalyst/expressions/codegen/GenerateOrdering.scala#L45]). We can either add supports for these types or have a function to check if we can safely call GenerateOrdering (like the canBeCodeGened for HashAggregation Strategy).


---

* [SPARK-6411](https://issues.apache.org/jira/browse/SPARK-6411) | *Major* | **PySpark DataFrames can't be created if any datetimes have timezones**

I am unable to create a DataFrame with PySpark if any of the {{datetime}} objects that pass through the conversion process have a {{tzinfo}} property set. 

This works fine:

{code}
In [9]: sc.parallelize([(datetime.datetime(2014, 7, 8, 11, 10),)]).toDF().collect()
Out[9]: [Row(\_1=datetime.datetime(2014, 7, 8, 11, 10))]
{code}

as expected, the tuple's schema is inferred as having one anonymous column with a datetime field, and the datetime roundtrips through to the Java side python deserialization and then back into python land upon {{collect}}. This however:

{code}
In [5]: from dateutil.tz import tzutc

In [10]: sc.parallelize([(datetime.datetime(2014, 7, 8, 11, 10, tzinfo=tzutc()),)]).toDF().collect()
{code}

explodes with

{code}
Py4JJavaError: An error occurred while calling z:org.apache.spark.api.python.PythonRDD.collectAndServe.
: org.apache.spark.SparkException: Job aborted due to stage failure: Task 0 in stage 12.0 failed 1 times, most recent failure: Lost task 0.0 in stage 12.0 (TID 12, localhost): net.razorvine.pickle.PickleException: invalid pickle data for datetime; expected 1 or 7 args, got 2
	at net.razorvine.pickle.objects.DateTimeConstructor.createDateTime(DateTimeConstructor.java:69)
	at net.razorvine.pickle.objects.DateTimeConstructor.construct(DateTimeConstructor.java:32)
	at net.razorvine.pickle.Unpickler.load\_reduce(Unpickler.java:617)
	at net.razorvine.pickle.Unpickler.dispatch(Unpickler.java:170)
	at net.razorvine.pickle.Unpickler.load(Unpickler.java:84)
	at net.razorvine.pickle.Unpickler.loads(Unpickler.java:97)
	at org.apache.spark.api.python.SerDeUtil$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(SerDeUtil.scala:154)
	at org.apache.spark.api.python.SerDeUtil$$anonfun$pythonToJava$1$$anonfun$apply$1.apply(SerDeUtil.scala:153)
	at scala.collection.Iterator$$anon$13.hasNext(Iterator.scala:371)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
	at org.apache.spark.api.python.SerDeUtil$AutoBatchedPickler.hasNext(SerDeUtil.scala:119)
	at scala.collection.Iterator$class.foreach(Iterator.scala:727)
	at org.apache.spark.api.python.SerDeUtil$AutoBatchedPickler.foreach(SerDeUtil.scala:114)
	at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
	at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
	at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
	at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
	at org.apache.spark.api.python.SerDeUtil$AutoBatchedPickler.to(SerDeUtil.scala:114)
	at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
	at org.apache.spark.api.python.SerDeUtil$AutoBatchedPickler.toBuffer(SerDeUtil.scala:114)
	at scala.collection.TraversableOnce$class.toArray(TraversableOnce.scala:252)
	at org.apache.spark.api.python.SerDeUtil$AutoBatchedPickler.toArray(SerDeUtil.scala:114)
	at org.apache.spark.rdd.RDD$$anonfun$17.apply(RDD.scala:813)
	at org.apache.spark.rdd.RDD$$anonfun$17.apply(RDD.scala:813)
	at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1520)
	at org.apache.spark.SparkContext$$anonfun$runJob$5.apply(SparkContext.scala:1520)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:203)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)

Driver stacktrace:
	at org.apache.spark.scheduler.DAGScheduler.org$apache$spark$scheduler$DAGScheduler$$failJobAndIndependentStages(DAGScheduler.scala:1211)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1200)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$abortStage$1.apply(DAGScheduler.scala:1199)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at org.apache.spark.scheduler.DAGScheduler.abortStage(DAGScheduler.scala:1199)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:693)
	at org.apache.spark.scheduler.DAGScheduler$$anonfun$handleTaskSetFailed$1.apply(DAGScheduler.scala:693)
	at scala.Option.foreach(Option.scala:236)
	at org.apache.spark.scheduler.DAGScheduler.handleTaskSetFailed(DAGScheduler.scala:693)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1401)
	at org.apache.spark.scheduler.DAGSchedulerEventProcessLoop.onReceive(DAGScheduler.scala:1362)
	at org.apache.spark.util.EventLoop$$anon$1.run(EventLoop.scala:48)
{code}

By the looks of the error, it would appear as though the java depickler isn't expecting the pickle stream to provide that extra timezone constructor argument.

Here's the disassembled pickle stream for a timezone-less datetime:

{code}
>>> object = datetime.datetime(2014, 7, 8, 11, 10)
>>> stream = pickle.dumps(object)
>>> pickletools.dis(stream)
    0: c    GLOBAL     'datetime datetime'
   19: p    PUT        0
   22: (    MARK
   23: S        STRING     '\x07\xde\x07\x08\x0b\n\x00\x00\x00\x00'
   65: p        PUT        1
   68: t        TUPLE      (MARK at 22)
   69: p    PUT        2
   72: R    REDUCE
   73: p    PUT        3
   76: .    STOP
highest protocol among opcodes = 0
{code}

and then for one with a timezone:

{code}
>>> object = datetime.datetime(2014, 7, 8, 11, 10, tzinfo=tzutc())
>>> stream = pickle.dumps(object)
>>> pickletools.dis(stream)
    0: c    GLOBAL     'datetime datetime'
   19: p    PUT        0
   22: (    MARK
   23: S        STRING     '\x07\xde\x07\x08\x0b\n\x00\x00\x00\x00'
   65: p        PUT        1
   68: c        GLOBAL     'copy\_reg \_reconstructor'
   93: p        PUT        2
   96: (        MARK
   97: c            GLOBAL     'dateutil.tz tzutc'
  116: p            PUT        3
  119: c            GLOBAL     'datetime tzinfo'
  136: p            PUT        4
  139: g            GET        4
  142: (            MARK
  143: t                TUPLE      (MARK at 142)
  144: R            REDUCE
  145: p            PUT        5
  148: t            TUPLE      (MARK at 96)
  149: p        PUT        6
  152: R        REDUCE
  153: p        PUT        7
  156: t        TUPLE      (MARK at 22)
  157: p    PUT        8
  160: R    REDUCE
  161: p    PUT        9
  164: .    STOP
highest protocol among opcodes = 0
{code}

I would bet that the Pyrolite library is missing support for that nested object as a second tuple member in the reconstruction of the datetime object. Has anyone hit this before? Any more information I can provide?


---

* [SPARK-6390](https://issues.apache.org/jira/browse/SPARK-6390) | *Major* | **Add MatrixUDT in PySpark**

After SPARK-6309, we should support MatrixUDT in PySpark too.


---

* [SPARK-6324](https://issues.apache.org/jira/browse/SPARK-6324) | *Minor* | **Clean up usage code in command-line scripts**

With SPARK-4924, most of the logic to launch Spark classes is in a new Java library. Pretty much the only thing left in scripts are the usage strings for each command; that uses some rather ugly and hacky code to handle, since it requires the library communicating back with the scripts that they should print a usage string instead of executing a command.

The scripts have to process that special command (differently on bash and Windows), and do filtering of the actual output of usage strings to account for different commands.

Instead, the library itself should handle all this by executing the classes with a "help" argument; and the classes should be able to handle that argument to do the right thing. So this would require both changes in the launcher library, and in all the main entry points to make sure they properly respond to the "help" by printing the correct help message.

This would make things a lot cleaner and a lot easier to maintain.


---

* [SPARK-6304](https://issues.apache.org/jira/browse/SPARK-6304) | *Major* | **Checkpointing doesn't retain driver port**

In a check-pointed Streaming application running on a fixed driver port, the setting "spark.driver.port" is not loaded when recovering from a checkpoint.

(The driver is then started on a random port.)


---

* [SPARK-6289](https://issues.apache.org/jira/browse/SPARK-6289) | *Major* | **PySpark doesn't maintain SQL date Types**

For the DateType, Spark SQL requires a datetime.date in Python. However, if you collect a row based on that type, you'll end up with a returned value which is type datetime.datetime.

I have tried to reproduce this using the pyspark shell, but have been unable to. This is definitely a problem coming from pyrolite though:

https://github.com/irmen/Pyrolite/

Pyrolite is being used for datetime and date serialization, but appears to not map to date objects, but maps to datetime objects.


---

* [SPARK-6287](https://issues.apache.org/jira/browse/SPARK-6287) | *Major* | **Add support for dynamic allocation in the Mesos coarse-grained scheduler**

Add support inside the coarse-grained Mesos scheduler for dynamic allocation. It amounts to implementing two methods that allow scaling up and down the number of executors:

{code}
def doKillExecutors(executorIds: Seq[String])
def doRequestTotalExecutors(requestedTotal: Int)
{code}


---

* [SPARK-6284](https://issues.apache.org/jira/browse/SPARK-6284) | *Major* | **Support framework authentication and role in Mesos framework**

Support framework authentication and role in both Coarse grain and fine grain mode.


---

* [SPARK-6266](https://issues.apache.org/jira/browse/SPARK-6266) | *Minor* | **PySpark SparseVector missing doc for size, indices, values**

Need to add doc for size, indices, values attributes


---

* [SPARK-6263](https://issues.apache.org/jira/browse/SPARK-6263) | *Major* | **Python MLlib API missing items: Utils**

This JIRA lists items missing in the Python API for this sub-package of MLlib.
This list may be incomplete, so please check again when sending a PR to add these features to the Python API.

Also, please check for major disparities between documentation; some parts of the Python API are less well-documented than their Scala counterparts.  Some items may be listed in the umbrella JIRA linked to this task.

MLUtils
* appendBias
* kFold
* loadVectors


---

* [SPARK-6261](https://issues.apache.org/jira/browse/SPARK-6261) | *Major* | **Python MLlib API missing items: Feature**

This JIRA lists items missing in the Python API for this sub-package of MLlib.
This list may be incomplete, so please check again when sending a PR to add these features to the Python API.

Also, please check for major disparities between documentation; some parts of the Python API are less well-documented than their Scala counterparts.  Some items may be listed in the umbrella JIRA linked to this task.

StandardScalerModel
* All functionality except predict() is missing.

IDFModel
* idf

Word2Vec
* setMinCount

Word2VecModel
* getVectors


---

* [SPARK-6259](https://issues.apache.org/jira/browse/SPARK-6259) | *Major* | **Python API for LDA**

Add Python API for LDA.

This task may be blocked by ongoing work on LDA which may require API changes:
* [SPARK-5563]
* [SPARK-5556]


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

* [SPARK-6154](https://issues.apache.org/jira/browse/SPARK-6154) | *Major* | **Support Kafka, JDBC in Scala 2.11**

Build v1.3.0-rc2 with Scala 2.11 using instructions in the documentation failed when -Phive-thriftserver is enabled.

[info] Compiling 9 Scala sources to /home/hjs/workspace/spark/sql/hive-thriftserver/target/scala-2.11/classes...
[error] /home/hjs/workspace/spark/sql/hive-thriftserver/src/main/scala/org/apache/spark/sql/hive/thriftserver/SparkSQLCLIDriver.scala:2
5: object ConsoleReader is not a member of package jline
[error] import jline.{ConsoleReader, History}
[error]        ^
[warn] Class jline.Completor not found - continuing with a stub.
[warn] Class jline.ConsoleReader not found - continuing with a stub.
[error] /home/hjs/workspace/spark/sql/hive-thriftserver/src/main/scala/org/apache/spark/sql/hive/thriftserver/SparkSQLCLIDriver.scala:1
65: not found: type ConsoleReader
[error]     val reader = new ConsoleReader()


Jianshi


---

* [SPARK-6123](https://issues.apache.org/jira/browse/SPARK-6123) | *Critical* | **Parquet reader should use the schema of every file to create converter**

For two parquet files for the same table having an array column, if values of the array in one file was created when containsNull was true and those in another file was created when containsNull was false, the containsNull in the merged schema will be true and we cannot correctly read data from the table created with containsNull=false.


---

* [SPARK-5962](https://issues.apache.org/jira/browse/SPARK-5962) | *Major* | **[MLLIB] Python support for Power Iteration Clustering**

Add python support for the Power Iteration Clustering feature.  Here is a fragment of the python API as we plan to implement it:

  /**
   * Java stub for Python mllib PowerIterationClustering.run()
   */
  def trainPowerIterationClusteringModel(
      data: JavaRDD[(java.lang.Long, java.lang.Long, java.lang.Double)],
      k: Int,
      maxIterations: Int,
      runs: Int,
      initializationMode: String,
      seed: java.lang.Long): PowerIterationClusteringModel = {
    val picAlg = new PowerIterationClustering()
      .setK(k)
      .setMaxIterations(maxIterations)

    try {
      picAlg.run(data.rdd.persist(StorageLevel.MEMORY\_AND\_DISK))
    } finally {
      data.rdd.unpersist(blocking = false)
    }
  }


---

* [SPARK-5768](https://issues.apache.org/jira/browse/SPARK-5768) | *Trivial* | **Spark UI Shows incorrect memory under Yarn**

I am running Spark on Yarn with 2 executors.  The executors are running on separate physical machines.

I have spark.executor.memory set to '40g'.  This is because I want to have 40g of memory used on each machine.  I have one executor per machine.

When I run my application I see from 'top' that both my executors are using the full 40g of memory I allocated to them.

The 'Executors' tab in the Spark UI shows something different.  It shows the memory used as a total of 20GB per executor e.g. x / 20.3GB.  This makes it look like I only have 20GB available per executor when really I have 40GB available.


---

* [SPARK-5707](https://issues.apache.org/jira/browse/SPARK-5707) | *Blocker* | **Enabling spark.sql.codegen throws ClassNotFound exception**

Exception thrown:
{noformat}
org.apache.spark.SparkException: Job aborted due to stage failure: Task 13 in stage 133.0 failed 4 times, most recent failure: Lost task 13.3 in stage 133.0 (TID 3066, cdh52-node2): java.io.IOException: com.esotericsoftware.kryo.KryoException: Unable to find class: \_\_wrapper$1$81257352e1c844aebf09cb84fe9e7459.\_\_wrapper$1$81257352e1c844aebf09cb84fe9e7459$SpecificRow$1
Serialization trace:
hashTable (org.apache.spark.sql.execution.joins.UniqueKeyHashedRelation)
        at org.apache.spark.util.Utils$.tryOrIOException(Utils.scala:1011)
        at org.apache.spark.broadcast.TorrentBroadcast.readBroadcastBlock(TorrentBroadcast.scala:164)
        at org.apache.spark.broadcast.TorrentBroadcast.\_value$lzycompute(TorrentBroadcast.scala:64)
        at org.apache.spark.broadcast.TorrentBroadcast.\_value(TorrentBroadcast.scala:64)
        at org.apache.spark.broadcast.TorrentBroadcast.getValue(TorrentBroadcast.scala:87)
        at org.apache.spark.broadcast.Broadcast.value(Broadcast.scala:70)
        at org.apache.spark.sql.execution.joins.BroadcastHashJoin$$anonfun$3.apply(BroadcastHashJoin.scala:62)
        at org.apache.spark.sql.execution.joins.BroadcastHashJoin$$anonfun$3.apply(BroadcastHashJoin.scala:61)
        at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:601)
        at org.apache.spark.rdd.RDD$$anonfun$13.apply(RDD.scala:601)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.rdd.CartesianRDD.compute(CartesianRDD.scala:75)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.rdd.MappedRDD.compute(MappedRDD.scala:31)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.rdd.CartesianRDD.compute(CartesianRDD.scala:75)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
        at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:263)
        at org.apache.spark.rdd.RDD.iterator(RDD.scala:230)
        at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:61)
        at org.apache.spark.scheduler.Task.run(Task.scala:56)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:196)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{noformat}
SQL:
{code:sql}
INSERT INTO TABLE ${hiveconf:TEMP\_TABLE}
SELECT
  s\_store\_name,
  pr\_review\_date,
  pr\_review\_content
FROM (
  --select store\_name for stores with flat or declining sales in 3 consecutive months.
  SELECT s\_store\_name
  FROM store s
  JOIN (
    -- linear regression part
    SELECT
      temp.cat AS cat,
      --SUM(temp.x)as sumX,
      --SUM(temp.y)as sumY,
      --SUM(temp.xy)as sumXY,
      --SUM(temp.xx)as sumXSquared,
      --count(temp.x) as N,
      --N * sumXY - sumX * sumY AS numerator,
      --N * sumXSquared - sumX*sumX AS denom
      --numerator / denom as slope,
      --(sumY - slope * sumX) / N as intercept
      --(count(temp.x) * SUM(temp.xy) - SUM(temp.x) * SUM(temp.y)) AS numerator,
      --(count(temp.x) * SUM(temp.xx) - SUM(temp.x) * SUM(temp.x)) AS denom
      --numerator / denom as slope,
      --(sumY - slope * sumX) / N as intercept
      ((count(temp.x) * SUM(temp.xy) - SUM(temp.x) * SUM(temp.y)) / (count(temp.x) * SUM(temp.xx) - SUM(temp.x) * SUM(temp.x)) ) as slope,
      (SUM(temp.y) - ((count(temp.x) * SUM(temp.xy) - SUM(temp.x) * SUM(temp.y)) / (count(temp.x) * SUM(temp.xx) - SUM(temp.x) * SUM(temp.x)) ) * SUM(temp.x)) / count(temp.x) as intercept
    FROM (
SELECT
        s.ss\_store\_sk AS cat,
        s.ss\_sold\_date\_sk  AS x,
        SUM(s.ss\_net\_paid) AS y,
        s.ss\_sold\_date\_sk * SUM(s.ss\_net\_paid) AS xy,
        s.ss\_sold\_date\_sk*s.ss\_sold\_date\_sk AS xx
      FROM store\_sales s
      --select date range
      LEFT SEMI JOIN (
        SELECT d\_date\_sk
        FROM date\_dim d
        WHERE d.d\_date >= '${hiveconf:q18\_startDate}'
        AND   d.d\_date <= '${hiveconf:q18\_endDate}'
      ) dd ON ( s.ss\_sold\_date\_sk=dd.d\_date\_sk )
      WHERE s.ss\_store\_sk <= 18
      GROUP BY s.ss\_store\_sk, s.ss\_sold\_date\_sk
    ) temp
    GROUP BY temp.cat
  ) c on s.s\_store\_sk = c.cat
  WHERE c.slope < 0
) tmp
JOIN  product\_reviews pr on (true)
WHERE instr(pr.pr\_review\_content, tmp.s\_store\_name) > 0
{code}


---

* [SPARK-5681](https://issues.apache.org/jira/browse/SPARK-5681) | *Major* | **Calling graceful stop() immediately after start() on StreamingContext should not get stuck indefinitely**

Sometimes the receiver will be registered into tracker after ssc.stop is called. Especially when stop() is called immediately after start(). So the receiver doesn't get the StopReceiver message from the tracker. In this case, when you call stop() in graceful mode, stop() would get stuck indefinitely.


---

* [SPARK-5562](https://issues.apache.org/jira/browse/SPARK-5562) | *Minor* | **LDA should handle empty documents**

Latent Dirichlet Allocation (LDA) could easily be given empty documents when people select a small vocabulary.  We should check to make sure it is robust to empty documents.

This will hopefully take the form of a unit test, but may require modifying the LDA implementation.


---

* [SPARK-5523](https://issues.apache.org/jira/browse/SPARK-5523) | *Major* | **TaskMetrics and TaskInfo have innumerable copies of the hostname string**

 TaskMetrics and TaskInfo objects have the hostname associated with the task. As these are created (directly or through deserialization of RPC messages), each of them have a separate String object for the hostname even though most of them have the same string data in them. This results in thousands of string objects, increasing memory requirement of the driver. 
This can be easily deduped when deserializing a TaskMetrics object, or when creating a TaskInfo object.

This affects streaming particularly bad due to the rate of job/stage/task generation. 

For solution, see how this dedup is done for StorageLevel. 
https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/storage/StorageLevel.scala#L226


---

* [SPARK-5482](https://issues.apache.org/jira/browse/SPARK-5482) | *Minor* | **Allow individual test suites in python/run-tests**

Add options to run individual test suites in python/run-tests. The usage is as follow.

./python/run-tests \[core|sql|mllib|ml|streaming\]

When you select none, all test suites are run for backward compatibility.


---

* [SPARK-5479](https://issues.apache.org/jira/browse/SPARK-5479) | *Major* | **PySpark on yarn mode need to support non-local python files**

 In SPARK-5162 [~vgrigor] reports this:
Now following code cannot work:
aws emr add-steps --cluster-id "j-XYWIXMD234" \
--steps Name=SparkPi,Jar=s3://eu-west-1.elasticmapreduce/libs/script-runner/script-runner.jar,Args=[/home/hadoop/spark/bin/spark-submit,--deploy-mode,cluster,--master,yarn-cluster,--py-files,s3://mybucketat.amazonaws.com/tasks/main.py,main.py,param1],ActionOnFailure=CONTINUE

so we need to support non-local python files on yarn client and cluster mode.
before submitting application to Yarn, we need to download non-local files to local or hdfs path.
or spark.yarn.dist.files need to support other non-local files.


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

* [SPARK-5295](https://issues.apache.org/jira/browse/SPARK-5295) | *Major* | **Stabilize data types**

1. We expose all the stuff in data types right now, including NumericTypes, etc. These should be hidden from users. We should only expose the leaf types.

2. Remove DeveloperAPI tag from the common types.

3. Specify the internal type, external scala type, and external java type for each data type.

4. Add conversion functions between internal type, external scala type, and external java type into each type.


---

* [SPARK-5288](https://issues.apache.org/jira/browse/SPARK-5288) | *Major* | **Stabilize Spark SQL data type API followup**

Several issues we need to address before release 1.3

* Do we want to make all classes in org.apache.spark.sql.types.dataTypes.scala public? Seems we do not need to make those abstract classes public.

* Seems NativeType is not a very clear and useful concept. Should we just remove it?

* We need to Stabilize the type hierarchy of our data types. Seems StringType and Decimal Type should not be primitive types.


---

* [SPARK-5161](https://issues.apache.org/jira/browse/SPARK-5161) | *Major* | **Parallelize Python test execution**

[Original discussion here.|https://github.com/apache/spark/pull/3564#issuecomment-67785676]

As of 1.2.0, Python tests take around 10-12 minutes to run. Once [SPARK-3431] is complete, this will become a significant fraction of the total test time.

There are 2 separate approaches to explore for parallelizing the execution of Python unit tests:
* Use GNU parallel to run each Python test file in parallel.
* Use [{{nose}}|http://nose.readthedocs.org/en/latest/doc\_tests/test\_multiprocess/multiprocess.html] to parallelize all Python tests in a more extensible/configurable way.


---

* [SPARK-5090](https://issues.apache.org/jira/browse/SPARK-5090) | *Major* | **The improvement of python converter for hbase**

The python converter `HBaseResultToStringConverter` provided in the HBaseConverter.scala returns only the value of first column in the result. It limits the utility of this converter, because it returns only one value per row(perhaps there are several version in hbase) and moreover it loses the other information of record, such as column:cell, timestamp. 

Here we would like to propose an improvement about python converter which returns all the records in the results (in a single string) with more complete information. We would like also make some improvements for hbase\_inputformat.py


---

* [SPARK-5016](https://issues.apache.org/jira/browse/SPARK-5016) | *Major* | **GaussianMixtureEM should distribute matrix inverse for large numFeatures, k**

If numFeatures or k are large, GMM EM should distribute the matrix inverse computation for Gaussian initialization.


---

* [SPARK-4867](https://issues.apache.org/jira/browse/SPARK-4867) | *Blocker* | **UDF clean up**

Right now our support and internal implementation of many functions has a few issues.  Specifically:
 - UDFS don't know their input types and thus don't do type coercion.
 - We hard code a bunch of built in functions into the parser.  This is bad because in SQL it creates new reserved words for things that aren't actually keywords.  Also it means that for each function we need to add support to both SQLContext and HiveContext separately.

For this JIRA I propose we do the following:
 - Change the interfaces for registerFunction and ScalaUdf to include types for the input arguments as well as the output type.
 - Add a rule to analysis that does type coercion for UDFs.
 - Add a parse rule for functions to SQLParser.
 - Rewrite all the UDFs that are currently hacked into the various parsers using this new functionality.

Depending on how big this refactoring becomes we could split parts 1&2 from part 3 above.


---

* [SPARK-4485](https://issues.apache.org/jira/browse/SPARK-4485) | *Critical* | **Add broadcast outer join to  optimize left outer join and right outer join**

For now, spark use broadcast join instead of hash join to optimize {{inner join}} when the size of one side data did not reach the {{AUTO\_BROADCASTJOIN\_THRESHOLD}}

However,Spark SQL will perform shuffle operations on each child relations while executing 
{{left outer join}} and {{right outer join}}.   {outer join}} is more suitable for optimiztion with broadcast join. 
We are planning to create a {{BroadcastHashouterJoin}} to implement the broadcast join for {{left outer join}} and {{right outer join}}


---

* [SPARK-4362](https://issues.apache.org/jira/browse/SPARK-4362) | *Minor* | **Make prediction probability available in NaiveBayesModel**

There is currently no way to get the posterior probability of a prediction with Naive Baye's model during prediction. This should be made available along with the label.


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

* [SPARK-4127](https://issues.apache.org/jira/browse/SPARK-4127) | *Major* | **Streaming Linear Regression- Python bindings**

Create python bindings for Streaming Linear Regression (MLlib).
The Mllib file relevant to this issue can be found at : https://github.com/apache/spark/blob/master/examples/src/main/scala/org/apache/spark/examples/mllib/StreamingLinearRegression.scala


---

* [SPARK-4118](https://issues.apache.org/jira/browse/SPARK-4118) | *Major* | **Create python bindings for Streaming KMeans**

Create Python bindings for Streaming K-means
This is in reference to https://issues.apache.org/jira/browse/SPARK-3254
which adds Streaming K-means functionality to MLLib.


---

* [SPARK-4072](https://issues.apache.org/jira/browse/SPARK-4072) | *Critical* | **Storage UI does not reflect memory usage by streaming blocks**

The storage page in the web ui does not show the memory usage of non-RDD, non-Broadcast blocks. In other words, the memory used by data received through Spark Streaming is not shown on the web ui.


---

* [SPARK-3850](https://issues.apache.org/jira/browse/SPARK-3850) | *Minor* | **Scala style: disallow trailing spaces**

Background discussions:
* https://github.com/apache/spark/pull/2619
* http://apache-spark-developers-list.1001551.n3.nabble.com/Extending-Scala-style-checks-td8624.html

If you look at [the PR Cheng opened|https://github.com/apache/spark/pull/2619], you'll see a trailing white space seemed to mess up some SQL test. That's what spurred the creation of this issue.

[Ted Yu on the dev list|http://mail-archives.apache.org/mod\_mbox/spark-dev/201410.mbox/%3CCALte62y7a6WyBDUFDcGUwbf8WCpttViE+PAo4pZOR+\_-nB2UTw@mail.gmail.com%3E] suggested using this [{{WhitespaceEndOfLineChecker}}|http://www.scalastyle.org/rules-0.1.0.html].


---

* [SPARK-3629](https://issues.apache.org/jira/browse/SPARK-3629) | *Minor* | **Improvements to YARN doc**

Right now this doc starts off with a big list of config options, and only then tells you how to submit an app. It would be better to put that part and the packaging part first, and the config options only at the end.

In addition, the doc mentions yarn-cluster vs yarn-client as separate masters, which is inconsistent with the help output from spark-submit (which says to always use "yarn").


---

* [SPARK-3382](https://issues.apache.org/jira/browse/SPARK-3382) | *Minor* | **GradientDescent convergence tolerance**

GradientDescent should support a convergence tolerance setting.  In general, for optimization, convergence tolerance should be preferred over a limit on the number of iterations since it is a somewhat data-adaptive or data-specific convergence criterion.


---

* [SPARK-3258](https://issues.apache.org/jira/browse/SPARK-3258) | *Major* | **Python API for streaming MLlib algorithms**

This is an umbrella JIRA to track Python port of streaming MLlib algorithms.


---

* [SPARK-3071](https://issues.apache.org/jira/browse/SPARK-3071) | *Major* | **Increase default driver memory**

The current default is 512M, which is usually too small because user also uses driver to do some computation. In local mode, executor memory setting is ignored while only driver memory is used, which provides more incentive to increase the default driver memory.

I suggest

1. 2GB in local mode and warn users if executor memory is set a bigger value
2. same as worker memory on an EC2 standalone server


---

* [SPARK-2774](https://issues.apache.org/jira/browse/SPARK-2774) | *Major* | **Set preferred locations for reduce tasks**

Currently we do not set preferred locations for reduce tasks in Spark. This patch proposes setting preferred locations based on the map output sizes and locations tracked by the MapOutputTracker. This is useful in two conditions

1. When you have a small job in a large cluster it can be useful to co-locate map and reduce tasks to avoid going over the network
2. If there is a lot of data skew in the map stage outputs, then it is beneficial to place the reducer close to the largest output.


---

* [SPARK-2645](https://issues.apache.org/jira/browse/SPARK-2645) | *Major* | **Spark driver calls System.exit(50) after calling SparkContext.stop() the second time**

In some cases my application calls SparkContext.stop() after it has already stopped and this leads to stopping JVM that runs spark driver.
E.g
This program should run forever
{code}
JavaSparkContext context = new JavaSparkContext("spark://12.34.21.44:7077", "DummyApp");
        try {
            JavaRDD<Integer> rdd = context.parallelize(Arrays.asList(1, 2, 3));
            rdd.count();
        } catch (Throwable e) {
            e.printStackTrace();
        }
        try {
            context.cancelAllJobs();
            context.stop();
            //call stop second time
            context.stop();
        } catch (Throwable e) {
            e.printStackTrace();
        }
        Thread.currentThread().join();
{code}
but it finishes with exit code 50 after calling SparkContext.stop() the second time.
Also it throws an exception like this
{code}
org.apache.spark.ServerStateException: Server is already stopped
	at org.apache.spark.HttpServer.stop(HttpServer.scala:122) ~[spark-core\_2.10-1.0.0.jar:1.0.0]
	at org.apache.spark.HttpFileServer.stop(HttpFileServer.scala:48) ~[spark-core\_2.10-1.0.0.jar:1.0.0]
	at org.apache.spark.SparkEnv.stop(SparkEnv.scala:81) ~[spark-core\_2.10-1.0.0.jar:1.0.0]
	at org.apache.spark.SparkContext.stop(SparkContext.scala:984) ~[spark-core\_2.10-1.0.0.jar:1.0.0]
	at org.apache.spark.scheduler.cluster.SparkDeploySchedulerBackend.dead(SparkDeploySchedulerBackend.scala:92) ~[spark-core\_2.10-1.0.0.jar:1.0.0]
	at org.apache.spark.deploy.client.AppClient$ClientActor.markDead(AppClient.scala:178) ~[spark-core\_2.10-1.0.0.jar:1.0.0]
	at org.apache.spark.deploy.client.AppClient$ClientActor$$anonfun$registerWithMaster$1$$anonfun$apply$mcV$sp$1.apply$mcV$sp(AppClient.scala:96) ~[spark-core\_2.10-1.0.0.jar:1.0.0]
	at org.apache.spark.util.Utils$.tryOrExit(Utils.scala:790) ~[spark-core\_2.10-1.0.0.jar:1.0.0]
	at org.apache.spark.deploy.client.AppClient$ClientActor$$anonfun$registerWithMaster$1.apply$mcV$sp(AppClient.scala:91) [spark-core\_2.10-1.0.0.jar:1.0.0]
	at akka.actor.Scheduler$$anon$9.run(Scheduler.scala:80) [akka-actor\_2.10-2.2.3-shaded-protobuf.jar:na]
	at akka.actor.LightArrayRevolverScheduler$$anon$3$$anon$2.run(Scheduler.scala:241) [akka-actor\_2.10-2.2.3-shaded-protobuf.jar:na]
	at akka.dispatch.TaskInvocation.run(AbstractDispatcher.scala:42) [akka-actor\_2.10-2.2.3-shaded-protobuf.jar:na]
	at akka.dispatch.ForkJoinExecutorConfigurator$AkkaForkJoinTask.exec(AbstractDispatcher.scala:386) [akka-actor\_2.10-2.2.3-shaded-protobuf.jar:na]
	at scala.concurrent.forkjoin.ForkJoinTask.doExec(ForkJoinTask.java:260) [scala-library-2.10.4.jar:na]
	at scala.concurrent.forkjoin.ForkJoinPool$WorkQueue.runTask(ForkJoinPool.java:1339) [scala-library-2.10.4.jar:na]
	at scala.concurrent.forkjoin.ForkJoinPool.runWorker(ForkJoinPool.java:1979) [scala-library-2.10.4.jar:na]
	at scala.concurrent.forkjoin.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:107) [scala-library-2.10.4.jar:na]
{code}
One remark is that this behavior is only reproducible when I call SparkContext.cancellAllJobs() before calling SparkContext.stop()


---

* [SPARK-2017](https://issues.apache.org/jira/browse/SPARK-2017) | *Major* | **web ui stage page becomes unresponsive when the number of tasks is large**

{code}
sc.parallelize(1 to 1000000, 1000000).count()
{code}

The above code creates one million tasks to be executed. The stage detail web ui page takes forever to load (if it ever completes).

There are again a few different alternatives:

0. Limit the number of tasks we show.
1. Pagination
2. By default only show the aggregate metrics and failed tasks, and hide the successful ones.



