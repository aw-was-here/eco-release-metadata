
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
# Apache Spark  1.5.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-11023](https://issues.apache.org/jira/browse/SPARK-11023) | *Major* | **Error initializing SparkContext. java.net.URISyntaxException**

Simliar to SPARK-10326. [https://issues.apache.org/jira/browse/SPARK-10326?page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel&focusedCommentId=14949470#comment-14949470]


C:\WINDOWS\system32\>pyspark --master yarn-client
Python 2.7.10 \|Anaconda 2.3.0 (64-bit)\| (default, Sep 15 2015, 14:26:14) [MSC v.1500 64 bit (AMD64)]
Type "copyright", "credits" or "license" for more information.
IPython 4.0.0 – An enhanced Interactive Python.
? -\> Introduction and overview of IPython's features.
%quickref -\> Quick reference.
help -\> Python's own help system.
object? -\> Details about 'object', use 'object??' for extra details.
15/10/08 09:28:05 WARN MetricsSystem: Using default name DAGScheduler for source because spark.app.id is not set.
15/10/08 09:28:06 WARN : Your hostname, PC-509512 resolves to a loopback/non-reachable address: fe80:0:0:0:0:5efe:a5f:c318%net3, but we couldn't find any external IP address!
15/10/08 09:28:08 WARN BlockReaderLocal: The short-circuit local reads feature cannot be used because UNIX Domain sockets are not available on Windows.
15/10/08 09:28:08 ERROR SparkContext: Error initializing SparkContext.
java.net.URISyntaxException: Illegal character in opaque part at index 2: C:\spark\bin\..\python\lib\pyspark.zip
at java.net.URI$Parser.fail(Unknown Source)
at java.net.URI$Parser.checkChars(Unknown Source)
at java.net.URI$Parser.parse(Unknown Source)
at java.net.URI.\<init\>(Unknown Source)
at org.apache.spark.deploy.yarn.Client$$anonfun$setupLaunchEnv$7.apply(Client.scala:558)
at org.apache.spark.deploy.yarn.Client$$anonfun$setupLaunchEnv$7.apply(Client.scala:557)
at scala.collection.immutable.List.foreach(List.scala:318)
at org.apache.spark.deploy.yarn.Client.setupLaunchEnv(Client.scala:557)
at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:628)
at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:119)
at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:56)
at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:144)
at org.apache.spark.SparkContext.\<init\>(SparkContext.scala:523)
at org.apache.spark.api.java.JavaSparkContext.\<init\>(JavaSparkContext.scala:61)
at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
at sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)
at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)
at java.lang.reflect.Constructor.newInstance(Unknown Source)
at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:234)
at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
at py4j.Gateway.invoke(Gateway.java:214)
at py4j.commands.ConstructorCommand.invokeConstructor(ConstructorCommand.java:79)
at py4j.commands.ConstructorCommand.execute(ConstructorCommand.java:68)
at py4j.GatewayConnection.run(GatewayConnection.java:207)
at java.lang.Thread.run(Unknown Source)
15/10/08 09:28:08 ERROR Utils: Uncaught exception in thread Thread-2
java.lang.NullPointerException
at org.apache.spark.network.netty.NettyBlockTransferService.close(NettyBlockTransferService.scala:152)
at org.apache.spark.storage.BlockManager.stop(BlockManager.scala:1228)
at org.apache.spark.SparkEnv.stop(SparkEnv.scala:100)
at org.apache.spark.SparkContext$$anonfun$stop$12.apply$mcV$sp(SparkContext.scala:1749)
at org.apache.spark.util.Utils$.tryLogNonFatalError(Utils.scala:1185)
at org.apache.spark.SparkContext.stop(SparkContext.scala:1748)
at org.apache.spark.SparkContext.\<init\>(SparkContext.scala:593)
at org.apache.spark.api.java.JavaSparkContext.\<init\>(JavaSparkContext.scala:61)
at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
at sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)
at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)
at java.lang.reflect.Constructor.newInstance(Unknown Source)
at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:234)
at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
at py4j.Gateway.invoke(Gateway.java:214)
at py4j.commands.ConstructorCommand.invokeConstructor(ConstructorCommand.java:79)
at py4j.commands.ConstructorCommand.execute(ConstructorCommand.java:68)
at py4j.GatewayConnection.run(GatewayConnection.java:207)
at java.lang.Thread.run(Unknown Source)
---------------------------------------------------------------------------
Py4JJavaError Traceback (most recent call last)
C:\spark\bin\..\python\pyspark\shell.py in \<module\>()
41 SparkContext.setSystemProperty("spark.executor.uri", os.environ["SPARK\_EXECUTOR\_URI"])
42
---\> 43 sc = SparkContext(pyFiles=add\_files)
44 atexit.register(lambda: sc.stop())
45
C:\spark\python\pyspark\context.pyc in \_init\_(self, master, appName, sparkHome, pyFiles, environment, batchSize, serializer, conf, gateway, jsc, profiler\_cls)
111 try:
112 self.\_do\_init(master, appName, sparkHome, pyFiles, environment, batchSize, serializer,
--\> 113 conf, jsc, profiler\_cls)
114 except:
115 # If an error occurs, clean up in order to allow future SparkContext creation:
C:\spark\python\pyspark\context.pyc in \_do\_init(self, master, appName, sparkHome, pyFiles, environment, batchSize, serializer, conf, jsc, profiler\_cls)
168
169 # Create the Java SparkContext through Py4J
--\> 170 self.\_jsc = jsc or self.\_initialize\_context(self.\_conf.\_jconf)
171
172 # Create a single Accumulator in Java that we'll send all our updates through;
C:\spark\python\pyspark\context.pyc in \_initialize\_context(self, jconf)
222 Initialize SparkContext in function to allow subclass specific initialization
223 """
--\> 224 return self.\_jvm.JavaSparkContext(jconf)
225
226 @classmethod
C:\spark\python\lib\py4j-0.8.2.1-src.zip\py4j\java\_gateway.py in \_call\_(self, \*args)
699 answer = self.\_gateway\_client.send\_command(command)
700 return\_value = get\_return\_value(answer, self.\_gateway\_client, None,
--\> 701 self.\_fqn)
702
703 for temp\_arg in temp\_args:
C:\spark\python\lib\py4j-0.8.2.1-src.zip\py4j\protocol.py in get\_return\_value(answer, gateway\_client, target\_id, name)
298 raise Py4JJavaError(
299 'An error occurred while calling
{0} {1} {2}
.\n'.
--\> 300 format(target\_id, '.', name), value)
301 else:
302 raise Py4JError(
Py4JJavaError: An error occurred while calling None.org.apache.spark.api.java.JavaSparkContext.
: java.net.URISyntaxException: Illegal character in opaque part at index 2: C:\spark\bin\..\python\lib\pyspark.zip
at java.net.URI$Parser.fail(Unknown Source)
at java.net.URI$Parser.checkChars(Unknown Source)
at java.net.URI$Parser.parse(Unknown Source)
at java.net.URI.\<init\>(Unknown Source)
at org.apache.spark.deploy.yarn.Client$$anonfun$setupLaunchEnv$7.apply(Client.scala:558)
at org.apache.spark.deploy.yarn.Client$$anonfun$setupLaunchEnv$7.apply(Client.scala:557)
at scala.collection.immutable.List.foreach(List.scala:318)
at org.apache.spark.deploy.yarn.Client.setupLaunchEnv(Client.scala:557)
at org.apache.spark.deploy.yarn.Client.createContainerLaunchContext(Client.scala:628)
at org.apache.spark.deploy.yarn.Client.submitApplication(Client.scala:119)
at org.apache.spark.scheduler.cluster.YarnClientSchedulerBackend.start(YarnClientSchedulerBackend.scala:56)
at org.apache.spark.scheduler.TaskSchedulerImpl.start(TaskSchedulerImpl.scala:144)
at org.apache.spark.SparkContext.\<init\>(SparkContext.scala:523)
at org.apache.spark.api.java.JavaSparkContext.\<init\>(JavaSparkContext.scala:61)
at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
at sun.reflect.NativeConstructorAccessorImpl.newInstance(Unknown Source)
at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(Unknown Source)
at java.lang.reflect.Constructor.newInstance(Unknown Source)
at py4j.reflection.MethodInvoker.invoke(MethodInvoker.java:234)
at py4j.reflection.ReflectionEngine.invoke(ReflectionEngine.java:379)
at py4j.Gateway.invoke(Gateway.java:214)
at py4j.commands.ConstructorCommand.invokeConstructor(ConstructorCommand.java:79)
at py4j.commands.ConstructorCommand.execute(ConstructorCommand.java:68)
at py4j.GatewayConnection.run(GatewayConnection.java:207)
at java.lang.Thread.run(Unknown Source)
In [1]:
Reply
  
Marcelo Vanzin added a comment - 10 hours ago
Ah, that's similar but not the same bug; it's a different part of the code that only affects pyspark. Could you file a separate bug for that? This is the 

{code}
    (pySparkArchives ++ pyArchives).foreach { path =\>
      val uri = new URI(path)
{code}



