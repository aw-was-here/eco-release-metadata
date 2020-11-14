
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
# Apache Spark  2.4.5 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-29055](https://issues.apache.org/jira/browse/SPARK-29055) | *Major* | **Spark UI storage memory increasing overtime**

I used Spark 2.1.1 and I upgraded into new versions. After Spark version 2.3.3,  I observed from Spark UI that the driver memory is{color:#ff0000} increasing continuously.{color}

In more detail, the driver memory and executors memory have the same used memory storage and after each iteration the storage memory is increasing. You can reproduce this behavior by running the following snippet code. The following example, is very simple, without any dataframe persistence, but the memory consumption is not stable as it was in former Spark versions (Specifically until Spark 2.3.2).

Also, I tested with Spark streaming and structured streaming API and I had the same behavior. I tested with an existing application which reads from Kafka source and do some aggregations, persist dataframes and then unpersist them. The persist and unpersist it works correct, I see the dataframes in the storage tab in Spark UI and after the unpersist, all dataframe have removed. But, after the unpersist the executors memory is not zero, BUT has the same value with the driver memory. This behavior also affects the application performance because the memory of the executors is increasing as the driver increasing and after a while the persisted dataframes are not fit in the executors memory and  I have spill to disk.

Another error which I had after a long running, was {color:#ff0000}java.lang.OutOfMemoryError: GC overhead limit exceeded, but I don't know if its relevant with the above behavior or not.{color}

 

\*HOW TO REPRODUCE THIS BEHAVIOR:\*

Create a very simple application(streaming count\_file.py) in order to reproduce this behavior. This application reads CSV files from a directory, count the rows and then remove the processed files.
{code:java}
import time
import os

from pyspark.sql import SparkSession
from pyspark.sql import functions as F
from pyspark.sql import types as T

target\_dir = "..."

spark=SparkSession.builder.appName("DataframeCount").getOrCreate()

while True:
    for f in os.listdir(target\_dir):
        df = spark.read.load(target\_dir + f, format="csv")
        print("Number of records: {0}".format(df.count()))
        time.sleep(15){code}
Submit code:
{code:java}
spark-submit 
--master spark://xxx.xxx.xx.xxx
--deploy-mode client
--executor-memory 4g
--executor-cores 3
streaming count\_file.py
{code}
 

\*TESTED CASES WITH THE SAME BEHAVIOUR:\*
 \* I tested with default settings (spark-defaults.conf)
 \* Add spark.cleaner.periodicGC.interval 1min (or less)
 \* {{Turn spark.cleaner.referenceTracking.blocking}}=false
 \* Run the application in cluster mode
 \* Increase/decrease the resources of the executors and driver
 \* I tested with extraJavaOptions in driver and executor -XX:+UseG1GC -XX:InitiatingHeapOccupancyPercent=35 -XX:ConcGCThreads=12
  

\*DEPENDENCIES\*
 \* Operation system: Ubuntu 16.04.3 LTS
 \* Java: jdk1.8.0\_131 (tested also with jdk1.8.0\_221)
 \* Python: Python 2.7.12

 

\*NOTE:\* In Spark 2.1.1 the driver memory consumption (Storage Memory tab) was extremely low and after the run of ContextCleaner and BlockManager the memory was decreasing.



