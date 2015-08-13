
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



