
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
# Apache Spark  2.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-18715](https://issues.apache.org/jira/browse/SPARK-18715) | *Major* | **Fix wrong AIC calculation in Binomial GLM**

The AIC calculation in Binomial GLM seems to be wrong when there are weights. The result is different from that in R.

The current implementation is:
{code}
      -2.0 \* predictions.map { case (y: Double, mu: Double, weight: Double) =\>
        weight \* dist.Binomial(1, mu).logProbabilityOf(math.round(y).toInt)
      }.sum()
{code} 

Suggest changing this to 
{code}
      -2.0 \* predictions.map { case (y: Double, mu: Double, weight: Double) =\>
        val wt = math.round(weight).toInt
        if (wt == 0){
          0.0
        } else {
          dist.Binomial(wt, mu).logProbabilityOf(math.round(y \* weight).toInt)
        }
      }.sum()
{code} 

----
----
The following is an example to illustrate the problem.
{code}
val dataset = Seq(
      LabeledPoint(0.0, Vectors.dense(18, 1.0)),
      LabeledPoint(0.5, Vectors.dense(12, 0.0)),
      LabeledPoint(1.0, Vectors.dense(15, 0.0)),
      LabeledPoint(0.0, Vectors.dense(13, 2.0)),
      LabeledPoint(0.0, Vectors.dense(15, 1.0)),
      LabeledPoint(0.5, Vectors.dense(16, 1.0))
    ).toDF().withColumn("weight", col("label") + 1.0)
val glr = new GeneralizedLinearRegression()
    .setFamily("binomial")
    .setWeightCol("weight")
    .setRegParam(0)
val model = glr.fit(dataset)
model.summary.aic
{code}

This calculation shows the AIC is 14.189026847171382. To verify whether this is correct, I run the same analysis in R but got AIC = 11.66092, -2 \* LogLik = 5.660918. 
{code}
da \<- scan(, what=list(y = 0, x1 = 0, x2 = 0, w = 0), sep = ",")
0,18,1,1
0.5,12,0,1.5
1,15,0,2
0,13,2,1
0,15,1,1
0.5,16,1,1.5
da \<- as.data.frame(da)
f \<- glm(y ~ x1 + x2 , data = da, family = binomial(), weight = w)
AIC(f)
-2 \* logLik(f)
{code}

Now, I check whether the proposed change is correct. The following calculates -2 \* LogLik manually and get 5.6609177228379055, the same as that in R.
{code}
val predictions = model.transform(dataset)
-2.0 \* predictions.select("label", "prediction", "weight").rdd.map {case Row(y: Double, mu: Double, weight: Double) =\>
      val wt = math.round(weight).toInt
      if (wt == 0){
        0.0
      } else {
        dist.Binomial(wt, mu).logProbabilityOf(math.round(y \* weight).toInt)
      }
  }.sum()
{code}


---

