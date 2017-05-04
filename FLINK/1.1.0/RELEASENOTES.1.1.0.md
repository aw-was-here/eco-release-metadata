
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
# Apache Flink  1.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-3608](https://issues.apache.org/jira/browse/FLINK-3608) | *Major* | **ImmutableSettings error in ElasticsearchSink**

I\'m trying to use ElasticsearchSink with Flink 0.10.2 and Elasticsearch 2.2.0, and I\'m having the following error:

java.lang.NoClassDefFoundError: org/elasticsearch/common/settings/ImmutableSettings
	at org.apache.flink.streaming.connectors.elasticsearch.ElasticsearchSink.open(ElasticsearchSink.java:177)
	at org.apache.flink.api.common.functions.util.FunctionUtils.openFunction(FunctionUtils.java:36)
	at org.apache.flink.streaming.api.operators.AbstractUdfStreamOperator.open(AbstractUdfStreamOperator.java:89)
	at org.apache.flink.streaming.runtime.tasks.StreamTask.openAllOperators(StreamTask.java:286)
	at org.apache.flink.streaming.runtime.tasks.StreamTask.invoke(StreamTask.java:213)
	at org.apache.flink.runtime.taskmanager.Task.run(Task.java:584)
	at java.lang.Thread.run(Thread.java:745)

The problem seems to be the use of the class ImmutableSettings, that has been removed since Elastisearch 2.0. I imagine that with previous versions of Elasticsearch (i.e: 1.7.1) it will work correctly.

Reference: https://github.com/elastic/elasticsearch/issues/13151

Thanks in advanced,


Carlos



