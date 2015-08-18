
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
# Apache Spark  1.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-9984](https://issues.apache.org/jira/browse/SPARK-9984) | *Major* | **Create local physical operator interface**

The local operator interface should be similar to traditional database iterators, with open/close.


---

* [SPARK-9935](https://issues.apache.org/jira/browse/SPARK-9935) | *Minor* | **EqualNullSafe not processed in OrcRelation**

it is an issue followed by SPARK-9814.

Now datasources (after {{selectFilters()}} in {{org.apache.spark.sql.execution.datasources.DataSourceStrategy}}) can pass {{EqualNotNull}} to relations but {{OrcRelation}} does not take and process this.

(ParquetRelation has also the same issue but it seems Parquet does not support the null-safe equal filter. It is confusing whether Parquet should support this or treat this as EqualFilter with additional codes in Spark code. Therefore, I made a separate issue only for ORC)


---

* [SPARK-9924](https://issues.apache.org/jira/browse/SPARK-9924) | *Major* | **checkForLogs and cleanLogs are scheduled at fixed rate and can get piled up**

{{checkForLogs}} and {{cleanLogs}} are scheduled using {{ScheduledThreadPoolExecutor.scheduleAtFixedRate}}. When their execution takes more time than the interval at which they are scheduled, they get piled up.

This is a problem on its own but the existence of SPARK-7189 makes it even worse. Let's say there is an eventLog which takes 15s to parse and which happens to be the last modified file (that gets reloaded again and again due to SPARK-7189.) If this file stays the last modified file for, let's say, an hour, then a lot of executions of that file would have piled up as the default {{spark.history.fs.update.interval}} is 10s. If there is a new eventLog file now, it won't show up in the history server ui for a long time.


---

* [SPARK-9923](https://issues.apache.org/jira/browse/SPARK-9923) | *Trivial* | **ShuffleMapStage.numAvailableOutputs should be an Int instead of Long**

Not sure why it was made a Long, but every usage assumes it's an Int.


---

* [SPARK-9810](https://issues.apache.org/jira/browse/SPARK-9810) | *Major* | **Remove individual commit messages from the squash commit message**

I took a look at the commit messages in git log -- it looks like the individual commit messages are not that useful to include, but do make the commit messages more verbose. They are usually just a bunch of extremely concise descriptions of "bug fixes", "merges", etc:

{code}
    cb3f12d [xxx] add whitespace
    6d874a6 [xxx] support pyspark for yarn-client

    89b01f5 [yyy] Update the unit test to add more cases
    275d252 [yyy] Address the comments
    7cc146d [yyy] Address the comments
    2624723 [yyy] Fix rebase conflict
    45befaa [yyy] Update the unit test
    bbc1c9c [yyy] Fix checkpointing doesn't retain driver port issue
{code}

See mailing list discussions: http://apache-spark-developers-list.1001551.n3.nabble.com/discuss-Removing-individual-commit-messages-from-the-squash-commit-message-td13295.html


---

* [SPARK-9748](https://issues.apache.org/jira/browse/SPARK-9748) | *Trivial* | **Centriod typo in KMeansModel**

A minor typo (centriod -> centroid). Readable variable names help every users.


---

* [SPARK-8887](https://issues.apache.org/jira/browse/SPARK-8887) | *Major* | **Explicitly define which data types can be used as dynamic partition columns**

{{InsertIntoHadoopFsRelation}} implements Hive compatible dynamic partitioning insertion, which uses {{String.valueOf}} to write encode partition column values into dynamic partition directories. This actually limits the data types that can be used in partition column. For example, string representation of {{StructType}} values is not well defined. However, this limitation is not explicitly enforced.

There are several things we can improve:

# Enforce dynamic column data type requirements by adding analysis rules and throws {{AnalysisException}} when violation occurs.
# Abstract away string representation of various data types, so that we don't need to convert internal representation types (e.g. {{UTF8String}}) to external types (e.g. {{String}}). A set of Hive compatible implementations should be provided to ensure compatibility with Hive.


---

* [SPARK-8764](https://issues.apache.org/jira/browse/SPARK-8764) | *Minor* | **StringIndexer should take option to handle unseen values**

The option should be a Param, probably set to false by default (throwing exception when encountering unseen values).


---

* [SPARK-8345](https://issues.apache.org/jira/browse/SPARK-8345) | *Major* | **Add an SQL node as a feature transformer**

Some simple feature transformations can take leverage on SQL operators. Users do not need to create an ML transformer for each of them. We can have an SQL transformer that executes an SQL command which operates on the input dataframe.

{code}
val sql = new SQL()
  .setStatement("SELECT *, length(text) AS text\_length FROM \_\_THIS\_\_")
{code}

where "\_\_THIS\_\_" will be replaced by a temp table that represents the DataFrame.



