
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
# Apache Spark  1.6.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-16664](https://issues.apache.org/jira/browse/SPARK-16664) | *Blocker* | **Spark 1.6.2 - Persist call on Data frames with more than 200 columns is wiping out the data.**

Calling persist on a data frame with more than 200 columns is removing the data from the data frame. This is an issue in Spark 1.6.2. Works with out any issues in Spark 1.6.1

Following test case demonstrates problem. Please let me know if you need any additional information. Thanks.

{code}
import org.apache.spark.\_
import org.apache.spark.rdd.RDD
import org.apache.spark.sql.types.\_
import org.apache.spark.sql.{Row, SQLContext}
import org.scalatest.FunSuite

class TestSpark162\_1 extends FunSuite {

  test("test data frame with 200 columns") {
    val sparkConfig = new SparkConf()
    val parallelism = 5
    sparkConfig.set("spark.default.parallelism", s"$parallelism")
    sparkConfig.set("spark.sql.shuffle.partitions", s"$parallelism")

    val sc = new SparkContext(s"local[3]", "TestNestedJson", sparkConfig)
    val sqlContext = new SQLContext(sc)

    // create dataframe with 200 columns and fake 200 values
    val size = 200
    val rdd: RDD[Seq[Long]] = sc.parallelize(Seq(Seq.range(0, size)))
    val rowRdd: RDD[Row] = rdd.map(d =\> Row.fromSeq(d))

    val schemas = List.range(0, size).map(a =\> StructField("name"+ a, LongType, true))
    val testSchema = StructType(schemas)
    val testDf = sqlContext.createDataFrame(rowRdd, testSchema)

    // test value
    assert(testDf.persist.take(1).apply(0).toSeq(100).asInstanceOf[Long] == 100)
    sc.stop()
  }

  test("test data frame with 201 columns") {
    val sparkConfig = new SparkConf()
    val parallelism = 5
    sparkConfig.set("spark.default.parallelism", s"$parallelism")
    sparkConfig.set("spark.sql.shuffle.partitions", s"$parallelism")

    val sc = new SparkContext(s"local[3]", "TestNestedJson", sparkConfig)
    val sqlContext = new SQLContext(sc)

    // create dataframe with 201 columns and fake 201 values
    val size = 201
    val rdd: RDD[Seq[Long]] = sc.parallelize(Seq(Seq.range(0, size)))
    val rowRdd: RDD[Row] = rdd.map(d =\> Row.fromSeq(d))

    val schemas = List.range(0, size).map(a =\> StructField("name"+ a, LongType, true))
    val testSchema = StructType(schemas)
    val testDf = sqlContext.createDataFrame(rowRdd, testSchema)


    // test value
    assert(testDf.persist.take(1).apply(0).toSeq(100).asInstanceOf[Long] == 100)
    sc.stop()
  }
}
{code}


---

* [SPARK-16751](https://issues.apache.org/jira/browse/SPARK-16751) | *Major* | **Upgrade derby to 10.12.1.1 from 10.11.1.1**

This JIRA is to upgrade the derby version from 10.11.1.1 to 10.12.1.1

Sean and I figured that we only use derby for tests and so the initial pull request was to not include it in the jars folder for Spark. I now believe it is required based on comments for the pull request and so this is only a dependency upgrade.

The upgrade is due to an already disclosed vulnerability (CVE-2015-1832) in derby 10.11.1.1. We used https://www.versioneye.com/search and will be checking for any other problems in a variety of libraries too: investigating if we can set up a Jenkins job to check our pom on a regular basis so we can stay ahead of the game for matters like this.

This was raised on the mailing list at http://apache-spark-developers-list.1001551.n3.nabble.com/VOTE-Release-Apache-Spark-2-0-0-RC5-tp18367p18465.html by Stephen Hellberg and replied to by Sean Owen.

I've checked the impact to previous Spark releases and this particular version of derby is the only relatively recent and without vulnerabilities version (I checked up to the 1.3 branch) so ideally we'd backport this for all impacted Spark releases.

I've marked this as critical and ticked the important checkbox as it's going to impact every user, there isn't a security component (should we add one?) and hence the build tag.



