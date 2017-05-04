
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
# Apache Spark  2.1.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-16845](https://issues.apache.org/jira/browse/SPARK-16845) | *Major* | **org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificOrdering" grows beyond 64 KB**

I have a wide table(400 columns), when I try fitting the traindata on all columns,  the fatal error occurs. 


	... 46 more
Caused by: org.codehaus.janino.JaninoRuntimeException: Code of method "(Lorg/apache/spark/sql/catalyst/InternalRow;Lorg/apache/spark/sql/catalyst/InternalRow;)I" of class "org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificOrdering" grows beyond 64 KB
	at org.codehaus.janino.CodeContext.makeSpace(CodeContext.java:941)
	at org.codehaus.janino.CodeContext.write(CodeContext.java:854)


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



