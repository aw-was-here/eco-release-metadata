
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

* [SPARK-8639](https://issues.apache.org/jira/browse/SPARK-8639) | *Trivial* | **Instructions for executing jekyll in docs/README.md could be slightly more clear, typo in docs/api.md**

In docs/README.md, the text states around line 31

Execute 'jekyll' from the 'docs/' directory. Compiling the site with Jekyll will create a directory called '\_site' containing index.html as well as the rest of the compiled files.

It might be more clear if we said

Execute 'jekyll build' from the 'docs/' directory to compile the site. Compiling the site with Jekyll will create a directory called '\_site' containing index.html as well as the rest of the compiled files.



In docs/api.md: "Here you can API docs for Spark and its submodules."
should be something like: "Here you can read API docs for Spark and its submodules."


---

* [SPARK-8637](https://issues.apache.org/jira/browse/SPARK-8637) | *Blocker* | **Packages argument is wrong in sparkR.init**

This was a bug introduced in https://github.com/apache/spark/pull/6928 and affects branch-1.4 and master branch


---

* [SPARK-8604](https://issues.apache.org/jira/browse/SPARK-8604) | *Major* | **Parquet data source doesn't write summary file while doing appending**

Currently, Parquet and ORC data sources don't set their output format class, as we override the output committer in Spark SQL. However, SPARK-8678 ignores user defined output committer class while doing appending to avoid potential issues brought by direct output committers (e.g. {{DirectParquetOutputCommitter}}). This makes both of these data sources fallback to the default output committer retrieved from {{TextOutputFormat}}, which is {{FileOutputCommitter}}. For ORC, it's totally fine since ORC itself just uses {{FileOutputCommitter}}. But for Parquet, {{ParquetOutputCommitter}} also writes the summary files while committing the job.


---

* [SPARK-8574](https://issues.apache.org/jira/browse/SPARK-8574) | *Major* | **org/apache/spark/unsafe doesn't honor the java source/target versions**

I built spark using jdk8 and the default source compatibility in the pom is 1.6 so I expected to be able to run Spark with jdk7, but if fails because the unsafe code doesn't seem to be honoring the source/target compatibility options set in the top level pom.

Exception in thread "main" java.lang.UnsupportedClassVersionError: org/apache/spark/unsafe/memory/MemoryAllocator : Unsupported major.minor version 52.0
        at java.lang.ClassLoader.defineClass1(Native Method)
        at java.lang.ClassLoader.defineClass(ClassLoader.java:791)
        at java.security.SecureClassLoader.defineClass(SecureClassLoader.java:142)
        at java.net.URLClassLoader.defineClass(URLClassLoader.java:449)
        at java.net.URLClassLoader.access$100(URLClassLoader.java:71)
        at java.net.URLClassLoader$1.run(URLClassLoader.java:361)
        at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
        at java.security.AccessController.doPrivileged(Native Method)
        at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:423)
        at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:356)
        at org.apache.spark.SparkEnv$.create(SparkEnv.scala:392)
        at org.apache.spark.SparkEnv$.createExecutorEnv(SparkEnv.scala:211)
        at org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$run$1.apply$mcV$sp(CoarseGrainedExecutorBackend.scala:180)
        at org.apache.spark.deploy.SparkHadoopUtil.runAsSparkUser(SparkHadoopUtil.scala:74)
        at org.apache.spark.executor.CoarseGrainedExecutorBackend$.run(CoarseGrainedExecutorBackend.scala:146)
        at org.apache.spark.executor.CoarseGrainedExecutorBackend$.main(CoarseGrainedExecutorBackend.scala:245)
        at org.apache.spark.executor.CoarseGrainedExecutorBackend.main(CoarseGrainedExecutorBackend.scala)
15/06/23 19:48:24 INFO storage.DiskBlockManager: Shutdown hook called


---

* [SPARK-8568](https://issues.apache.org/jira/browse/SPARK-8568) | *Critical* | **Prevent accidental use of "and" and "or" to build invalid expressions in Python**

In Spark DataFrames (and in Pandas as well), the correct way to construct a conjunctive expression is to use the bitwise and operator, i.e.: "(x > 5) & (y > 6)". 

However, a lot of users assume that they should be using the Python "and" keyword, i.e. doing "x > 5 and y > 6". Python's boolean evaluation logic converts "x > 5 and y > 6" into just "y > 6" (since "x > 5" is not None). This is super confusing & error prone.

We should override \_\_bool\_\_ and \_\_nonzero\_\_ for Column to throw an exception if users call "and" and "or" on Column expressions.

Background: see this blog post http://www.nodalpoint.com/unexpected-behavior-of-spark-dataframe-filter-method/


---

* [SPARK-8548](https://issues.apache.org/jira/browse/SPARK-8548) | *Major* | **Remove the trailing whitespaces from the SparkR files**

On the {{lint-r}}'s advice, remove the trailing whiltespace from the SparkR files.


---

* [SPARK-8532](https://issues.apache.org/jira/browse/SPARK-8532) | *Blocker* | **In Python's DataFrameWriter, save/saveAsTable/json/parquet/jdbc always override mode**

Although users can use {{df.write.mode("overwrite")}} to specify the mode, when save/saveAsTable/json/parquet/jdbc is called, this mode will be overridden. For example, the implementation of json method is 
{code}
def json(self, path, mode="error"):
  self.\_jwrite.mode(mode).json(path)
{code}
If users only call {{json("path")}}, the mode will be "error" instead of the mode specified in the mode method.


---

* [SPARK-8511](https://issues.apache.org/jira/browse/SPARK-8511) | *Major* | **Modify ML Python tests to remove saved models**

According to the reference of python, {{os.removedirs}} doesn't work if there are any files in the directory we want to remove.
https://docs.python.org/3/library/os.html#os.removedirs

Instead of that, using {{shutil.rmtree()}} would be better to remove a temporary directory to test for saving model.
https://github.com/apache/spark/blob/branch-1.4/python%2Fpyspark%2Fmllib%2Fregression.py#L137


---

* [SPARK-8506](https://issues.apache.org/jira/browse/SPARK-8506) | *Minor* | **SparkR does not provide an easy way to depend on Spark Packages when performing init from inside of R**

While packages can be specified when using the sparkR or sparkSubmit scripts, the programming guide tells people to create their spark context using the R shell + init. The init does have a parameter for jars but no parameter for packages. Setting the SPARKR\_SUBMIT\_ARGS overwrites some necessary information. I think a good solution would just be adding another field to the init function to allow people to specify packages in the same way as jars.


---

* [SPARK-8489](https://issues.apache.org/jira/browse/SPARK-8489) | *Critical* | **Add regression tests for SPARK-8470**

See SPARK-8470 for more detail. Basically the Spark Hive code silently overwrites the context class loader populated in SparkSubmit, resulting in certain classes missing when we do reflection in `SQLContext#createDataFrame`.

That issue is already resolved in https://github.com/apache/spark/pull/6891, but we should add a regression test for the specific manifestation of the bug in SPARK-8470.


---

* [SPARK-8483](https://issues.apache.org/jira/browse/SPARK-8483) | *Major* | **Remove commons-lang3 depedency from flume-sink**

flume-sink module uses only one method from commons-lang3. Since the build would become complex if we create an assembly and would likely make it more difficult for customers, let's just remove the dependency altogether.


---

* [SPARK-8468](https://issues.apache.org/jira/browse/SPARK-8468) | *Blocker* | **Cross-validation with RegressionEvaluator prefers higher RMSE**

Please correct me if I'm wrong, but RegressionEvaluator seems to implement the evaluate() method backwards. The interface expects higher return values from evaluate() to indicate better models. RegressionEvaluator returns RMSE by default - a value we should try to minimize.


---

* [SPARK-8462](https://issues.apache.org/jira/browse/SPARK-8462) | *Minor* | **Documentation fixes for Spark SQL**

This fixes various minor documentation issues on the Spark SQL page


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

* [SPARK-8446](https://issues.apache.org/jira/browse/SPARK-8446) | *Major* | **Add helper functions for testing physical SparkPlan operators**

SparkSQL has a nice {{QueryTest}} class for writing tests that run queries; I think we should add an analogous test utility for directly unit testing the physical SparkPlan operators.


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

* [SPARK-8358](https://issues.apache.org/jira/browse/SPARK-8358) | *Blocker* | **DataFrame explode with alias and * fails**

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

* [SPARK-8354](https://issues.apache.org/jira/browse/SPARK-8354) | *Major* | **Fix off-by-factor-of-8 error when allocating scratch space in UnsafeFixedWidthAggregationMap**

UnsafeFixedWidthAggregationMap contains an off-by-factor-of-8 error when allocating row conversion scratch space: we take a size requirement, measured in bytes, then allocate a long array of that size.  This means that we end up allocating 8x too much conversion space.


---

* [SPARK-8353](https://issues.apache.org/jira/browse/SPARK-8353) | *Major* | **Show anchor links when hovering over documentation headers**

When hovering over documentation headers, we should show clickable links that allow users to deep-link to specific sections of the documentation, similar to GitHub and Bootstrap docs.


---

* [SPARK-8343](https://issues.apache.org/jira/browse/SPARK-8343) | *Minor* | **Improve the Spark Streaming Guides**

Improve the Spark Streaming Guides by fixing broken links, rewording confusing sections, fixing typos, adding missing words, etc.


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

* [SPARK-8306](https://issues.apache.org/jira/browse/SPARK-8306) | *Major* | **AddJar command needs to set the new class loader to the HiveConf inside executionHive.state.**

In {{AddJar}} command, we are using {{org.apache.hadoop.hive.ql.metadata.Hive.get().getConf().setClassLoader(newClassLoader)}}. However, the conf returned by {{Hive.get().getConf()}} is not necessary the one set in {{executionHive.state}}. Thus, we may fail to set the correct class loader to {{executionHive}} in some cases.


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

* [SPARK-8282](https://issues.apache.org/jira/browse/SPARK-8282) | *Major* | **Make number of threads used in RBackend configurable**

RBackend starts a netty server which uses two threads. The number of threads is hardcoded. It is useful to have it configurable.


---

* [SPARK-8274](https://issues.apache.org/jira/browse/SPARK-8274) | *Trivial* | **Fix wrong URLs in MLlib Frequent Pattern Mining Documentation**

There is a mistake in the URLs of the Scala section of FP-Growth in the MLlib Frequent Pattern Mining documentation. The URL points to https://spark.apache.org/docs/latest/api/java/org/apache/spark/mllib/fpm/FPGrowth.html which is the Java's API, the link should point to the Scala API https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.fpm.FPGrowth

There's another mistake in the FP-GrowthModel in the same section, the link points, again, to the Java's API https://spark.apache.org/docs/latest/api/java/org/apache/spark/mllib/fpm/FPGrowthModel.html, the link should point to the Scala API https://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.mllib.fpm.FPGrowthModel


---

* [SPARK-8202](https://issues.apache.org/jira/browse/SPARK-8202) | *Critical* | **PySpark: infinite loop during external sort**

The batch size during external sort will grow up to max 10000, then shrink down to zero, causing infinite loop.

Given the assumption that the items usually have similar size, so we don't need to adjust the batch size after first spill.


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

* [SPARK-8151](https://issues.apache.org/jira/browse/SPARK-8151) | *Blocker* | **Pipeline components should correctly implement copy**

Some pipeline components (models and meta-algorithms) should correctly implement copy in order to work properly in pipeline fitting.


---

* [SPARK-8146](https://issues.apache.org/jira/browse/SPARK-8146) | *Major* | **DataFrame Python API: Alias replace in DataFrameNaFunctions**

We missed aliasing it in na.replace.


---

* [SPARK-8141](https://issues.apache.org/jira/browse/SPARK-8141) | *Major* | **Precompute datatypes for partition columns and reuse it**

spec.partitionColumns.map(\_.dataType) re-runs for each Partition in HadoopFsRelation. When there are many partitions, it costs too much unnecessary time.


---

* [SPARK-8126](https://issues.apache.org/jira/browse/SPARK-8126) | *Minor* | **Use temp directory under build dir for unit tests**

Spark's unit tests leave a lot of garbage in /tmp after a run, making it hard to clean things up. Let's place those files under the build dir so that "mvn|sbt|git clean" can do their job.


---

* [SPARK-8121](https://issues.apache.org/jira/browse/SPARK-8121) | *Major* | **When using with Hadoop 1.x, "spark.sql.parquet.output.committer.class" is overriden by "spark.sql.sources.outputCommitterClass"**

When using Spark with Hadoop 1.x (the version I tested is 1.2.0) and {{spark.sql.sources.outputCommitterClass}} is configured, {{spark.sql.parquet.output.committer.class}} will be overriden. 

For example, if {{spark.sql.parquet.output.committer.class}} is set to {{FileOutputCommitter}}, while {{spark.sql.sources.outputCommitterClass}} is set to {{DirectParquetOutputCommitter}}, neither {{\_metadata}} nor {{\_common\_metadata}} will be written because {{FileOutputCommitter}} overrides {{DirectParquetOutputCommitter}}.

The reason is that, {{InsertIntoHadoopFsRelation}} initializes the {{TaskAttemptContext}} before calling {{ParquetRelation2.prepareForWriteJob()}}, which sets up Parquet output committer class. In the meanwhile, in Hadoop 1.x, {{TaskAttempContext}} constructor clones the job configuration, thus doesn't share the job configuration passed to {{ParquetRelation2.prepareForWriteJob()}}.

This issue can be fixed by simply [switching these two lines|https://github.com/apache/spark/blob/master/sql/core/src/main/scala/org/apache/spark/sql/sources/commands.scala#L285-L286].

Here is a Spark shell snippet for reproducing this issue:
{code}
import sqlContext.\_

sc.hadoopConfiguration.set(
  "spark.sql.sources.outputCommitterClass",
  "org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter")

sc.hadoopConfiguration.set(
  "spark.sql.parquet.output.committer.class",
  "org.apache.spark.sql.parquet.DirectParquetOutputCommitter")

range(0, 1).write.mode("overwrite").parquet("file:///tmp/foo")
{code}
Then check {{/tmp/foo}}, Parquet summary files are missing:
{noformat}
/tmp/foo
├── \_SUCCESS
├── part-r-00001.gz.parquet
├── part-r-00002.gz.parquet
├── part-r-00003.gz.parquet
├── part-r-00004.gz.parquet
├── part-r-00005.gz.parquet
├── part-r-00006.gz.parquet
├── part-r-00007.gz.parquet
└── part-r-00008.gz.parquet
{noformat}


---

* [SPARK-8116](https://issues.apache.org/jira/browse/SPARK-8116) | *Minor* | **sc.range() doesn't match python range()**

Python's built-in range() and xrange() functions can take 1, 2, or 3 arguments. Ranges with just 1 argument are probably used the most frequently, e.g.:
for i in range(len(myList)): ...

However, in pyspark, the SparkContext range() method throws an error when called with a single argument, due to the way its arguments get passed into python's range function.

There's no good reason that I can think of not to support the same syntax as the built-in function. To fix this, we can set the default of the sc.range() method's `stop` argument to None, and then inside the method, if it is None, replace `stop` with `start` and set `start` to 0, which is what the c implementation of range() does:
https://github.com/python/cpython/blob/master/Objects/rangeobject.c#L87


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

* [SPARK-7955](https://issues.apache.org/jira/browse/SPARK-7955) | *Major* | **Dynamic allocation: longer timeout for executors with cached blocks**

When dynamic allocation is enabled, executor idle time is currently the only parameter considered. This can be annoying if executors get removed but have cached blocks. This can cause sever performance degradation.


---

* [SPARK-7916](https://issues.apache.org/jira/browse/SPARK-7916) | *Major* | **MLlib Python doc parity check for classification and regression.**

Check then make the MLlib Python classification and regression doc to be as complete as the Scala doc.


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

* [SPARK-7715](https://issues.apache.org/jira/browse/SPARK-7715) | *Major* | **Update MLlib Programming Guide for 1.4**

Before the release, we need to update the MLlib Programming Guide.  Updates will include:
* Add migration guide subsection.
** Use the results of the QA audit JIRAs.
* Check phrasing, especially in main sections (for outdated items such as "In this release, ..."


---

* [SPARK-7705](https://issues.apache.org/jira/browse/SPARK-7705) | *Minor* | **Cleanup of .sparkStaging directory fails if application is killed**

When a streaming application is killed while running on YARN the .sparkStaging directory is not cleaned up. Setting spark.yarn.preserve.staging.files=false does not help and still leaves the files around.

The changes in SPARK-7503 do not catch this case since there is no exception in the shutdown. When the application gets killed the AM gets told to shutdown and the shutdown hook is run but the clean up is not triggered.


---

* [SPARK-7666](https://issues.apache.org/jira/browse/SPARK-7666) | *Major* | **MLlib Python doc parity check**

Check then make the MLlib Python doc to be as complete as the Scala doc.


---

* [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | *Major* | **Log test name when starting and finishing each test**

Right now it's really tough to interpret testing output because logs for different tests are interspersed in the same unit-tests.log file. This makes it particularly hard to diagnose flaky tests. This would be much easier if we logged the test name before and after every test (e.g. "Starting test XX", "Finished test XX"). Then you could get right to the logs.

I think one way to do this might be to create a custom test fixture that logs the test class name and then mix that into every test suite /cc [~joshrosen] for his superb knowledge of Scalatest.


---

* [SPARK-7515](https://issues.apache.org/jira/browse/SPARK-7515) | *Minor* | **Update documentation for PySpark on YARN with cluster mode**

Now PySpark on YARN with cluster mode is supported so let's update doc.


---

* [SPARK-7387](https://issues.apache.org/jira/browse/SPARK-7387) | *Minor* | **CrossValidator example code in Python**

We should add example code for CrossValidator after SPARK-6940 is merged. This should be similar to the CrossValidator example in Scala/Java.


---

* [SPARK-7284](https://issues.apache.org/jira/browse/SPARK-7284) | *Critical* | **Update streaming documentation for Spark 1.4.0 release**

Things to update (continuously updated list)
- Python API for Kafka Direct
- Pointers to the new Streaming UI
- Update Kafka version to 0.8.2.1
- Add ref to RDD.foreachPartitionWithIndex (if merged)


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

* [SPARK-6820](https://issues.apache.org/jira/browse/SPARK-6820) | *Critical* | **Convert NAs to null type in SparkR DataFrames**

While converting RDD or local R DataFrame to a SparkR DataFrame we need to handle missing values or NAs.
We should convert NAs to SparkSQL's null type to handle the conversion correctly


---

* [SPARK-5768](https://issues.apache.org/jira/browse/SPARK-5768) | *Trivial* | **Spark UI Shows incorrect memory under Yarn**

I am running Spark on Yarn with 2 executors.  The executors are running on separate physical machines.

I have spark.executor.memory set to '40g'.  This is because I want to have 40g of memory used on each machine.  I have one executor per machine.

When I run my application I see from 'top' that both my executors are using the full 40g of memory I allocated to them.

The 'Executors' tab in the Spark UI shows something different.  It shows the memory used as a total of 20GB per executor e.g. x / 20.3GB.  This makes it look like I only have 20GB available per executor when really I have 40GB available.


---

* [SPARK-3629](https://issues.apache.org/jira/browse/SPARK-3629) | *Minor* | **Improvements to YARN doc**

Right now this doc starts off with a big list of config options, and only then tells you how to submit an app. It would be better to put that part and the packaging part first, and the config options only at the end.

In addition, the doc mentions yarn-cluster vs yarn-client as separate masters, which is inconsistent with the help output from spark-submit (which says to always use "yarn").



