
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
# Apache Spark  2.4.7 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-32609](https://issues.apache.org/jira/browse/SPARK-32609) | *Major* | **Incorrect exchange reuse with DataSourceV2**

 
{code:java}
spark.conf.set("spark.sql.exchange.reuse","true")
spark.read.format("com.google.cloud.spark.bigquery.v2.BigQueryDataSourceV2").option("table",'tpcds\_1G.date\_dim').load()
df.createOrReplaceTempView(table)
    
df = spark.sql(""" 
WITH t1 AS (
    SELECT 
        d\_year, d\_month\_seq
    FROM (
        SELECT t1.d\_year , t2.d\_month\_seq          
        FROM 
        date\_dim t1
        cross join
        date\_dim t2
        where t1.d\_day\_name = "Monday" and t1.d\_fy\_year \> 2000
        and t2.d\_day\_name = "Monday" and t2.d\_fy\_year \> 2000
        )
    GROUP BY d\_year, d\_month\_seq)
   
 SELECT
    prev\_yr.d\_year AS prev\_year, curr\_yr.d\_year AS year, curr\_yr.d\_month\_seq
 FROM t1 curr\_yr cross join t1 prev\_yr
 WHERE curr\_yr.d\_year=2002 AND prev\_yr.d\_year=2002-1
 ORDER BY d\_month\_seq
 LIMIT 100
 
 """)

df.explain()
df.show(){code}
 

the repro query :
A. defines a temp table t1  
B. cross join t1 (year 2002)  and  t2 (year 2001)

With reuse exchange enabled, the plan incorrectly "decides" to re-use persisted shuffle writes of A filtering on year 2002 , for year 2001.
{code:java}
== Physical Plan ==
TakeOrderedAndProject(limit=100, orderBy=[d\_month\_seq#24371L ASC NULLS FIRST], output=[prev\_year#24366L,year#24367L,d\_month\_seq#24371L])
+- \*(9) Project [d\_year#24402L AS prev\_year#24366L, d\_year#23551L AS year#24367L, d\_month\_seq#24371L]
   +- CartesianProduct
      :- \*(4) HashAggregate(keys=[d\_year#23551L, d\_month\_seq#24371L], functions=[])
      :  +- Exchange hashpartitioning(d\_year#23551L, d\_month\_seq#24371L, 200)
      :     +- \*(3) HashAggregate(keys=[d\_year#23551L, d\_month\_seq#24371L], functions=[])
      :        +- BroadcastNestedLoopJoin BuildRight, Cross
      :           :- \*(1) Project [d\_year#23551L]
      :           :  +- \*(1) ScanV2 BigQueryDataSourceV2[d\_year#23551L] (Filters: [isnotnull(d\_day\_name#23559), (d\_day\_name#23559 = Monday), isnotnull(d\_fy\_year#23556L), (d\_fy\_yea..., Options: [table=tpcds\_1G.date\_dim,paths=[]])
      :           +- BroadcastExchange IdentityBroadcastMode
      :              +- \*(2) Project [d\_month\_seq#24371L]
      :                 +- \*(2) ScanV2 BigQueryDataSourceV2[d\_month\_seq#24371L] (Filters: [isnotnull(d\_day\_name#24382), (d\_day\_name#24382 = Monday), isnotnull(d\_fy\_year#24379L), (d\_fy\_yea..., Options: [table=tpcds\_1G.date\_dim,paths=[]])
      +- \*(8) HashAggregate(keys=[d\_year#24402L, d\_month\_seq#24455L], functions=[])
         +- ReusedExchange [d\_year#24402L, d\_month\_seq#24455L], Exchange hashpartitioning(d\_year#23551L, d\_month\_seq#24371L, 200){code}
 

 

And the result is obviously incorrect because prev\_year should be 2001
{code:java}
+---------+----+-----------+
\|prev\_year\|year\|d\_month\_seq\|
+---------+----+-----------+
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
\|     2002\|2002\|       1212\|
+---------+----+-----------+
only showing top 20 rows
{code}



