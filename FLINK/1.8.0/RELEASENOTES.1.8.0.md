
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
# Apache Flink  1.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-11026](https://issues.apache.org/jira/browse/FLINK-11026) | *Major* | **Rework creation of sql-client connector/format jars**

The naming scheme for kafka/elasticsearch6 sql-jars has been changed. 

In maven terms, they no longer have the "sql-jar" qualifier and the artifactId is now prefixed with "flink-sql" instead of "flink", e.g., "flink-sql-connector-kafka...".


---

* [FLINK-11266](https://issues.apache.org/jira/browse/FLINK-11266) | *Major* | **Only release hadoop-free Flink**

Convenience binaries that include hadoop are no longer released.

If a deployment relies on flink-shaded-hadoop2 being included in flink-dist, then it must be manually downloaded and copied into the /lib directory.
Alternatively, a Flink distribution that includes hadoop can be built by packaging flink-dist and activating the "include-hadoop" maven profile.

As hadoop is no longer included in flink-dist by default, specifying "-DwithoutHadoop" when packaging flink-dist no longer impacts the build.


---

* [FLINK-11064](https://issues.apache.org/jira/browse/FLINK-11064) | *Major* | **Setup a new flink-table module structure**

Users that had a \`flink-table\` dependency before need to update their dependencies to \`flink-table-planner\` and for Java \`flink-table-api-java-bridge\` or for Scala \`flink-table-api-scala-bridge\`.


---

* [FLINK-11445](https://issues.apache.org/jira/browse/FLINK-11445) | *Major* | **Deprecate static methods in TableEnvironments**

In order to separate API from actual implementation, the static methods TableEnvironment.getTableEnvironment() are deprecated. Use Batch/StreamTableEnvironment.create() instead.


---

* [FLINK-11522](https://issues.apache.org/jira/browse/FLINK-11522) | *Major* | **Deprecate ExternalCatalogTable.builder()**

Use new ExternalCatalogTableBuilder() instead for now. This is just a temporary deprecation to unblock other tasks.


---

* [FLINK-11539](https://issues.apache.org/jira/browse/FLINK-11539) | *Major* | **Add TypeSerializerSnapshot for TraversableSerializer**

Savepoints from Flink 1.2 that contain a Scala TraversableSerializer are not compatible with Flink 1.8 anymore because of an update in this serializer.


---

* [FLINK-11716](https://issues.apache.org/jira/browse/FLINK-11716) | *Minor* | **Introduce Task Manager configuration option to customize address binding mechanism**

\`TaskManagers\` now bind to the host IP address instead of the hostname by default . This behaviour can be controlled by the configuration option \`taskmanager.network.bind-policy\`. If your Flink cluster should experience inexplicable connection problems after upgrading, try to set \`taskmanager.network.bind-policy: name\` in your \`flink-conf.yaml\` to return to the pre-1.8 behaviour.


---

* [FLINK-9803](https://issues.apache.org/jira/browse/FLINK-9803) | *Major* | **Drop canEqual() from TypeSerializer**

The {{canEqual}} method is removed from the {{TypeSerializer}} abstraction.
The "canEqual()" methods are usually used to make proper equality checks across hierarchies of types. The {{TypeSerializer}} actually doesn't require this property, so the method is now removed.


---

* [FLINK-11447](https://issues.apache.org/jira/browse/FLINK-11447) | *Blocker* | **Deprecate "new Table(TableEnvironment, String)"**

Flink 1.8 deprecates direct usage of the constructor of the \`Table\` class in the Table API. This constructor would previously be used to perform a join with a \_lateral table\_. You should now use \`table.joinLateral()\` or \`table.leftOuterJoinLateral()\` instead.

This change is necessary for converting the Table class into an interface, which will make the API more maintainable and cleaner in the future.


---

* [FLINK-11073](https://issues.apache.org/jira/browse/FLINK-11073) | *Critical* | **Make serializers immutable / provide option TypeSerializerSchemaCompatibility.compatibleWithReconfiguredSerializer**

The {{CompositeSerializerSnapshot}} utility class has been removed. You should now use {{CompositeTypeSerializerSnapshot}} instead, for snapshots of composite serializers that delegate serialization to multiple nested serializers. Please see https://ci.apache.org/projects/flink/flink-docs-release-1.8/dev/stream/state/custom\_serialization.html#implementing-a-compositetypeserializersnapshot for instructions on using {{CompositeTypeSerializerSnapshot}}.


---

* [FLINK-9964](https://issues.apache.org/jira/browse/FLINK-9964) | *Major* | **Add a CSV table format factory**

This release introduces a new format descriptor for CSV files that is compliant
with RFC 4180. The new descriptor is available as
\`org.apache.flink.table.descriptors.Csv\`. For now, this can only be used
together with the Kafka connector. The old descriptor is availabla as
\`org.apache.flink.table.descriptors.OldCsv\` for use with file system connectors.


---

* [FLINK-11752](https://issues.apache.org/jira/browse/FLINK-11752) | *Minor* | **Move flink-python to opt**

flink-python has been moved from lib to opt and is not available on the default class path any more.


---

* [FLINK-11755](https://issues.apache.org/jira/browse/FLINK-11755) | *Blocker* | **Remove ensureCompatibility method from TypeSerializer abstraction**

The {{ensureCompatibility}} method have been removed from {{TypeSerializer}}. All other related classes in the method signature, such as {{CompatibilityResult}}, have also been removed.
Please refer to the class-level Javadoc of {{TypeSerializer}} for instructions on how you should update your serializer implementations to adapt to the new serialization compatibility abstractions {{TypeSerializerSnapshot}} and {{TypeSerializerSchemaCompatibility}}.


---

* [FLINK-10342](https://issues.apache.org/jira/browse/FLINK-10342) | *Blocker* | **Kafka duplicate topic consumption when topic name is changed**

Starting from 1.8.0, the {{FlinkKafkaConsumer}} now always filter out restored partitions that are no longer associated with a specified topic to subscribe to in the restored execution. This behaviour did not exist in previous versions of the {{FlinkKafkaConsumer}}. If you wish to retain the previous behaviour, please use the {{disableFilterRestoredPartitionsWithSubscribedTopics}} configuration method on the {{FlinkKafkaConsumer}}.


---

* [FLINK-11785](https://issues.apache.org/jira/browse/FLINK-11785) | *Major* | **Replace case class Null(type) in Table API**

Null literals in the Table API need to be defined with \`nullOf(type)\` instead of \`Null(type)\` from now on. The old approach is deprecated.


---

* [FLINK-11533](https://issues.apache.org/jira/browse/FLINK-11533) | *Minor* | **Retrieve job class name from JAR manifest in ClassPathJobGraphRetriever**

The container entry point will scan the Flink class path for the job jar. Therefore, the --job-classname command line argument is now optional.


---

* [FLINK-11781](https://issues.apache.org/jira/browse/FLINK-11781) | *Major* | **Reject "DISABLED" as value for yarn.per-job-cluster.include-user-jar**

Remove "DISABLED" from possible values for config option yarn.per-job-cluster.include-user-jar. This feature is broken beginning from Flink 1.5 anyways.


---

* [FLINK-11918](https://issues.apache.org/jira/browse/FLINK-11918) | *Major* | **Deprecated Window and Rename it to GroupWindow**

The window classes org.apache.flink.table.api.{java, scala}.{Tumble, Session, Slide, Over} have been moved to org.apache.flink.table.api.{Tumble, Session, Slide, Over}


---

* [FLINK-11950](https://issues.apache.org/jira/browse/FLINK-11950) | *Blocker* | **Add missing dependencies in NOTICE file of flink-dist.**

Add \`frocksdbjni\` dependency in NOTICE file of flink-dist.


---

* [FLINK-11971](https://issues.apache.org/jira/browse/FLINK-11971) | *Major* | **Fix \`Command: start\_kubernetes\_if\_not\_ruunning failed\` error**

Fix kubernetes check in end-to-end test.


---

* [FLINK-11972](https://issues.apache.org/jira/browse/FLINK-11972) | *Major* | **The classpath is missing the \`flink-shaded-hadoop2-uber-2.8.3-1.8.0.jar\` JAR during the end-to-end test.**

Add necessary notes about running streaming bucketing end-to-end test in README


---

* [FLINK-12476](https://issues.apache.org/jira/browse/FLINK-12476) | *Major* | **[State TTL] Consider setting a default background cleanup strategy in StateTtlConfig**

The background cleanup for state with time-to-live can be enabled with the method StateTtlConfig#cleanupInBackground() now. If the state backend supports the background cleanup, the default strategy will kick in.



