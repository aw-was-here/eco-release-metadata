
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
# Apache Ranger  2.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [RANGER-2831](https://issues.apache.org/jira/browse/RANGER-2831) | *Blocker* | **presto-server-333 start failed due to NoClassDefFoundError**

1. I pulled/built ranger master branch after this [commit\|https://github.com/apache/ranger/commit/9256a436b392e11907d1b1570d69e106c8e5dd7f], got ranger-2.1.0-SNAPSHOT-presto-plugin.tar.gz

2. Downloaded [presto-server-333\|https://prestosql.io/docs/current/installation/deployment.html], started the server, ran some queries, made sure presto-server-333 itself worked. 

3. Ran ranger-2.1.0-SNAPSHOT-presto-plugin/install.properties

4. Tried to restart presto-server-333, failed with this error:
{code:java}
// code placeholder
2020-05-19T20:29:49.784Z INFO main io.prestosql.metadata.StaticCatalogStore -- Added catalog hive using connector hive-hadoop2 --2020-05-19T20:29:49.784Z INFO main io.prestosql.metadata.StaticCatalogStore -- Added catalog hive using connector hive-hadoop2 --2020-05-19T20:29:49.785Z INFO main io.prestosql.security.AccessControlManager -- Loading system access control etc/access-control.properties --2020-05-19T20:29:49.983Z INFO main Bootstrap PROPERTY              DEFAULT  RUNTIME  DESCRIPTION2020-05-19T20:29:49.983Z INFO main Bootstrap ranger.hadoop\_config  ----     ----     Path to hadoop configuration. Defaults to presto-ranger-site.xml in classpath2020-05-19T20:29:49.983Z INFO main Bootstrap ranger.keytab         ----     ----     Keytab for authentication against Ranger2020-05-19T20:29:49.983Z INFO main Bootstrap ranger.principal      ----     ----     Principal for authentication against Ranger with keytab2020-05-19T20:29:49.983Z INFO main Bootstrap ranger.use\_ugi        false    false    Use Hadoop User Group Information instead of Presto groups2020-05-19T20:29:50.075Z ERROR main io.prestosql.server.PrestoServer javax/annotation/PostConstructjava.lang.NoClassDefFoundError: javax/annotation/PostConstruct at io.airlift.bootstrap.LifeCycleMethods.addLifeCycleMethods(LifeCycleMethods.java:65) at io.airlift.bootstrap.LifeCycleMethods.\<init\>(LifeCycleMethods.java:39) at java.base/java.util.concurrent.ConcurrentHashMap.computeIfAbsent(ConcurrentHashMap.java:1705) at io.airlift.bootstrap.LifeCycleMethodsMap.get(LifeCycleMethodsMap.java:27) at io.airlift.bootstrap.LifeCycleModule.isLifeCycleClass(LifeCycleModule.java:86) at io.airlift.bootstrap.LifeCycleModule.provision(LifeCycleModule.java:55) at com.google.inject.internal.ProvisionListenerStackCallback$Provision.provision(ProvisionListenerStackCallback.java:120) at com.google.inject.internal.ProvisionListenerStackCallback.provision(ProvisionListenerStackCallback.java:66) at com.google.inject.internal.MembersInjectorImpl.injectAndNotify(MembersInjectorImpl.java:91) at com.google.inject.internal.Initializer$InjectableReference.get(Initializer.java:245) at com.google.inject.internal.Initializer.injectAll(Initializer.java:140) at com.google.inject.internal.InternalInjectorCreator.injectDynamically(InternalInjectorCreator.java:176) at com.google.inject.internal.InternalInjectorCreator.build(InternalInjectorCreator.java:109) at com.google.inject.Guice.createInjector(Guice.java:87) at io.airlift.bootstrap.Bootstrap.initialize(Bootstrap.java:262) at org.apache.ranger.authorization.presto.authorizer.RangerSystemAccessControlFactory.create(RangerSystemAccessControlFactory.java:53) at io.prestosql.security.AccessControlManager.createSystemAccessControl(AccessControlManager.java:166) at java.base/java.util.stream.ReferencePipeline$3$1.accept(ReferencePipeline.java:195) at java.base/java.util.Collections$2.tryAdvance(Collections.java:4747) at java.base/java.util.Collections$2.forEachRemaining(Collections.java:4755) at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:484) at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:474) at java.base/java.util.stream.ReduceOps$ReduceOp.evaluateSequential(ReduceOps.java:913) at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234) at java.base/java.util.stream.ReferencePipeline.collect(ReferencePipeline.java:578) at io.prestosql.security.AccessControlManager.loadSystemAccessControl(AccessControlManager.java:142) at io.prestosql.server.PrestoServer.run(PrestoServer.java:129) at io.prestosql.$gen.Presto\_333\_\_\_\_20200519\_202943\_1.run(Unknown Source) at io.prestosql.server.PrestoServer.main(PrestoServer.java:72)Caused by: java.lang.ClassNotFoundException: javax.annotation.PostConstruct at java.base/java.net.URLClassLoader.findClass(URLClassLoader.java:471) at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:589) at io.prestosql.server.PluginClassLoader.loadClass(PluginClassLoader.java:89) at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:522) ... 29 more2020-05-19T20:29:50.076Z INFO Thread-79 io.airlift.bootstrap.LifeCycleManager JVM is shutting down, cleaning up
{code}



