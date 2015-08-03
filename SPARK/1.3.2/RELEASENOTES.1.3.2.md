
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
# Apache Spark  1.3.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-9507](https://issues.apache.org/jira/browse/SPARK-9507) | *Minor* | **Remove dependency reduced POM hack now that shade plugin is updated**

See https://issues.apache.org/jira/browse/SPARK-8819 for the original problem. The shade plugin is fixed, and so I believe this workaround can be removed.


---

* [SPARK-9254](https://issues.apache.org/jira/browse/SPARK-9254) | *Major* | **sbt-launch-lib.bash should use `curl --location` to support HTTP/HTTPS redirection**

The {{curl}} call in the script should use {{--location}} to support HTTP/HTTPS redirection, since target file(s) can be hosted on CDN nodes.


---

* [SPARK-9236](https://issues.apache.org/jira/browse/SPARK-9236) | *Major* | **Left Outer Join with empty JavaPairRDD returns empty RDD**

When the *left outer join* is performed on a non-empty {{JavaPairRDD}} with a {{JavaPairRDD}} which was created with the {{emptyRDD()}} method the resulting RDD is empty. In the following unit test the latest assert fails.

{code}
import static org.assertj.core.api.Assertions.assertThat;

import java.util.Collections;

import lombok.val;

import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaSparkContext;
import org.junit.Test;

import scala.Tuple2;

public class SparkTest {

  @Test
  public void joinEmptyRDDTest() {
    val sparkConf = new SparkConf().setAppName("test").setMaster("local");

    try (val sparkContext = new JavaSparkContext(sparkConf)) {
      val oneRdd = sparkContext.parallelize(Collections.singletonList("one"));
      val twoRdd = sparkContext.parallelize(Collections.singletonList("two"));
      val threeRdd = sparkContext.emptyRDD();

      val onePair = oneRdd.mapToPair(t -> new Tuple2<Integer, String>(1, t));
      val twoPair = twoRdd.groupBy(t -> 1);
      val threePair = threeRdd.groupBy(t -> 1);

      assertThat(onePair.leftOuterJoin(twoPair).collect()).isNotEmpty();
      assertThat(onePair.leftOuterJoin(threePair).collect()).isNotEmpty();
    }
  }

}
{code}


---

* [SPARK-9198](https://issues.apache.org/jira/browse/SPARK-9198) | *Minor* | **Typo in PySpark SparseVector docs (bad index)**

Several places in the PySpark SparseVector docs have one defined as:
{code}
SparseVector(4, [2, 4], [1.0, 2.0])
{code}
The index 4 goes out of bounds (but this is not checked).


---

* [SPARK-9175](https://issues.apache.org/jira/browse/SPARK-9175) | *Critical* | **BLAS.gemm fails to update matrix C when alpha==0 and beta!=1**

In the BLAS wrapper, gemm is supposed to update matrix C to be alpha * A * B + beta * C. However, the current implementation will not update C as long as alpha == 0. This is incorrect when beta is not equal to 1. 

Example:
val p = 3 
val a = DenseMatrix.zeros(p,p)
val b = DenseMatrix.zeros(p,p)
var c = DenseMatrix.eye(p)
BLAS.gemm(0, a, b, 5, c)

c is unchanged in the Spark 1.4 even though it should be multiplied by 5 element-wise.

The bug is caused by the following in BLAS.gemm:
if (alpha == 0.0) {
  logDebug("gemm: alpha is equal to 0. Returning C.")
}

Will submit PR to fix this.


---

* [SPARK-8865](https://issues.apache.org/jira/browse/SPARK-8865) | *Minor* | **Fix bug:  init SimpleConsumerConfig with kafka params**

"zookeeper.connect" and "group.id" aren't necessary for anything in the kafka direct stream.

But they're expected to be present in a kafka consumer config, and overriding that behavior wasn't possible. So as a workaround, we set them to a blank string. That way users don't have to define unnecessary settings in the kafka param map passed to the KafkaUtils constructor. We talked through that during the original development of the direct stream.

The code as it is released today is almost always going to set a blank string, regardless of what users pass in, because contains on a java property object is not the equivalent of containsKey, it is containsValue. The intention was that if the user sets those properties (whatever personal reasons they have), the values should not get overwritten with a blank string.


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

* [SPARK-8606](https://issues.apache.org/jira/browse/SPARK-8606) | *Critical* | **Exceptions in RDD.getPreferredLocations() and getPartitions() should not be able to crash DAGScheduler**

RDD.getPreferredLocations() and RDD.getPartitions() may throw exceptions but the DAGScheduler does not guard against this, leaving it vulnerable to crashing and stopping the SparkContext if exceptions occur there.

We should fix this by adding more try blocks around these calls in DAGScheduler.


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

* [SPARK-8541](https://issues.apache.org/jira/browse/SPARK-8541) | *Minor* | **sumApprox and meanApprox doctests are incorrect**

The doctests for sumApprox and meanApprox methods test against an upper bound but not a lower bound. If there was a regression in the underlying code that caused things to go wrong the doctest may not fail. For example if sumApprox returned 0 the doctest would return -1 which is less than 0.05. Solution is to use the abs() function to test that the approximate answer is within 5% of the exact answer.


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

* [SPARK-8451](https://issues.apache.org/jira/browse/SPARK-8451) | *Major* | **SparkSubmitSuite never checks for process exit code**

We just never did. If the subprocess throws an exception we just ignore it.


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

* [SPARK-8126](https://issues.apache.org/jira/browse/SPARK-8126) | *Minor* | **Use temp directory under build dir for unit tests**

Spark's unit tests leave a lot of garbage in /tmp after a run, making it hard to clean things up. Let's place those files under the build dir so that "mvn|sbt|git clean" can do their job.


---

* [SPARK-8098](https://issues.apache.org/jira/browse/SPARK-8098) | *Minor* | **Show correct length of bytes on log page**

The log page should only show desired length of bytes. Currently it shows bytes from the startIndex to the end of the file. The "Next" button on the page is always disabled.


---

* [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | *Major* | **Make NumPy version checking in mllib/\_\_init\_\_.py**

The current checking does version `1.x' is less than `1.4' this will fail if x has greater than 1 digit, since x > 4, however `1.x` < `1.4`


---

* [SPARK-7883](https://issues.apache.org/jira/browse/SPARK-7883) | *Trivial* | **Fixing broken trainImplicit example in MLlib Collaborative Filtering documentation.**

The trainImplicit Scala example near the end of the MLlib Collaborative Filtering documentation refers to an ALS.trainImplicit function signature that does not exist.  Rather than add an extra function, let's just fix the example.

Currently, the example refers to a function that would have the following signature: 
def trainImplicit(ratings: RDD[Rating], rank: Int, iterations: Int, alpha: Double) : MatrixFactorizationModel

Instead, let's change the example to refer to this function, which does exist (notice the addition of the lambda parameter):
def trainImplicit(ratings: RDD[Rating], rank: Int, iterations: Int, lambda: Double, alpha: Double) : MatrixFactorizationModel


---

* [SPARK-7744](https://issues.apache.org/jira/browse/SPARK-7744) | *Minor* | **"Distributed matrix" section in MLlib "Data Types" documentation should be reordered.**

The documentation for BlockMatrix should come after RowMatrix, IndexedRowMatrix, and CoordinateMatrix, as BlockMatrix references the later three types, and RowMatrix is considered the "basic" distributed matrix.  This will improve comprehensibility of the "Distributed matrix" section, especially for the new reader.


---

* [SPARK-7668](https://issues.apache.org/jira/browse/SPARK-7668) | *Major* | **Matrix.map should preserve transpose property**

Currently calling map on both DenseMatrix and SparseMatrix will throw original transpose property away. It should be preserved.


---

* [SPARK-7660](https://issues.apache.org/jira/browse/SPARK-7660) | *Blocker* | **Snappy-java buffer-sharing bug leads to data corruption / test failures**

snappy-java contains a bug that can lead to situations where separate SnappyOutputStream instances end up sharing the same input and output buffers, which can lead to data corruption issues.  See https://github.com/xerial/snappy-java/issues/107 for my upstream bug report and https://github.com/xerial/snappy-java/pull/108 for my patch to fix this issue.

I discovered this issue because the buffer-sharing was leading to a test failure in JavaAPISuite: one of the repartition-and-sort tests was returning the wrong answer because both tasks wrote their output using the same compression buffers and one task won the race, causing its output to be written to both shuffle output files. As a result, the test returned the result of collecting one partition twice (see https://github.com/apache/spark/pull/5868#issuecomment-101954962 for more details).

The buffer-sharing can only occur if {{close()}} is called twice on the same SnappyOutputStream \_and\_ the JVM experiences little GC / memory pressure (for a more precise description of when this issue may occur, see my upstream tickets).  I think that this double-close happens somewhere in some test code that was added as part of my Tungsten shuffle patch, exposing this bug (to see this, download a recent build of master and run https://gist.github.com/JoshRosen/eb3257a75c16597d769f locally in order to force the test execution order that triggers the bug).

I think that it's rare that this bug would lead to silent failures like this. In more realistic workloads that aren't writing only a handful of bytes per task, I would expect this issue to lead to stream corruption issues like SPARK-4105.


---

* [SPARK-7651](https://issues.apache.org/jira/browse/SPARK-7651) | *Minor* | **PySpark GMM predict, predictSoft should fail on bad input**

In PySpark, GaussianMixtureModel predict and predictSoft test if the argument is an RDD and operate correctly if so.  But if the argument is not an RDD, they fail silently, returning nothing.

[https://github.com/apache/spark/blob/11a1a135d1fe892cd48a9116acc7554846aed84c/python/pyspark/mllib/clustering.py#L176]

Instead, they should raise errors.


---

* [SPARK-7624](https://issues.apache.org/jira/browse/SPARK-7624) | *Major* | **Task scheduler delay is increasing time over time in spark local mode**

I am running a simple spark streaming program with spark 1.3.1 in local mode, it receives json string from a socket with rate 50 events per second, it can run well in first 6 hours (although the minor gc count per minute is increasing all the time), after that, i can see that the scheduler delay in every task is significant increased from 10 ms to 100 ms, after 10 hours running, the task delay is about 800 ms and cpu is also increased from 2% to 30%. This causes the steaming job can not finish in one batch interval (5 seconds). I dumped the java memory after 16 hours and can see there are about 200000 {{org.apache.spark.scheduler.local.ReviveOffers}} objects in {{akka.actor.LightArrayRevolverScheduler$TaskQueue[]}}. Then i checked the code and see only one place may put the {{ReviveOffers}} to akka {{LightArrayRevolverScheduler}}: the {{LocalActor::reviveOffers}}
{code}
 def reviveOffers() {
    val offers = Seq(new WorkerOffer(localExecutorId, localExecutorHostname, freeCores))
    val tasks = scheduler.resourceOffers(offers).flatten
    for (task <- tasks) {
      freeCores -= scheduler.CPUS\_PER\_TASK
      executor.launchTask(executorBackend, taskId = task.taskId, attemptNumber = task.attemptNumber,
        task.name, task.serializedTask)
    }

    if (tasks.isEmpty && scheduler.activeTaskSets.nonEmpty) {
      // Try to reviveOffer after 1 second, because scheduler may wait for locality timeout
      context.system.scheduler.scheduleOnce(1000 millis, self, ReviveOffers)
    }
}
{code}

I removed the last three lines in this method (the whole {{if}} block, which is introduced from https://issues.apache.org/jira/browse/SPARK-4939), it worked smooth after 20 hours running, the scheduler delay is about 10 ms all the time. So there should have some conditions that the ReviveOffers will be duplicate scheduled? I am not sure why this happens, but i feel that this is the root cause of this issue. 

My spark settings:
#  Memor: 3G
# CPU: 8 cores 
# Streaming Batch interval: 5 seconds.  

Here are my streaming code:
{code}
val input = ssc.socketTextStream(
      hostname, port, StorageLevel.MEMORY\_ONLY\_SER).mapPartitions(
      /// parse the json to Order
      Order(\_), preservePartitioning = true)
val mresult = input.map(
      v => (v.customer, UserSpending(v.customer, v.count * v.price, v.timestamp.toLong))).cache()
val tempr  = mresult.window(
            Seconds(firstStageWindowSize), 
            Seconds(firstStageWindowSize)
          ).transform(
            rdd => rdd.union(rdd).union(rdd).union(rdd)
          )
tempr.count.print
tempr.cache().foreachRDD((rdd, t) => {
            for (i <- 1 to 5) {
              val c = rdd.filter(x=>scala.util.Random.nextInt(5) == i).count()
              println("""T: """ + t + """: """ + c)
            }
          })
{code}

========================================================
Updated at 2015-05-15
I did print some detail schedule times of the suspect lines in {{LocalActor::reviveOffers}}: {color:red}*1685343501*{color} times after 18 hours running.


---

* [SPARK-7621](https://issues.apache.org/jira/browse/SPARK-7621) | *Major* | **Report KafkaReceiver MessageHandler errors so StreamingListeners can take action**

Currently, when a MessageHandler (for any of the Kafka Receiver implementations) encounters an error handling a message, the error is only logged with:

{code:none}
case e: Exception => logError("Error handling message", e)
{code}

It would be \_incredibly\_ useful to be able to notify any registered StreamingListener of this receiver error (especially since this {{try...catch}} block masks more fatal Kafka connection exceptions).


---

* [SPARK-7566](https://issues.apache.org/jira/browse/SPARK-7566) | *Major* | **HiveContext.analyzer cannot be overriden**

Trying to override HiveContext.analyzer will give the following compilation error:

{code}
Error:(51, 36) overriding lazy value analyzer in class HiveContext of type org.apache.spark.sql.catalyst.analysis.Analyzer{val extendedResolutionRules: List[org.apache.spark.sql.catalyst.rules.Rule[org.apache.spark.sql.catalyst.plans.logical.LogicalPlan]]};
 lazy value analyzer has incompatible type
  override protected[sql] lazy val analyzer: Analyzer = {
                                   ^
{code}

That is because the type changed inadvertedly when omitting the type declaration of the return type.


---

* [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | *Major* | **Log test name when starting and finishing each test**

Right now it's really tough to interpret testing output because logs for different tests are interspersed in the same unit-tests.log file. This makes it particularly hard to diagnose flaky tests. This would be much easier if we logged the test name before and after every test (e.g. "Starting test XX", "Finished test XX"). Then you could get right to the logs.

I think one way to do this might be to create a custom test fixture that logs the test class name and then mix that into every test suite /cc [~joshrosen] for his superb knowledge of Scalatest.


---

* [SPARK-7522](https://issues.apache.org/jira/browse/SPARK-7522) | *Minor* | **ML Examples option for dataFormat should not be enclosed in angle brackets**

Some ML examples include an option for specifying the data format, such as DecisionTreeExample, but the option is enclosed in angle brackets like "opt[String]("<dataFormat>")."  This is probably just a typo but makes it awkward to use the option.


---

* [SPARK-7436](https://issues.apache.org/jira/browse/SPARK-7436) | *Major* | **Cannot implement nor use custom StandaloneRecoveryModeFactory implementations**

At least, this code fragment is buggy ({{Master.scala}}):

{code}
      case "CUSTOM" =>
        val clazz = Class.forName(conf.get("spark.deploy.recoveryMode.factory"))
        val factory = clazz.getConstructor(conf.getClass, Serialization.getClass)
          .newInstance(conf, SerializationExtension(context.system))
          .asInstanceOf[StandaloneRecoveryModeFactory]
        (factory.createPersistenceEngine(), factory.createLeaderElectionAgent(this))
{code}

Because here: {{val factory = clazz.getConstructor(conf.getClass, Serialization.getClass)}} it tries to find the constructor which accepts {{org.apache.spark.SparkConf}} and class of companion object of {{akka.serialization.Serialization}} and then it tries to instantiate {{newInstance(conf, SerializationExtension(context.system))}} with instance of {{SparkConf}} and instance of {{Serialization}} class - not the companion objects.


---

* [SPARK-7418](https://issues.apache.org/jira/browse/SPARK-7418) | *Critical* | **Flaky test: o.a.s.deploy.SparkSubmitUtilsSuite search for artifacts**

{code}
   java.lang.RuntimeException: [unresolved dependency: com.agimatec#agimatec-validation;0.9.3: not found]
      at org.apache.spark.deploy.SparkSubmitUtils$.resolveMavenCoordinates(SparkSubmit.scala:931)
      at org.apache.spark.deploy.SparkSubmitUtilsSuite$$anonfun$5.apply$mcV$sp(SparkSubmitUtilsSuite.scala:108)
      at org.apache.spark.deploy.SparkSubmitUtilsSuite$$anonfun$5.apply(SparkSubmitUtilsSuite.scala:107)
      at 
{code}

https://amplab.cs.berkeley.edu/jenkins/view/Spark/job/Spark-Master-Maven-with-YARN/2075/HADOOP\_PROFILE=hadoop-2.4,label=centos/testReport/junit/org.apache.spark.deploy/SparkSubmitUtilsSuite/search\_for\_artifact\_at\_other\_repositories/
...


---

* [SPARK-7417](https://issues.apache.org/jira/browse/SPARK-7417) | *Critical* | **Flaky test: o.a.s.deploy.SparkSubmitUtilsSuite neglect dependencies**

{code}
Expected exception java.lang.RuntimeException to be thrown, but no exception was thrown.
{code}

https://amplab.cs.berkeley.edu/jenkins/job/Spark-Master-Maven-pre-YARN/hadoop.version=1.0.4,label=centos/2201/testReport/junit/org.apache.spark.deploy/SparkSubmitUtilsSuite/neglects\_Spark\_and\_Spark\_s\_dependencies/
...


---

* [SPARK-7345](https://issues.apache.org/jira/browse/SPARK-7345) | *Major* | **Spark cannot detect renamed columns using JDBC connector**

sqlContext.load("jdbc", Map("url" -> "some url", "dbtable" -> "(select column as column1, column as column2 from table)")) creates DataFrame with wrong schema which fails on action.
 
Most likely JDBC SQL connector uses getColumnName instead of getColumnLabel to deduce DataFrame schema from ResultSetMetaData.


---

* [SPARK-7330](https://issues.apache.org/jira/browse/SPARK-7330) | *Major* | **JDBC RDD could lead to NPE when the date field is null**

because we call DateUtils.fromDate(rs.getDate(xx)) no matter it is null or not.


---

* [SPARK-7323](https://issues.apache.org/jira/browse/SPARK-7323) | *Minor* | **Use insertAll instead of individual insert while merging combiners**

Currently we invoke combiners.insert() for each tuple in Aggregator - which results in creation of an Iterator per tuple, and iterating over this iterator : instead, we can directly call insertAll to avoid the object creation, method invocation and iteration overhead - for each tuple when combiners are used.


---

* [SPARK-7278](https://issues.apache.org/jira/browse/SPARK-7278) | *Major* | **Inconsistent handling of dates in PySparks Row object**

Consider the following Python code:

{code:none}
import datetime

rdd = sc.parallelize([[0, datetime.date(2014, 11, 11)], [1, datetime.date(2015,6,4)]])
df = rdd.toDF(schema=['rid', 'date'])
row = df.first()
{code}

Accessing the {{date}} column via {{\\_\\_getitem\\_\\_}} returns a {{datetime.datetime}} instance

{code:none}
>>>row[1]
datetime.datetime(2014, 11, 11, 0, 0)
{code}

while access via {{getattr}} returns a {{datetime.date}} instance:

{code:none}
>>>row.date
datetime.date(2014, 11, 11)
{code}

The problem seems to be that that Java deserializes the {{datetime.date}} objects to {{datetime.datetime}}. This is taken care of [here|https://github.com/apache/spark/blob/master/python/pyspark/sql/\_types.py#L1027] when using {{getattr}}, but is overlooked when directly accessing the tuple by index.

Is there an easy way to fix this?


---

* [SPARK-7234](https://issues.apache.org/jira/browse/SPARK-7234) | *Major* | **When codegen on DateType defaultPrimitive will throw type mismatch exception**

When codegen on, the defaultPrimitive of DateType is null. This will rise below error.

select COUNT(a) from table
a -> DateType

type mismatch;
 found   : Null(null)
 required: DateType.this.InternalType


---

* [SPARK-7229](https://issues.apache.org/jira/browse/SPARK-7229) | *Major* | **SpecificMutableRow should take integer type as internal representation for DateType**

{code}
  test("test DATE types in cache") {
    val rows = TestSQLContext.jdbc(urlWithUserAndPass, "TEST.TIMETYPES").collect()
    TestSQLContext.jdbc(urlWithUserAndPass, "TEST.TIMETYPES").cache().registerTempTable("mycached\_date")
    val cachedRows = sql("select * from mycached\_date").collect()
    assert(rows(0).getAs[java.sql.Date](1) === java.sql.Date.valueOf("1996-01-01"))
    assert(cachedRows(0).getAs[java.sql.Date](1) === java.sql.Date.valueOf("1996-01-01"))
  }
{code}
java.lang.ClassCastException: org.apache.spark.sql.catalyst.expressions.MutableAny cannot be cast to org.apache.spark.sql.catalyst.expressions.MutableInt
	at org.apache.spark.sql.catalyst.expressions.SpecificMutableRow.getInt(SpecificMutableRow.scala:252)
	at org.apache.spark.sql.columnar.IntColumnStats.gatherStats(ColumnStats.scala:208)
	at org.apache.spark.sql.columnar.NullableColumnBuilder$class.appendFrom(NullableColumnBuilder.scala:56)
	at org.apache.spark.sql.columnar.NativeColumnBuilder.org$apache$spark$sql$columnar$compression$CompressibleColumnBuilder$$super$appendFrom(ColumnBuilder.scala:87)
	at org.apache.spark.sql.columnar.compression.CompressibleColumnBuilder$class.appendFrom(CompressibleColumnBuilder.scala:78)
	at org.apache.spark.sql.columnar.NativeColumnBuilder.appendFrom(ColumnBuilder.scala:87)
	at org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$3$$anon$1.next(InMemoryColumnarTableScan.scala:148)
	at org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$3$$anon$1.next(InMemoryColumnarTableScan.scala:124)
	at org.apache.spark.storage.MemoryStore.unrollSafely(MemoryStore.scala:277)
	at org.apache.spark.CacheManager.putInBlockManager(CacheManager.scala:171)
	at org.apache.spark.CacheManager.getOrCompute(CacheManager.scala:78)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:242)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:35)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:277)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:244)
	at org.apache.spark.scheduler.ResultTask.runTask(ResultTask.scala:63)
	at org.apache.spark.scheduler.Task.run(Task.scala:64)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:209)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1110)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:603)
	at java.lang.Thread.run(Thread.java:722)
{panel}

{panel}


---

* [SPARK-7204](https://issues.apache.org/jira/browse/SPARK-7204) | *Critical* | **Call sites in UI are not accurate for DataFrame operations**

Spark core computes callsites by climbing up the stack until we reach the stack frame at the boundary of user code and spark code. The way we compute whether a given frame is internal (Spark) or user code does not work correctly with the new dataframe API.

Once the scope work goes in, we'll have a nicer way to express units of operator scope, but until then there is a simple fix where we just make sure the SQL internal classes are also skipped as we climb up the stack.


---

* [SPARK-7196](https://issues.apache.org/jira/browse/SPARK-7196) | *Major* | **decimal precision lost when loading DataFrame from JDBC**

I have a decimal database field that is defined as 10.2 (i.e. ##########.##). When I load it into Spark via sqlContext.jdbc(..), the type of the corresponding field in the DataFrame is DecimalType, with precisionInfo None. Because of that loss of precision information, SPARK-4176 is triggered when I try to .saveAsTable(..).


---

* [SPARK-7187](https://issues.apache.org/jira/browse/SPARK-7187) | *Major* | **Exceptions in SerializationDebugger should not crash user code**

When issues like SPARK-7180 occurs, it ends up crashing user code through the ClosureCleaner in mysterious ways.


---

* [SPARK-7181](https://issues.apache.org/jira/browse/SPARK-7181) | *Critical* | **External Sorter merge with aggregation go to an infinite loop when we have a total ordering**

In the function {{mergeWithAggregation}} of {{ExternalSorter.scala}}, when there is a total ordering for keys K, values of the same key in the sorted iterator should be combined. Currently this is done by this:

{code}
  val elem = sorted.next()
  val k = elem.\_1
  var c = elem.\_2
  while (sorted.hasNext && sorted.head.\_1 == k) {
    c = mergeCombiners(c, sorted.head.\_2)
  }
{code}

This will go to an infinite loop when there are more than 1 values with the same key. `sorted.next()` should be called to fix this.


---

* [SPARK-7155](https://issues.apache.org/jira/browse/SPARK-7155) | *Major* | **SparkContext's newAPIHadoopFile does not support comma-separated list of files, but the other API hadoopFile does.**

SparkContext's newAPIHadoopFile() does not support comma-separated list of files. For example, the following:

sc.newAPIHadoopFile("/root/file1.txt,/root/file2.txt", classOf[TextInputFormat], classOf[LongWritable], classOf[Text])

will throw

org.apache.hadoop.mapreduce.lib.input.InvalidInputException: Input path does not exist: file:/root/file1.txt,/root/file2.txt

However, the other API hadoopFile() is able to process comma-separated list of files correctly.

In addition, since sc.textFile() uses hadoopFile(), it is also able to process comma-separated list of files correctly.

The problem is that newAPIHadoopFile() use addInputPath() to add the file path into NewHadoopRDD. See Ln 928-931, master branch:
    val job = new NewHadoopJob(conf)
    NewFileInputFormat.addInputPath(job, new Path(path))
    val updatedConf = job.getConfiguration
    new NewHadoopRDD(this, fClass, kClass, vClass, updatedConf).setName(path)

Change addInputPath(job, new Path(path)) to addInputPaths(job, path) will resolve this issue.


---

* [SPARK-7140](https://issues.apache.org/jira/browse/SPARK-7140) | *Major* | **Do not scan all values in Vector.hashCode**

It makes hashCode really expensive. The Pyrolite version we are using in Spark calls it in serialization. Scanning the first few nonzeros should be sufficient.


---

* [SPARK-7103](https://issues.apache.org/jira/browse/SPARK-7103) | *Critical* | **SparkContext.union crashed when some RDDs have no partitioner**

I encountered a bug where Spark crashes with the following stack trace:

{noformat}
java.util.NoSuchElementException: None.get
	at scala.None$.get(Option.scala:313)
	at scala.None$.get(Option.scala:311)
	at org.apache.spark.rdd.PartitionerAwareUnionRDD.getPartitions(PartitionerAwareUnionRDD.scala:69)
{noformat}

Here's a minimal example that reproduces it on the Spark shell:

{noformat}
val x = sc.parallelize(Seq(1->true,2->true,3->false)).partitionBy(new HashPartitioner(1))
val y = sc.parallelize(Seq(1->true))
sc.union(y, x).count() // crashes
sc.union(x, y).count() // This works since the first RDD has a partitioner
{noformat}

We had to resort to instantiating the UnionRDD directly to avoid the PartitionerAwareUnionRDD.


---

* [SPARK-7070](https://issues.apache.org/jira/browse/SPARK-7070) | *Critical* | **LDA.setBeta calls itself**

Should call setTopicConcentration.

Reported by buring: http://apache-spark-user-list.1001560.n3.nabble.com/LDA-code-little-error-Xiangrui-Meng-td22621.html


---

* [SPARK-7039](https://issues.apache.org/jira/browse/SPARK-7039) | *Minor* | **JdbcRdd doesn't support java.sql.Types.NVARCHAR**

When create a DataFrame from jdbc method through SqlContext:
{code}
DataFrame df = sql.jdbc(url, fullTableName);
{code}

If there is column type NVARCHAR, below exception will be thrown:

{code}
Caused by: java.sql.SQLException: Unsupported type -9
	at org.apache.spark.sql.jdbc.JDBCRDD$.getCatalystType(JDBCRDD.scala:78)
	at org.apache.spark.sql.jdbc.JDBCRDD$.resolveTable(JDBCRDD.scala:112)
	at org.apache.spark.sql.jdbc.JDBCRelation.<init>(JDBCRelation.scala:133)
	at org.apache.spark.sql.SQLContext.jdbc(SQLContext.scala:900)
	at org.apache.spark.sql.SQLContext.jdbc(SQLContext.scala:852)
{code}

When comparing the code between JDBCRDD.scala and java.sql.Types.java, the only type is not supported in JDBCRDD.scala is NVARCHAR. Because NCHAR is supported, so I think this is just a small mistake that people skip this type instead of ignore it intentionally.


---

* [SPARK-7036](https://issues.apache.org/jira/browse/SPARK-7036) | *Minor* | **ALS.train should support DataFrames in PySpark**

ALS.train works with SchemaRDDs in 1.2. We should support DataFrames for compatibility.


---

* [SPARK-6998](https://issues.apache.org/jira/browse/SPARK-6998) | *Major* | **Make StreamingKMeans `Serializable`**

If `StreamingKMeans` is not `Serializable`, we cannot do checkpoint for applications that using `StreamingKMeans`. So we should make it `Serializable`.


---

* [SPARK-6992](https://issues.apache.org/jira/browse/SPARK-6992) | *Minor* | **Spark SQL documentation for programmatically adding a Schema is broken for Java API**

The Java example for the documentation is not compiling mainly because Row.create and DataType is used instead of RowFactory and DataTypes.

I'll create the corresponding pull request on branch-1.3

Regards, 

Olivier.


---

* [SPARK-6988](https://issues.apache.org/jira/browse/SPARK-6988) | *Minor* | **Fix Spark SQL documentation for 1.3.x**

There are a few glitches regarding the DataFrame API usage in Java.
The most important one being how to map a DataFrame result, using the javaRDD method.


---

* [SPARK-6985](https://issues.apache.org/jira/browse/SPARK-6985) | *Critical* | **Receiver maxRate over 1000 causes a StackOverflowError**

Attempting to set the streaming receiver max rate (streaming.receiverMaxRate) for the RateLimiter to anything over 1000 causes a fatal error in the receiver with the following stacktrace:

15/04/16 10:41:50 ERROR KafkaReceiver: Error handling message; exiting
java.lang.StackOverflowError
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)
	at org.apache.spark.streaming.receiver.RateLimiter.waitToPush(RateLimiter.scala:66)


---

* [SPARK-6975](https://issues.apache.org/jira/browse/SPARK-6975) | *Minor* | **Argument checking conflict in Yarn when dynamic allocation is enabled**

When dynamic allocation is enabled in yarn with default parameter, {{numExecutors}} will be set to 0, but this will be failed in the following {{valideArgs()}}, here {{numExecutors}} must > 0, but for dynamic allocation, this executor number can be 0 (with default setting). The exception is shown as below:

Exception in thread "main" java.lang.IllegalArgumentException: You must specify at least 1 executor!


---

* [SPARK-6967](https://issues.apache.org/jira/browse/SPARK-6967) | *Blocker* | **Internal DateType not handled correctly in caching**

From the user list.  It looks like data is not implemented correctly in in-memory caching.  We should also check the JDBC datasource support for date.

{code}
Stack trace of an exception being reported since upgrade to 1.3.0:
java.lang.ClassCastException: java.sql.Date cannot be cast to
java.lang.Integer
        at scala.runtime.BoxesRunTime.unboxToInt(BoxesRunTime.java:105)
~[scala-library-2.11.6.jar:na]
        at
org.apache.spark.sql.catalyst.expressions.GenericRow.getInt(rows.scala:83)
~[spark-catalyst\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.IntColumnStats.gatherStats(ColumnStats.scala:191)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.NullableColumnBuilder$class.appendFrom(NullableColumnBuilder.scala:56)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.NativeColumnBuilder.org$apache$spark$sql$columnar$compression$CompressibleColumnBuilder$$super$appendFrom(ColumnBuilder.scala:87)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.compression.CompressibleColumnBuilder$class.appendFrom(CompressibleColumnBuilder.scala:78)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.NativeColumnBuilder.appendFrom(ColumnBuilder.scala:87)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
org.apache.spark.sql.columnar.InMemoryRelation$$anonfun$3$$anon$1.next(InMemoryColumnarTableScan.scala:135)
~[spark-sql\_2.11-1.3.0.jar:1.3.0]
        at
{code}


---

* [SPARK-6954](https://issues.apache.org/jira/browse/SPARK-6954) | *Major* | **ExecutorAllocationManager can end up requesting a negative number of executors**

I have a simple test case for dynamic allocation on YARN that fails with the following stack trace-
{code}
15/04/16 00:52:14 ERROR Utils: Uncaught exception in thread spark-dynamic-executor-allocation-0
java.lang.IllegalArgumentException: Attempted to request a negative number of executor(s) -21 from the cluster manager. Please specify a positive number!
	at org.apache.spark.scheduler.cluster.CoarseGrainedSchedulerBackend.requestTotalExecutors(CoarseGrainedSchedulerBackend.scala:338)
	at org.apache.spark.SparkContext.requestTotalExecutors(SparkContext.scala:1137)
	at org.apache.spark.ExecutorAllocationManager.addExecutors(ExecutorAllocationManager.scala:294)
	at org.apache.spark.ExecutorAllocationManager.addOrCancelExecutorRequests(ExecutorAllocationManager.scala:263)
	at org.apache.spark.ExecutorAllocationManager.org$apache$spark$ExecutorAllocationManager$$schedule(ExecutorAllocationManager.scala:230)
	at org.apache.spark.ExecutorAllocationManager$$anon$1$$anonfun$run$1.apply$mcV$sp(ExecutorAllocationManager.scala:189)
	at org.apache.spark.ExecutorAllocationManager$$anon$1$$anonfun$run$1.apply(ExecutorAllocationManager.scala:189)
	at org.apache.spark.ExecutorAllocationManager$$anon$1$$anonfun$run$1.apply(ExecutorAllocationManager.scala:189)
	at org.apache.spark.util.Utils$.logUncaughtExceptions(Utils.scala:1618)
	at org.apache.spark.ExecutorAllocationManager$$anon$1.run(ExecutorAllocationManager.scala:189)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.runAndReset(FutureTask.java:304)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.access$301(ScheduledThreadPoolExecutor.java:178)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:293)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}
My test is as follows-
# Start spark-shell with a single executor.
# Run a {{select count(\*)}} query. The number of executors rises as input size is non-trivial.
# After the job finishes, the number of  executors falls as most of them become idle.
# Rerun the same query again, and the request to add executors fails with the above error. In fact, the job itself continues to run with whatever executors it already has, but it never gets more executors unless the shell is closed and restarted. 

In fact, this error only happens when I configure {{executorIdleTimeout}} very small. For eg, I can reproduce it with the following configs-
{code}
spark.dynamicAllocation.executorIdleTimeout     5
spark.dynamicAllocation.schedulerBacklogTimeout 5
{code}
Although I can simply increase {{executorIdleTimeout}} to something like 60 secs to avoid the error, I think this is still a bug to be fixed.

The root cause seems that {{numExecutorsPending}} accidentally becomes negative if executors are killed too aggressively (i.e. {{executorIdleTimeout}} is too small) because under that circumstance, the new target # of executors can be smaller than the current # of executors. When that happens, {{ExecutorAllocationManager}} ends up trying to add a negative number of executors, which throws an exception.


---

* [SPARK-6952](https://issues.apache.org/jira/browse/SPARK-6952) | *Minor* | **spark-daemon.sh PID reuse check fails on long classpath**

{{sbin/spark-daemon.sh}} uses {{ps -p "$TARGET\_PID" -o args=}} to figure out whether the process running with the expected PID is actually a Spark daemon. When running with a large classpath, the output of {{ps}} gets truncated and the check fails spuriously.

I think we should weaken the check to see if it's a java command (which is something we do in other parts of the script) rather than looking for the specific main class name. This means that SPARK-4832 might happen under a slightly broader range of circumstances (a *java* program happened to reuse the same PID), but it seems worthwhile compared to failing consistently with a large classpath.


---

* [SPARK-6905](https://issues.apache.org/jira/browse/SPARK-6905) | *Major* | **Upgrade Snappy Java to 1.1.1.7 to fix bug that resulted in worse compression**

We should upgrade our {{snappy-java}} dependency to 1.1.1.7 in order to include a fix for a bug that resulted in worse compression (see https://github.com/xerial/snappy-java/issues/100).  I believe that this may partially fix SPARK-5081, an issue where the size of shuffle data increased from Spark 1.1.x to 1.2.0.


---

* [SPARK-6886](https://issues.apache.org/jira/browse/SPARK-6886) | *Blocker* | **Big closure in PySpark will fail during shuffle**

Reported by  beifei.zhou <beifei.zhou at ximalaya.com>: 

I am using spark to process bid datasets. However, there is always problem when executing reduceByKey on a large dataset, whereas with a smaller dataset.  May I asked you how could I solve this issue?

The error is always like this:
{code}
15/04/09 11:27:46 ERROR Executor: Exception in task 3.0 in stage 1.0 (TID 5)
org.apache.spark.api.python.PythonException: Traceback (most recent call last):
  File "/Users/nali/Softwares/spark/python/pyspark/worker.py", line 90, in main
    command = pickleSer.loads(command.value)
  File "/Users/nali/Softwares/spark/python/pyspark/broadcast.py", line 106, in value
    self.\_value = self.load(self.\_path)
  File "/Users/nali/Softwares/spark/python/pyspark/broadcast.py", line 87, in load
    with open(path, 'rb', 1 << 20) as f:
IOError: [Errno 2] No such file or directory: '/private/var/folders/\_x/n59vb1b54pl96lvldz2lr\_v40000gn/T/spark-37d8ecbc-9ac9-4aa2-be23-12823f4cd1ed/pyspark-1e3d5904-a5b6-4222-a146-91bfdb4a33a7/tmp8XMhgG'
{code}

Here I attach my code:
{code}
import codecs
from pyspark import SparkContext, SparkConf
from operator import add 
import operator
from pyspark.storagelevel import StorageLevel

def combine\_dict(a,b):
    a.update(b)
    return a
conf = SparkConf()
sc = SparkContext(appName = "tag")
al\_tag\_dict = sc.textFile('albumtag.txt').map(lambda x: x.split(',')).map(lambda x: {x[0]: x[1:]}).reduce(lambda a, b: combine\_dict(a,b))

result = sc.textFile('uidAlbumscore.txt')\
        .map(lambda x: x.split(','))\
        .filter(lambda x: x[1] in al\_tag\_dict.keys())\
        .map(lambda x: (x[0], al\_tag\_dict[x[1]], float(x[2])))\
        .map(lambda x: map(lambda a: ((x[0], a), x[2]), x[1]))\
        .flatMap(lambda x: x)\ 
        .map(lambda x: (str(x[0][0]), x[1]))\
        .reduceByKey(add)\
#        .map(lambda x: x[0][0]+','+x[0][1]+','+str(x[1])+'\n')\
#        .reduce(add)
#codecs.open('tag\_score.txt','w','utf-8').write(result)
print result.first()
{code}


---

* [SPARK-6878](https://issues.apache.org/jira/browse/SPARK-6878) | *Minor* | **Sum on empty RDD fails with exception**

{{Sum}} on an empty RDD throws an exception. Expected result is {{0}}.

A simple fix is the replace

{noformat}
class DoubleRDDFunctions {
  def sum(): Double = self.reduce(\_ + \_)
{noformat} 

with:

{noformat}
class DoubleRDDFunctions {
  def sum(): Double = self.aggregate(0.0)(\_ + \_, \_ + \_)
{noformat}


---

* [SPARK-6868](https://issues.apache.org/jira/browse/SPARK-6868) | *Minor* | **Container link broken on Spark UI Executors page when YARN is set to HTTPS\_ONLY**

The stdout and stderr log links on the executor page will use the http:// prefix even if the node manager does not support http and only https via setting yarn.http.policy=HTTPS\_ONLY.

Unfortunately the unencrypted http link in that case does not return a 404 but a binary file containing random binary chars. This causes a lot of confusion for the end user since it seems like the log file exists and is just filled with garbage. (see attached screenshot)

The fix is to prefix container log links with https:// instead of http:// if yarn.http.policy=HTTPS\_ONLY. YARN's job page has this exact logic as seen here: https://github.com/apache/hadoop/blob/e1109fb65608a668cd53dc324dadc6f63a74eeb9/hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-app/src/main/java/org/apache/hadoop/mapreduce/v2/app/webapp/JobBlock.java#L108


---

* [SPARK-6860](https://issues.apache.org/jira/browse/SPARK-6860) | *Minor* | **Fix the possible inconsistency of StreamingPage**

Because "StreamingPage.render" doesn't hold the "listener" lock when generating the content, the different parts of content may have some inconsistent values if "listener" updates its status at the same time. And it will confuse people.

We should add "listener.synchronized" to make sure we have a consistent view of StreamingJobProgressListener when creating the content.


---

* [SPARK-6781](https://issues.apache.org/jira/browse/SPARK-6781) | *Critical* | **sqlCtx -\> sqlContext in pyspark shell**

We should be consistent across languages in the default names of things we add to the shells.


---

* [SPARK-6767](https://issues.apache.org/jira/browse/SPARK-6767) | *Trivial* | **Documentation error in Spark SQL Readme file**

Error in Spark SQL Documentation file . The sample script for SQL DSL   throwing below error

scala> query.where('key > 30).select(avg('key)).collect()
<console>:43: error: value > is not a member of Symbol
              query.where('key > 30).select(avg('key)).collect()


---

* [SPARK-6766](https://issues.apache.org/jira/browse/SPARK-6766) | *Major* | **StreamingListenerBatchSubmitted isn't sent and StreamingListenerBatchStarted.batchInfo.processingStartTime is a wrong value**

1. Now there is no place posting StreamingListenerBatchSubmitted. It should be post when JobSet is submitted.
2. Call JobSet.handleJobStart before posting StreamingListenerBatchStarted will set StreamingListenerBatchStarted.batchInfo.processingStartTime to None, which should have been set to a correct value.


---

* [SPARK-6753](https://issues.apache.org/jira/browse/SPARK-6753) | *Minor* | **Unit test for SPARK-3426 (in ShuffleSuite) doesn't correctly clone the SparkConf**

As a result, that test always uses the default shuffle settings, rather than using the shuffle manager / other settings set by tests that extend ShuffleSuite.


---

* [SPARK-6636](https://issues.apache.org/jira/browse/SPARK-6636) | *Minor* | **Use public DNS hostname everywhere in spark\_ec2.py**

The spark\_ec2.py script uses public\_dns\_name everywhere in the script except for testing ssh availability, which is done using the public ip address of the instances. This breaks the script for users who are deploying the cluster with a private-network-only security group. The fix is to use public\_dns\_name in the remaining place.

I am submitting a pull-request alongside this bug report.


---

* [SPARK-6506](https://issues.apache.org/jira/browse/SPARK-6506) | *Major* | **python support yarn cluster mode requires SPARK\_HOME to be set**

We added support for python running in yarn cluster mode in https://issues.apache.org/jira/browse/SPARK-5173, but it requires that SPARK\_HOME be set in the environment variables for application master and executor.  It doesn't have to be set to anything real but it fails if its not set.  See the command at the end of: https://github.com/apache/spark/pull/3976


---

* [SPARK-6343](https://issues.apache.org/jira/browse/SPARK-6343) | *Minor* | **Make doc more explicit regarding network connectivity requirements**

As a new user of Spark, I read through the official documentation before attempting to stand-up my own cluster and write my own driver application. But only after attempting to run my app remotely against my cluster did I realize that full network connectivity (layer 3) is necessary between my driver program and worker nodes (i.e., my driver was *listening* for connections from my workers).

I returned to the documentation to see how I had missed this requirement. On a second read-through, I saw that the doc hints at it in a few places (e.g., [driver config|http://spark.apache.org/docs/1.2.0/configuration.html#networking], [submitting applications suggestion|http://spark.apache.org/docs/1.2.0/submitting-applications.html], [cluster overview|http://spark.apache.org/docs/1.2.0/cluster-overview.html])  but never outright says it.

I think it would help would-be users better understand how Spark works to state the network connectivity requirements right up-front in the overview section of the doc. I suggest revising the diagram and accompanying text found on the [overview page|http://spark.apache.org/docs/1.2.0/cluster-overview.html]:

!http://spark.apache.org/docs/1.2.0/img/cluster-overview.png!

so that it depicts at least the directionality of the network connections initiated (perhaps like so):

!http://i.imgur.com/2dqGbCr.png!

and states that the driver must listen for and accept connections from other Spark components on a variety of ports.

Please treat my diagram and text as strawmen: I expect more experienced Spark users and developers will have better ideas on how to convey these requirements.


---

* [SPARK-6205](https://issues.apache.org/jira/browse/SPARK-6205) | *Minor* | **UISeleniumSuite fails for Hadoop 2.x test with NoClassDefFoundError**

{code}
mvn -DskipTests -Pyarn -Phive -Phadoop-2.4 -Dhadoop.version=2.6.0 clean install
mvn -Pyarn -Phive -Phadoop-2.4 -Dhadoop.version=2.6.0 test -DwildcardSuites=org.apache.spark.ui.UISeleniumSuite -Dtest=none -pl core/ 
{code}

will produce:

{code}
UISeleniumSuite:
*** RUN ABORTED ***
  java.lang.NoClassDefFoundError: org/w3c/dom/ElementTraversal
  ...
{code}

It doesn't seem to happen without the various profiles set above.

The fix is simple, although sounds weird; Selenium's dependency on {{xml-apis:xml-apis}} must be manually included in core's test dependencies. This probably has something to do with Hadoop 2 vs 1 dependency changes and the fact that Maven test deps aren't transitive, AFAIK.

PR coming...


---

* [SPARK-5969](https://issues.apache.org/jira/browse/SPARK-5969) | *Major* | **The pyspark.rdd.sortByKey always fills only two partitions when ascending=False.**

The pyspark.rdd.sortByKey always fills only two partitions when ascending=False -- the first one and the last one.

Simple example sorting numbers 0..999 into 10 partitions in descending order:
{code}
sc.parallelize(range(1000)).keyBy(lambda x:x).sortByKey(ascending=False, numPartitions=10).glom().map(len).collect()
{code}
returns the following partition sizes:
{code}
[469, 0, 0, 0, 0, 0, 0, 0, 0, 531]
{code}

When ascending=True, all works as expected:
{code}
sc.parallelize(range(1000)).keyBy(lambda x:x).sortByKey(ascending=True, numPartitions=10).glom().map(len).collect()
Out: [116, 96, 100, 87, 132, 101, 101, 95, 87, 85]
{code}

The problem is caused by the following line 565 in rdd.py:
{code}
        samples = sorted(samples, reverse=(not ascending), key=keyfunc)
{code}
That sorts the samples descending if ascending=False. Nevertheless samples should always be in ascending order, because it is (after subsampling to variable bounds) used in a bisect\_left call:
{code}
        def rangePartitioner(k):
            p = bisect.bisect\_left(bounds, keyfunc(k))
            if ascending:
                return p
            else:
                return numPartitions - 1 - p
{code}

As you can see, rangePartitioner already handles the ascending=False by itself, so the fix for the whole problem is really trivial: just change line rdd.py:565 to
{{samples = sorted(samples, -reverse=(not ascending),- key=keyfunc)}}


---

* [SPARK-5634](https://issues.apache.org/jira/browse/SPARK-5634) | *Minor* | **History server shows misleading message when there are no incomplete apps**

If you go to the history server, and click on "Show incomplete applications", but there are no incomplete applications, you get a misleading message:

{noformat}
No completed applications found!

Did you specify the correct logging directory? (etc etc)
{noformat}

That's the same message used when no complete applications are found; it should probably be tweaked for the incomplete apps case.


---

* [SPARK-5529](https://issues.apache.org/jira/browse/SPARK-5529) | *Major* | **BlockManager heartbeat expiration does not kill executor**

When I run a spark job, one executor is hold, after 120s, blockManager is removed by driver, but after half an hour before the executor is remove by  driver. Here is the log:
{code}
15/02/02 14:58:43 WARN BlockManagerMasterActor: Removing BlockManager BlockManagerId(1, 10.215.143.14, 47234) with no recent heart beats: 147198ms exceeds 120000ms
....
15/02/02 15:26:55 ERROR YarnClientClusterScheduler: Lost executor 1 on 10.215.143.14: remote Akka client disassociated
15/02/02 15:26:55 WARN ReliableDeliverySupervisor: Association with remote system [akka.tcp://sparkExecutor@10.215.143.14:46182] has failed, address is now gated for [5000] ms. Reason is: [Disassociated].
15/02/02 15:26:55 INFO TaskSetManager: Re-queueing tasks for 1 from TaskSet 0.0
15/02/02 15:26:55 WARN TaskSetManager: Lost task 3.0 in stage 0.0 (TID 3, 10.215.143.14): ExecutorLostFailure (executor 1 lost)
15/02/02 15:26:55 ERROR YarnClientSchedulerBackend: Asked to remove non-existent executor 1
15/02/02 15:26:55 INFO DAGScheduler: Executor lost: 1 (epoch 0)
15/02/02 15:26:55 INFO BlockManagerMasterActor: Trying to remove executor 1 from BlockManagerMaster.
15/02/02 15:26:55 INFO BlockManagerMaster: Removed 1 successfully in removeExecutor
{code}


---

* [SPARK-5456](https://issues.apache.org/jira/browse/SPARK-5456) | *Blocker* | **Decimal Type comparison issue**

Not quite able to figure this out but here is a junit test to reproduce this, in JavaAPISuite.java

{code:title=DecimalBug.java}
  @Test
  public void decimalQueryTest() {
    List<Row> decimalTable = new ArrayList<Row>();
    decimalTable.add(RowFactory.create(new BigDecimal("1"), new BigDecimal("2")));
    decimalTable.add(RowFactory.create(new BigDecimal("3"), new BigDecimal("4")));
    JavaRDD<Row> rows = sc.parallelize(decimalTable);
    List<StructField> fields = new ArrayList<StructField>(7);
    fields.add(DataTypes.createStructField("a", DataTypes.createDecimalType(), true));
    fields.add(DataTypes.createStructField("b", DataTypes.createDecimalType(), true));
    sqlContext.applySchema(rows.rdd(), DataTypes.createStructType(fields)).registerTempTable("foo");
    Assert.assertEquals(sqlContext.sql("select * from foo where a > 0").collectAsList(), decimalTable);

  }
{code}

Fails with
java.lang.ClassCastException: java.math.BigDecimal cannot be cast to org.apache.spark.sql.types.Decimal


---

* [SPARK-5412](https://issues.apache.org/jira/browse/SPARK-5412) | *Major* | **Cannot bind Master to a specific hostname as per the documentation**

Documentation on http://spark.apache.org/docs/latest/spark-standalone.html indicates:

{quote}
You can start a standalone master server by executing:
./sbin/start-master.sh
...
the following configuration options can be passed to the master and worker:
...
-h HOST, --host HOST	Hostname to listen on
{quote}

The "\-h" or "--host" parameter actually doesn't work with the start-master.sh script. Instead, one has to set the "SPARK\_MASTER\_IP" variable prior to executing the script.

Either the script or the documentation should be updated.


---

* [SPARK-5220](https://issues.apache.org/jira/browse/SPARK-5220) | *Major* | **keepPushingBlocks in BlockGenerator terminated when an exception occurs, which causes the block pushing thread to terminate and blocks receiver**

I am running a Spark streaming application with ReliableKafkaReceiver. It uses BlockGenerator to push blocks to BlockManager. However, writing WALs to HDFS may time out that causes keepPushingBlocks in BlockGenerator to terminate.

15/01/12 19:07:06 ERROR receiver.BlockGenerator: Error in block pushing thread
java.util.concurrent.TimeoutException: Futures timed out after [30 seconds]
        at scala.concurrent.impl.Promise$DefaultPromise.ready(Promise.scala:219)
        at scala.concurrent.impl.Promise$DefaultPromise.result(Promise.scala:223)
        at scala.concurrent.Await$$anonfun$result$1.apply(package.scala:107)
        at scala.concurrent.BlockContext$DefaultBlockContext$.blockOn(BlockContext.scala:53)
        at scala.concurrent.Await$.result(package.scala:107)
        at org.apache.spark.streaming.receiver.WriteAheadLogBasedBlockHandler.storeBlock(ReceivedBlockHandler.scala:176)
        at org.apache.spark.streaming.receiver.ReceiverSupervisorImpl.pushAndReportBlock(ReceiverSupervisorImpl.scala:160)
        at org.apache.spark.streaming.receiver.ReceiverSupervisorImpl.pushArrayBuffer(ReceiverSupervisorImpl.scala:126)
        at org.apache.spark.streaming.receiver.Receiver.store(Receiver.scala:124)
        at org.apache.spark.streaming.kafka.ReliableKafkaReceiver.org$apache$spark$streaming$kafka$ReliableKafkaReceiver$$storeBlockAndCommitOffset(ReliableKafkaReceiver.scala:207)
        at org.apache.spark.streaming.kafka.ReliableKafkaReceiver$GeneratedBlockHandler.onPushBlock(ReliableKafkaReceiver.scala:275)
        at org.apache.spark.streaming.receiver.BlockGenerator.pushBlock(BlockGenerator.scala:181)
        at org.apache.spark.streaming.receiver.BlockGenerator.org$apache$spark$streaming$receiver$BlockGenerator$$keepPushingBlocks(BlockGenerator.scala:154)
        at org.apache.spark.streaming.receiver.BlockGenerator$$anon$1.run(BlockGenerator.scala:86)

Then the block pushing thread is done and no subsequent blocks can be pushed into blockManager. In turn this blocks receiver from receiving new data.

So when running my app and the TimeoutException happens, the ReliableKafkaReceiver stays in ACTIVE status but doesn't do anything at all. The application rogues.


---

* [SPARK-5074](https://issues.apache.org/jira/browse/SPARK-5074) | *Critical* | **Flaky test: o.a.s.scheduler.DAGSchedulerSuite**

fix the following non-deterministic test in org.apache.spark.scheduler.DAGSchedulerSuite

{noformat}
[info] DAGSchedulerSuite:
[info] - [SPARK-3353] parent stage should have lower stage id *** FAILED *** (27 milliseconds)
[info]   1 did not equal 2 (DAGSchedulerSuite.scala:242)
[info]   org.scalatest.exceptions.TestFailedException:
[info]   at org.scalatest.Assertions$class.newAssertionFailedException(Assertions.scala:500)
[info]   at org.scalatest.FunSuite.newAssertionFailedException(FunSuite.scala:1555)
[info]   at org.scalatest.Assertions$AssertionsHelper.macroAssert(Assertions.scala:466)
[info]   at org.apache.spark.scheduler.DAGSchedulerSuite$$anonfun$2.apply$mcV$sp(DAGSchedulerSuite.scala:242)
[info]   at org.apache.spark.scheduler.DAGSchedulerSuite$$anonfun$2.apply(DAGSchedulerSuite.scala:239)
[info]   at org.apache.spark.scheduler.DAGSchedulerSuite$$anonfun$2.apply(DAGSchedulerSuite.scala:239)
[info]   at org.scalatest.Transformer$$anonfun$apply$1.apply$mcV$sp(Transformer.scala:22)
[info]   at org.scalatest.OutcomeOf$class.outcomeOf(OutcomeOf.scala:85)
[info]   at org.scalatest.OutcomeOf$.outcomeOf(OutcomeOf.scala:104)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:22)
[info]   at org.scalatest.Transformer.apply(Transformer.scala:20)
[info]   at org.scalatest.FunSuiteLike$$anon$1.apply(FunSuiteLike.scala:166)
[info]   at org.scalatest.Suite$class.withFixture(Suite.scala:1122)
[info]   at org.scalatest.FunSuite.withFixture(FunSuite.scala:1555)
[info]   at org.scalatest.FunSuiteLike$class.invokeWithFixture$1(FunSuiteLike.scala:163)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.FunSuiteLike$$anonfun$runTest$1.apply(FunSuiteLike.scala:175)
[info]   at org.scalatest.SuperEngine.runTestImpl(Engine.scala:306)
[info]   at org.scalatest.FunSuiteLike$class.runTest(FunSuiteLike.scala:175)
[info]   at org.apache.spark.scheduler.DAGSchedulerSuite.org$scalatest$BeforeAndAfter$$super$runTest(DAGSchedulerSuite.scala:60)
{noformat}


---

* [SPARK-4315](https://issues.apache.org/jira/browse/SPARK-4315) | *Major* | **PySpark pickling of pyspark.sql.Row objects is extremely inefficient**

Working with an RDD of pyspark.sql.Row objects, created by reading a file with SQLContext in a local PySpark context.

Operations on the RDD, such as: data.groupBy(lambda x: x.field\_name) are extremely slow (more than 10x slower than an equivalent Scala/Spark implementation). Obviously I expected it to be somewhat slower, but I did a bit of digging given the difference was so huge.

Luckily it's fairly easy to add profiling to the Python workers. I see that the vast majority of time is spent in:

spark-1.1.0-bin-cdh4/python/pyspark/sql.py:757(\_restore\_object)

It seems that this line attempts to accelerate pickling of Rows with the use of a cache. Some debugging reveals that this cache becomes quite big (100s of entries). Disabling the cache by adding:

return \_create\_cls(dataType)(obj)

as the first line of \_restore\_object made my query run 5x faster. Implying that the caching is not providing the desired acceleration...


---

* [SPARK-2018](https://issues.apache.org/jira/browse/SPARK-2018) | *Major* | **Big-Endian (IBM Power7)  Spark Serialization issue**

We have an application run on Spark on Power7 System .
But we meet an important issue about serialization.
The example HdfsWordCount can meet the problem.
./bin/run-example      org.apache.spark.examples.streaming.HdfsWordCount localdir
We used Power7 (Big-Endian arch) and Redhat  6.4.
Big-Endian  is the main cause since the example ran successfully in another Power-based Little Endian setup.

here is the exception stack and log:

Spark Executor Command: "/opt/ibm/java-ppc64-70//bin/java" "-cp" "/home/test1/spark-1.0.0-bin-hadoop2/lib::/home/test1/src/spark-1.0.0-bin-hadoop2/conf:/home/test1/src/spark-1.0.0-bin-hadoop2/lib/spark-assembly-1.0.0-hadoop2.2.0.jar:/home/test1/src/spark-1.0.0-bin-hadoop2/lib/datanucleus-rdbms-3.2.1.jar:/home/test1/src/spark-1.0.0-bin-hadoop2/lib/datanucleus-api-jdo-3.2.1.jar:/home/test1/src/spark-1.0.0-bin-hadoop2/lib/datanucleus-core-3.2.2.jar:/home/test1/src/hadoop-2.3.0-cdh5.0.0/etc/hadoop/:/home/test1/src/hadoop-2.3.0-cdh5.0.0/etc/hadoop/" "-XX:MaxPermSize=128m"  "-Xdebug" "-Xrunjdwp:transport=dt\_socket,address=99999,server=y,suspend=n" "-Xms512M" "-Xmx512M" "org.apache.spark.executor.CoarseGrainedExecutorBackend" "akka.tcp://spark@9.186.105.141:60253/user/CoarseGrainedScheduler" "2" "p7hvs7br16" "4" "akka.tcp://sparkWorker@p7hvs7br16:59240/user/Worker" "app-20140604023054-0000"
========================================

14/06/04 02:31:20 WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
14/06/04 02:31:21 INFO spark.SecurityManager: Changing view acls to: test1,yifeng
14/06/04 02:31:21 INFO spark.SecurityManager: SecurityManager: authentication disabled; ui acls disabled; users with view permissions: Set(test1, yifeng)
14/06/04 02:31:22 INFO slf4j.Slf4jLogger: Slf4jLogger started
14/06/04 02:31:22 INFO Remoting: Starting remoting
14/06/04 02:31:22 INFO Remoting: Remoting started; listening on addresses :[akka.tcp://sparkExecutor@p7hvs7br16:39658]
14/06/04 02:31:22 INFO Remoting: Remoting now listens on addresses: [akka.tcp://sparkExecutor@p7hvs7br16:39658]
14/06/04 02:31:22 INFO executor.CoarseGrainedExecutorBackend: Connecting to driver: akka.tcp://spark@9.186.105.141:60253/user/CoarseGrainedScheduler
14/06/04 02:31:22 INFO worker.WorkerWatcher: Connecting to worker akka.tcp://sparkWorker@p7hvs7br16:59240/user/Worker
14/06/04 02:31:23 INFO worker.WorkerWatcher: Successfully connected to akka.tcp://sparkWorker@p7hvs7br16:59240/user/Worker
14/06/04 02:31:24 INFO executor.CoarseGrainedExecutorBackend: Successfully registered with driver
14/06/04 02:31:24 INFO spark.SecurityManager: Changing view acls to: test1,yifeng
14/06/04 02:31:24 INFO spark.SecurityManager: SecurityManager: authentication disabled; ui acls disabled; users with view permissions: Set(test1, yifeng)
14/06/04 02:31:24 INFO slf4j.Slf4jLogger: Slf4jLogger started
14/06/04 02:31:24 INFO Remoting: Starting remoting
14/06/04 02:31:24 INFO Remoting: Remoting started; listening on addresses :[akka.tcp://spark@p7hvs7br16:58990]
14/06/04 02:31:24 INFO Remoting: Remoting now listens on addresses: [akka.tcp://spark@p7hvs7br16:58990]
14/06/04 02:31:24 INFO spark.SparkEnv: Connecting to MapOutputTracker: akka.tcp://spark@9.186.105.141:60253/user/MapOutputTracker
14/06/04 02:31:25 INFO spark.SparkEnv: Connecting to BlockManagerMaster: akka.tcp://spark@9.186.105.141:60253/user/BlockManagerMaster
14/06/04 02:31:25 INFO storage.DiskBlockManager: Created local directory at /tmp/spark-local-20140604023125-3f61
14/06/04 02:31:25 INFO storage.MemoryStore: MemoryStore started with capacity 307.2 MB.
14/06/04 02:31:25 INFO network.ConnectionManager: Bound socket to port 39041 with id = ConnectionManagerId(p7hvs7br16,39041)
14/06/04 02:31:25 INFO storage.BlockManagerMaster: Trying to register BlockManager
14/06/04 02:31:25 INFO storage.BlockManagerMaster: Registered BlockManager
14/06/04 02:31:25 INFO spark.HttpFileServer: HTTP File server directory is /tmp/spark-7bce4e43-2833-4666-93af-bd97c327497b
14/06/04 02:31:25 INFO spark.HttpServer: Starting HTTP Server
14/06/04 02:31:25 INFO server.Server: jetty-8.y.z-SNAPSHOT
14/06/04 02:31:26 INFO server.AbstractConnector: Started SocketConnector@0.0.0.0:39958
14/06/04 02:31:26 INFO executor.CoarseGrainedExecutorBackend: Got assigned task 2
14/06/04 02:31:26 INFO executor.Executor: Running task ID 2
14/06/04 02:31:26 ERROR executor.Executor: Exception in task ID 2
java.io.InvalidClassException: scala.reflect.ClassTag$$anon$1; local class incompatible: stream classdesc serialVersionUID = -8102093212602380348, local class serialVersionUID = -4937928798201944954
        at java.io.ObjectStreamClass.initNonProxy(ObjectStreamClass.java:678)
        at java.io.ObjectInputStream.readNonProxyDesc(ObjectInputStream.java:1678)
        at java.io.ObjectInputStream.readClassDesc(ObjectInputStream.java:1573)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1827)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at scala.collection.immutable.$colon$colon.readObject(List.scala:362)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:76)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:607)
        at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1078)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1949)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)

at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at scala.collection.immutable.$colon$colon.readObject(List.scala:362)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:76)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:607)
        at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1078)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1949)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at scala.collection.immutable.$colon$colon.readObject(List.scala:362)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:76)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:607)
        at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1078)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1949)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at scala.collection.immutable.$colon$colon.readObject(List.scala:362)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:76)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:607)
        at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1078)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1949)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at scala.collection.immutable.$colon$colon.readObject(List.scala:362)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:76)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:607)

   at java.lang.reflect.Method.invoke(Method.java:607)
        at java.io.ObjectStreamClass.invokeReadObject(ObjectStreamClass.java:1078)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1949)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.defaultReadFields(ObjectInputStream.java:2047)
        at java.io.ObjectInputStream.readSerialData(ObjectInputStream.java:1971)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1854)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at org.apache.spark.serializer.JavaDeserializationStream.readObject(JavaSerializer.scala:63)
        at org.apache.spark.scheduler.ResultTask$.deserializeInfo(ResultTask.scala:61)
        at org.apache.spark.scheduler.ResultTask.readExternal(ResultTask.scala:141)
        at java.io.ObjectInputStream.readExternalData(ObjectInputStream.java:1893)
        at java.io.ObjectInputStream.readOrdinaryObject(ObjectInputStream.java:1852)
        at java.io.ObjectInputStream.readObject0(ObjectInputStream.java:1406)
        at java.io.ObjectInputStream.readObject(ObjectInputStream.java:409)
        at org.apache.spark.serializer.JavaDeserializationStream.readObject(JavaSerializer.scala:63)
        at org.apache.spark.serializer.JavaSerializerInstance.deserialize(JavaSerializer.scala:85)
        at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:169)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:781)
14/06/04 02:31:26 ERROR executor.CoarseGrainedExecutorBackend: Driver Disassociated [akka.tcp://sparkExecutor@p7hvs7br16:39658] -> [akka.tcp://spark@9.186.105.141:60253] disassociated! Shutting down.