* [SPARK-16845](https://issues.apache.org/jira/browse/SPARK-16845) | *Major* | **org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificOrdering" grows beyond 64 KB**

I have a wide table(400 columns), when I try fitting the traindata on all columns,  the fatal error occurs. 


	... 46 more
Caused by: org.codehaus.janino.JaninoRuntimeException: Code of method "(Lorg/apache/spark/sql/catalyst/InternalRow;Lorg/apache/spark/sql/catalyst/InternalRow;)I" of class "org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificOrdering" grows beyond 64 KB
	at org.codehaus.janino.CodeContext.makeSpace(CodeContext.java:941)
	at org.codehaus.janino.CodeContext.write(CodeContext.java:854)


---

* [SPARK-18917](https://issues.apache.org/jira/browse/SPARK-18917) | *Minor* | **Dataframe - Time Out Issues / Taking long time in append mode on object stores**

When using Dataframe write in append mode on object stores (S3 / Google Storage), the writes are taking long time to write/ getting read time out. This is because dataframe.write lists all leaf folders in the target directory. If there are lot of subfolders due to partitions, this is taking for ever.

The code is In org.apache.spark.sql.execution.datasources.DataSource.write() following code causes huge number of RPC calls when the file system is an Object Store (S3, GS).
if (mode == SaveMode.Append) {
val existingPartitionColumns = Try {
resolveRelation()
.asInstanceOf[HadoopFsRelation]
.location
.partitionSpec()
.partitionColumns
.fieldNames
.toSeq
}.getOrElse(Seq.empty[String])
There should be a flag to skip Partition Match Check in append mode. I can work on the patch.


---

* [SPARK-18929](https://issues.apache.org/jira/browse/SPARK-18929) | *Major* | **Add Tweedie distribution in GLM**

I propose to add the full Tweedie family into the GeneralizedLinearRegression model. The Tweedie family is characterized by a power variance function. Currently supported distributions such as Gaussian,  Poisson and Gamma families are a special case of the [Tweedie\|https://en.wikipedia.org/wiki/Tweedie\_distribution]. 

I propose to add support for the other distributions:
\* compound Poisson: 1 \< variancePower \< 2. This one is widely used to model zero-inflated continuous distributions. 
\* positive stable: variancePower \> 2 and variancePower != 3. Used to model extreme values.
\* inverse Gaussian: variancePower = 3.

 The Tweedie family is supported in most statistical packages such as R (statmod), SAS, h2o etc.


---

* [SPARK-19407](https://issues.apache.org/jira/browse/SPARK-19407) | *Major* | **defaultFS is used FileSystem.get instead of getting it from uri scheme**

Caused by: java.lang.IllegalArgumentException: Wrong FS: s3a://\*\*\*\*\*\*\*\*\*\*\*\*\*\*/checkpoint/7b2231a3-d845-4740-bfa3-681850e5987f/metadata, expected: file:///
	at org.apache.hadoop.fs.FileSystem.checkPath(FileSystem.java:649)
	at org.apache.hadoop.fs.RawLocalFileSystem.pathToFile(RawLocalFileSystem.java:82)
	at org.apache.hadoop.fs.RawLocalFileSystem.deprecatedGetFileStatus(RawLocalFileSystem.java:606)
	at org.apache.hadoop.fs.RawLocalFileSystem.getFileLinkStatusInternal(RawLocalFileSystem.java:824)
	at org.apache.hadoop.fs.RawLocalFileSystem.getFileStatus(RawLocalFileSystem.java:601)
	at org.apache.hadoop.fs.FilterFileSystem.getFileStatus(FilterFileSystem.java:421)
	at org.apache.hadoop.fs.FileSystem.exists(FileSystem.java:1426)
	at org.apache.spark.sql.execution.streaming.StreamMetadata$.read(StreamMetadata.scala:51)
	at org.apache.spark.sql.execution.streaming.StreamExecution.\<init\>(StreamExecution.scala:100)
	at org.apache.spark.sql.streaming.StreamingQueryManager.createQuery(StreamingQueryManager.scala:232)
	at org.apache.spark.sql.streaming.StreamingQueryManager.startQuery(StreamingQueryManager.scala:269)
	at org.apache.spark.sql.streaming.DataStreamWriter.start(DataStreamWriter.scala:262)

Can easily replicate on spark standalone cluster by providing checkpoint location uri scheme anything other than "file://" and not overriding in config.

WorkAround  --conf spark.hadoop.fs.defaultFS=s3a://somebucket or set it in sparkConf or spark-default.conf


---

* [SPARK-19488](https://issues.apache.org/jira/browse/SPARK-19488) | *Major* | **CSV infer schema does not take into account Inf,-Inf,NaN**

I observed that while loading a CSV as a dataframe, user-specified values for nanValue, positiveInf and negativeInf are disregarded when inferSchema = true. (They work if a user-specified schema is provided). However, even the spark defaults for the infinities (Inf and -Inf) do not work with inferSchema. 

Taking a look at the source code for the inferSchema for CSV (CSVInferSchema.scala), I found the following code snippet.
{code}
1.		private def tryParseDouble(field: String, options: CSVOptions): DataType = {
2.		    if ((allCatch opt field.toDouble).isDefined) {
3.		      DoubleType
4.		    } else {
5.		      tryParseTimestamp(field, options)
6.		    }
7.		  }
8.		
9.		  private def tryParseTimestamp(field: String, options: CSVOptions): DataType = {
10.		    // This case infers a custom \`dataFormat\` is set.
11.		    if ((allCatch opt options.timestampFormat.parse(field)).isDefined) {
12.		      TimestampType
13.		    } else if ((allCatch opt DateTimeUtils.stringToTime(field)).isDefined) {
14.		      // We keep this for backwords competibility.
15.		      TimestampType
16.		    } else {
17.		      tryParseBoolean(field, options)
18.		    }
19.		  }
{code}
Interestingly, the user-specified csv options are not at all used while determining if the field is of type double (as we can see in line 2). We can see that the options is used for timestamp type (line 11), which is why the 'dateFormat' option does work. 
However, when the field is NaN, it works because scala's toDouble function does convert the string NaN to the double equivalent of NaN. (I tried it using the shell):

{code}
scala\> allCatch.opt(field.toDouble)
res12: Option[Double] = Some(8.0942)

scala\> var field = "NaN";
field: String = NaN

scala\> allCatch.opt(field.toDouble)
res13: Option[Double] = Some(NaN)

scala\> var field = "Inf";
field: String = Inf

scala\> allCatch.opt(field.toDouble)
res14: Option[Double] = None
{code}
Interestingly, scala does have Double equivalents of Infinity and -Infinity (but spark defaults are Inf and -Inf, which is why they don't work):

{code}
scala\> field = "Infinity";
field: String = Infinity

scala\> allCatch.opt(field.toDouble)
res15: Option[Double] = Some(Infinity)

scala\> field = "-Infinity";
field: String = -Infinity

scala\> allCatch.opt(field.toDouble)
res16: Option[Double] = Some(-Infinity)
{code}

The following csv, when ingested with inferSchema = true, therefore interprets the value column as a Double! (Regardless of the user-specified options)

{code}
ID,name,value,irrational,prime,real
1,e,2.7,true,false,true
2,pi,3.14,true,false,true
3,inf,Infinity,false,false,true
4,-inf,-Infinity,false,false,true
5,i,NaN,false,false,false

{code}


---

* [SPARK-19115](https://issues.apache.org/jira/browse/SPARK-19115) | *Major* | **SparkSQL unsupports the command " create external table if not exist  new\_tbl like old\_tbl location '/warehouse/new\_tbl' "**

spark2.0.1 unsupports the command " create external table if not exist  new\_tbl like old\_tbl location '/warehouse/new\_tbl' "
we tried to modify the  sqlbase.g4 file,change
"    \| CREATE TABLE (IF NOT EXISTS)? target=tableIdentifier
        LIKE source=tableIdentifier                                    #createTableLike"
to
"    \| CREATE EXTERNAL? TABLE (IF NOT EXISTS)? target=tableIdentifier
        LIKE source=tableIdentifier locationSpec?                                 #createTableLike"
modify method 'visitCreateTableLike' in scala file  'SparkSqlParser.scala' and  update case class CreateTableLikeCommand in 'tables.scala' file
finally  we compiled spark and replaced the jars as follow: 'spark-catalyst-2.0.1.jar','spark-sql\_2.11-2.0.1.jar', and run  the command 'create external table if not exist  new\_tbl like old\_tbl location '/warehouse/new\_tbl' successfully .



