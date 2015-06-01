
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

* [SPARK-7979](https://issues.apache.org/jira/browse/SPARK-7979) | *Major* | **Enforce structural type checker**

Structural types in Scala can use reflection - this can have unexpected performance consequences.

See http://www.scalastyle.org/rules-0.7.0.html#org\_scalastyle\_scalariform\_StructuralTypeChecker


---

* [SPARK-7978](https://issues.apache.org/jira/browse/SPARK-7978) | *Blocker* | **DecimalType should not be singleton**

The DecimalType can not be constructed with parameters. When it's constructed without parameters, we always get same objects, which is wrong.

{code}
>>> from pyspark.sql.types import *
>>> DecimalType(1, 2)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: \_\_call\_\_() takes exactly 1 argument (3 given)
>>> DecimalType()
DecimalType()
{code}


---

* [SPARK-7976](https://issues.apache.org/jira/browse/SPARK-7976) | *Major* | **Add style checker to disallow overriding finalize**

finalize() is called when the object is garbage collected, and garbage collection is not guaranteed to happen. It is therefore unwise to rely on code in finalize() method.


See http://www.scalastyle.org/rules-0.7.0.html#org\_scalastyle\_scalariform\_NoFinalizeChecker


---

* [SPARK-7975](https://issues.apache.org/jira/browse/SPARK-7975) | *Major* | **CovariantEqualsChecker**

Mistakenly defining a covariant equals() method without overriding method equals(java.lang.Object) can produce unexpected runtime behaviour.

See http://www.scalastyle.org/rules-0.7.0.html#org\_scalastyle\_scalariform\_CovariantEqualsChecker


---

* [SPARK-7957](https://issues.apache.org/jira/browse/SPARK-7957) | *Major* | **Preserve partitioning in randomSplit in RDD.scala**

The randomSplit method in RDD.scala used to preserve partitioning, but with a change I made, to make it re-usable with Spark SQL, it doesn't preserve partitioning anymore (forgot to add the argument)


---

* [SPARK-7954](https://issues.apache.org/jira/browse/SPARK-7954) | *Major* | **Implicitly create SparkContext in sparkRSQL.init**

Right now SparkR users need to first create a SparkContext with sparkR.init and a SQLContext with sparkRSQL.init -- As users will only use DataFrames in the first release we can save them one step by implicitly creating a SparkContext in sparkRSQL.init


---

* [SPARK-7890](https://issues.apache.org/jira/browse/SPARK-7890) | *Critical* | **Document that Spark 2.11 now supports Kafka**

The building-spark.html page needs to be updated. It's a simple fix, just remove the caveat about Kafka.



