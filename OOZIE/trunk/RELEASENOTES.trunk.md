
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
#  trunk Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [OOZIE-2191](https://issues.apache.org/jira/browse/OOZIE-2191) | *Major* | **Upgrade jackson version for hadoop-2 profile**

in hadoop 2,  jackson version upgraded to 1.9.13
https://issues.apache.org/jira/browse/HADOOP-10104

oozie currently uses 1.8.8 (jackson-mapper-asl, jackson-core-asl), and when both versions mixed,  cause the following exception.  this patch is to upgrade version to 1.9.13 accordingly for hadoop-2 profile.
{code}
Caused by: java.lang.NoSuchFieldError: EXTERNAL\_PROPERTY
        at org.codehaus.jackson.map.introspect.JacksonAnnotationIntrospector.\_findTypeResolver(JacksonAnnotationIntrospector.java:781) ~[na:na]
        at org.codehaus.jackson.map.introspect.JacksonAnnotationIntrospector.findPropertyTypeResolver(JacksonAnnotationIntrospector.java:214) ~[na:na]
        at org.codehaus.jackson.map.ser.BeanSerializerFactory.findPropertyTypeSerializer(BeanSerializerFactory.java:374) ~[na:na]
        at org.codehaus.jackson.map.ser.BeanSerializerFactory.\_constructWriter(BeanSerializerFactory.java:778) ~[na:na]
        at org.codehaus.jackson.map.ser.BeanSerializerFactory.findBeanProperties(BeanSerializerFactory.java:590) ~[na:na]
        at org.codehaus.jackson.map.ser.BeanSerializerFactory.constructBeanSerializer(BeanSerializerFactory.java:434) ~[na:na]
        at org.codehaus.jackson.map.ser.BeanSerializerFactory.findBeanSerializer(BeanSerializerFactory.java:347) ~[na:na]
        at org.codehaus.jackson.map.ser.BeanSerializerFactory.createSerializer(BeanSerializerFactory.java:291) ~[na:na]
        at org.codehaus.jackson.map.ser.StdSerializerProvider.\_createUntypedSerializer(StdSerializerProvider.java:782) ~[na:na]
        at org.codehaus.jackson.map.ser.StdSerializerProvider.\_createAndCacheUntypedSerializer(StdSerializerProvider.java:735) ~[na:na]
        at org.codehaus.jackson.map.ser.StdSerializerProvider.findValueSerializer(StdSerializerProvider.java:344) ~[na:na]
        at org.codehaus.jackson.map.ser.StdSerializerProvider.findTypedValueSerializer(StdSerializerProvider.java:420) ~[na:na]
        at org.codehaus.jackson.map.ser.StdSerializerProvider.\_serializeValue(StdSerializerProvider.java:601) ~[na:na]
        at org.codehaus.jackson.map.ser.StdSerializerProvider.serializeValue(StdSerializerProvider.java:256) ~[na:na]
        at org.codehaus.jackson.map.ObjectMapper.\_configAndWriteValue(ObjectMapper.java:2575) ~[na:na]
        at org.codehaus.jackson.map.ObjectMapper.writeValue(ObjectMapper.java:2065) ~[na:na]
        at org.apache.oozie.util.FixedJsonInstanceSerializer.serialize(FixedJsonInstanceSerializer.java:65) ~[na:na]
        at org.apache.curator.x.discovery.details.ServiceDiscoveryImpl.internalRegisterService(ServiceDiscoveryImpl.java:166) ~[na:na]
        at org.apache.curator.x.discovery.details.ServiceDiscoveryImpl.registerService(ServiceDiscoveryImpl.java:150) ~[na:na]
        at org.apache.oozie.util.ZKUtils.advertiseService(ZKUtils.java:217) ~[na:na]
        at org.apache.oozie.util.ZKUtils.<init>(ZKUtils.java:141) ~[na:na]
        at org.apache.oozie.util.ZKUtils.register(ZKUtils.java:154) ~[na:na]
        at org.apache.oozie.service.ZKLocksService.init(ZKLocksService.java:70) ~[na:na]
        at org.apache.oozie.service.Services.setServiceInternal(Services.java:386) ~[na:na]
        at org.apache.oozie.service.Services.setService(Services.java:372) ~[na:na]
        at org.apache.oozie.service.Services.loadServices(Services.java:305) ~[na:na]
        at org.apache.oozie.service.Services.init(Services.java:213) ~[na:na]
        at com.yahoo.oozie.servlet.YServicesLoader.contextInitialized(YServicesLoader.java:43) ~[na:na]
{code}


---

* [OOZIE-2188](https://issues.apache.org/jira/browse/OOZIE-2188) | *Trivial* | **Fix typos in twiki documentation**

Fixes some minor typos in the documentation.


---

* [OOZIE-2186](https://issues.apache.org/jira/browse/OOZIE-2186) | *Major* | **Upgrade Tomcat to 6.0.43**

We should upgrade tomcat to 6.0.43, which includes bug and security fixes.


---

* [OOZIE-2184](https://issues.apache.org/jira/browse/OOZIE-2184) | *Minor* | **Change default value of action tmp dir removal to true**

Can we have the following property set to true by default in oozie-default.xml?

oozie.action.ssh.delete.remote.tmp.dir

This is currently set to false and this results in Oozie leaving unnecessary remnant directories under home after an SSH action is run.


---

* [OOZIE-2183](https://issues.apache.org/jira/browse/OOZIE-2183) | *Major* | **provide an option to disable cleanup for output dataset in rerun**

currently unless nocleanup option is explicitly used in CLI command when rerun coordinator, output dataset is removed, default is cleanup.  This is not desirable for some data pipeline use cases where output datasets are shared among multiple jobs, and accidental deletion by rerun (when failing to pass nocleanup option from CLI) affect the other jobs.  

this jira is to add cleanup attribute to disable cleanup in coordinator.xml


---

* [OOZIE-2181](https://issues.apache.org/jira/browse/OOZIE-2181) | *Major* | **JsonToBean has some missing and incorrect mappings**

{{JsonToBean}} has code to map from Bundle Job, Coordinator Job, etc JSON into the associated {{BundleJob}}, {{CoordinatorJob}}, etc classes.  

If a mapping is missing, and you try to call a getter, the code will compile but you'll get a {{RuntimeException}}.  For example; the mapping for {{BundleJob.getAcl()}} is missing.  Specifically, when you use this code:
{code:java}
BundleJob job = client.getBundleJobInfo(jobId);
String acl = job.getAcl();
{code}
you get this exception:
{noformat}
Exception in thread "main" java.lang.RuntimeException: Undefined method mapping: getAcl
	at org.apache.oozie.client.rest.JsonToBean$JsonInvocationHandler.invoke(JsonToBean.java:217)
	at com.sun.proxy.$Proxy4.getAcl(Unknown Source)
        ...
{noformat}

There are a few inconsistencies including extra mappings, missing mappings, and missing information from the server.

We should:
# Fix these inconsistencies.
# Write tests to prevent this sort of thing from happening in the future.


---

* [OOZIE-2177](https://issues.apache.org/jira/browse/OOZIE-2177) | *Major* | **Parameterize javadoc plugin configuration**

this patch is to add <additionalparam> to org.apache.maven.plugins, and allow it to be overwritten by -D option from CLI.

this is necessary when building oozie on JDK8,  since it hit following javadoc error, which fails builds
{quote}
[ERROR] /Users/egashira/Projects/git/aoozie-cms/client/src/main/java/org/apache/oozie/cli/OozieCLI.java:205: error: self-closing element not allowed
[ERROR] * <p/>
{quote}

http://stackoverflow.com/questions/26049329/javadoc-in-jdk-8-invalid-self-closing-element-not-allowed
JDK 8 it has been decided that tags like <br /> and <p /> should generate errors, because they are invalid (strict) HTML 4.  

this can be avoided by disabling specific checks, by passing -Xdoclint:none to javadoc plugin parameter.


---

* [OOZIE-2174](https://issues.apache.org/jira/browse/OOZIE-2174) | *Major* | **Add missing admin commands to OozieClient and OozieCLI**

{{OozieClient}} and {{OozieCLI}} are missing some of the admin commands that have been available over the REST API for a long time.  We should add them:
- Get Configuration
- Get OS Env
- Get Java System Properties
- Get Instrumentation/Metrics
-- For this one, we can either make them separate commands or one command that tries one endpoint then the other.  I'll see what works best.


---

* [OOZIE-2171](https://issues.apache.org/jira/browse/OOZIE-2171) | *Major* | **Some error code messages are not parsed correctly due to unescaped single quote**

We noticed that the improved whitelist error messages added by OOZIE-2072 weren't being printed properly:
e.g.
{code}
Error: E0901 : E0901: NameNode [localhost:8020] not allowed, not in
Oozies whitelist. Allowed values are: {1}
{code}

Turns out that {{MessageFormat}} requires that single quotes are escaped by another single quote; otherwise, it:
- doesn't render the single quote
- doesn't parse the \{#\} tokens after the single quote.

For example, 
{code}
foo("{0} don't have {1}", "I", "a problem")
{code}
would render as
{code}
"I dont have {1}"
{code}
We have to replace {{'}} with {{''}} to escape it.


---

* [OOZIE-2170](https://issues.apache.org/jira/browse/OOZIE-2170) | *Major* | **Oozie should automatically set configs to make Spark jobs show up in the Spark History Server**

If you use "yarn-cluster" for the Spark action's master, the Spark jobs don't show up in the Spark History Server or properly link to it from the Spark AM.

The user needs to set this in their Spark action in the workflow.xml:
{code:xml}
<spark-opts>--conf spark.yarn.historyServer.address=http://SPH18088 --conf spark.eventLog.dir=hdfs://NN:8020/user/spark/applicationHistory --conf spark.eventLog.enabled=true</spark-opts>
{code}

It would be nice if Oozie did this automatically via some oozie-site.xml config(s).  We could do something similar how the hadoop configs are setup where it will load a Spark .conf file from a directory based on the RM specified in the <job-tracker>.

While we're at it, it might be good to document how to use Spark on YARN:
# Include the spark-assembly jar with your workflow (this is unfortunately not published in maven)
# Specify "yarn-cluster" as the master

Also, the Spark example should delete the output dir in {{<prepare>}}


---

* [OOZIE-2169](https://issues.apache.org/jira/browse/OOZIE-2169) | *Major* | **Fix return type for fs:dirSize, fs:fileSize and fs:blockSize in WF spec**

Currently WorkflowFunctionalSpec says that return type for these functions is boolean
But it should be long
https://oozie.apache.org/docs/4.1.0/WorkflowFunctionalSpec.html#a4.2.7\_HDFS\_EL\_Functions


---

* [OOZIE-2167](https://issues.apache.org/jira/browse/OOZIE-2167) | *Major* | **TestCoordMaterializeTransitionXCommand fails**

*{{TestCoordMaterializeTransitionXCommand.testMaterizationLookup}}*
{noformat}
junit.framework.AssertionFailedError: expected:<Mon Mar 09 17:21:12 PDT 2015> but was:<Mon Mar 09 16:21:12 PDT 2015>
	at junit.framework.Assert.fail(Assert.java:50)
	at junit.framework.Assert.failNotEquals(Assert.java:287)
	at junit.framework.Assert.assertEquals(Assert.java:67)
	at junit.framework.Assert.assertEquals(Assert.java:74)
	at org.apache.oozie.command.coord.TestCoordMaterializeTransitionXCommand.testMaterizationLookup(TestCoordMaterializeTransitionXCommand.java:577)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
{noformat}

*{{TestCoordMaterializeTransitionXCommand.testMaterizationEndOfMonths}}*
{noformat}
junit.framework.AssertionFailedError: expected:<2> but was:<3>
	at junit.framework.Assert.fail(Assert.java:50)
	at junit.framework.Assert.failNotEquals(Assert.java:287)
	at junit.framework.Assert.assertEquals(Assert.java:67)
	at junit.framework.Assert.assertEquals(Assert.java:199)
	at junit.framework.Assert.assertEquals(Assert.java:205)
	at org.apache.oozie.command.coord.TestCoordMaterializeTransitionXCommand.testMaterizationEndOfMonths(TestCoordMaterializeTransitionXCommand.java:725)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
{noformat}


---

* [OOZIE-2164](https://issues.apache.org/jira/browse/OOZIE-2164) | *Major* | **make master parameterizable in Spark action example**

In the example added to demonstrate the new Spark action, the Spark master is hardcoded as "local[*]". It would be useful to make the master parameterizable, so users can readily run the example with Spark on YARN or a Spark standalone cluster.


---

* [OOZIE-2160](https://issues.apache.org/jira/browse/OOZIE-2160) | *Major* | **Support attachment in email action**

Make email action able to attach a file on HDFS.


---

* [OOZIE-2158](https://issues.apache.org/jira/browse/OOZIE-2158) | *Major* | **Overrides in action conf in streaming action do not work**

User setting in action config like mapred.input.format.class=org.apache.hadoop.mapred.SequenceFileInputFormat does not take effect any more and is broken due to OOZIE-2102


---

* [OOZIE-2156](https://issues.apache.org/jira/browse/OOZIE-2156) | *Major* | **override hive.querylog.location in hive-site.xml**

OOZIE-2068 allow users to fetch hive-site.xml from sharelib.
but user still have to override hive.querylog.location in their workflow definition (to point to current working directory on compute node), otherwise it fails.  Oozie should override for user.


---

* [OOZIE-2155](https://issues.apache.org/jira/browse/OOZIE-2155) | *Blocker* | **Incorrect DST Shifts are occurring based on the Database timezone**

We discovered a critical bug where incorrect Daylight Saving Time shifts were occurring based on the Database timezone.

Try running this Coordinator:
{code:xml}
<coordinator-app name=“foo” frequency="${coord:hours(1)}" start="2014-11-02T04:15Z" end="2014-11-02T16:00Z" timezone=“UTC” xmlns="uri:oozie:coordinator:0.1">
   <controls>
      <concurrency>10</concurrency>
   </controls>
   <action>
      <workflow>
         <app-path>${appPath}</app-path>
         <configuration>
            <property>
               <name>jobTracker</name>
               <value>${jobTracker}</value>
            </property>
            <property>
               <name>nameNode</name>
               <value>${nameNode}</value>
            </property>
            <property>
               <name>queueName</name>
               <value>${queueName}</value>
            </property>
         </configuration>
      </workflow>
   </action>     
</coordinator-app>
{code}
Note that it runs over a DST shift (at least in most US timezones).

Here's a sample of some of the actions, along with their Nominal Times:
{noformat}
0000013-150212140838307-oozie-rkan-C@4     2014-11-02 07:15 GMT 
0000013-150212140838307-oozie-rkan-C@6     2014-11-02 09:15 GMT 
0000013-150212140838307-oozie-rkan-C@5     2014-11-02 09:15 GMT 
0000013-150212140838307-oozie-rkan-C@7     2014-11-02 10:15 GMT 
{noformat}
Note that actions 5 and 6 have the same time.  This is incorrect because the times are in GMT (with no DST).  I've also confirmed via a debugger that these dates have the same number of seconds since epoch (so it's not just a rendering issue).  
By the way, if you're in a different timezone, you'll see this problem occur on different actions because the issue is related to the timezone that your database is in.  It depends on when the DST shift occurs in your timezone; for example, in "America/New\_York", it happens with actions 2 and 3.  
On that note, if I ask Oozie to use "America/Los\_Angeles" to print the dates, I get this:
{noformat}
0000013-150212140838307-oozie-rkan-C@4     2014-11-02 00:15 PDT 
0000013-150212140838307-oozie-rkan-C@6     2014-11-02 01:15 PST 
0000013-150212140838307-oozie-rkan-C@5     2014-11-02 01:15 PST 
0000013-150212140838307-oozie-rkan-C@7     2014-11-02 02:15 PST 
{noformat}
Action 5's nominal time should be {{2014-11-02 01:15 PDT}}, not {{2014-11-02 01:15 PST}}.  

Using the debugger some more, I verified that Oozie is creating the nominal times correctly, and writing them to the database correctly (at least, it's converting them to Java's SQL TimeStamp objects correctly; OpenJPA handles writing them).  But when the problematic value is read back from the database, it has the wrong value!

Here's something interesting from the [MySQL documentation|http://dev.mysql.com/doc/refman/5.5/en/datetime.html]:
{quote}MySQL converts TIMESTAMP values from the current time zone to UTC for storage, and back from UTC to the current time zone for retrieval. (This does not occur for other types such as DATETIME.) By default, the current time zone for each connection is the server's time. The time zone can be set on a per-connection basis. As long as the time zone setting remains constant, you get back the same value you store. If you store a TIMESTAMP value, and then change the time zone and retrieve the value, the retrieved value is different from the value you stored. This occurs because the same time zone was not used for conversion in both directions.
{quote}
So, I think what's happening is that it's interpreting everything in PST, and not in PST and PDT depending on the time itself.  Ideally, it would just store the time since epoch, like Java's Date does, but it's doing this broken interpretation instead.  In fact, this [Stack Overflow|http://stackoverflow.com/questions/1646171/mysql-datetime-fields-and-daylight-savings-time-how-do-i-reference-the-extra/1650910#1650910] I found talks about this problem.

I tried to create a unit test to show the problem without all the action stuff, but it seems like HSQLDB doesn't have this problem, so the test passes.  I've confirmed that this affects Derby and MySQL; I'm not sure about Postgres, Oracle, or SQLServer.

I was able to find a workaround for Derby and one of my colleagues found one for MySQL:
- For Derby, you just need to change the JVM's timezone to GMT (see [here|http://objectmix.com/apache/647950-moving-derby-database-across-timezones.html]).  All you have to do is add {{-Duser.timezone=GMT}} to {{CATALINA\_OPTS}}.
- For MySQL, you can either change the global timezone to GMT (which the DB admin probably won't go for), or you can add {{useLegacyDatetimeCode=false&serverTimezone=GMT}} to JDBC URL.  For example:
{code:xml}
<property>
   <name>oozie.service.JPAService.jdbc.url</name>
   <value>jdbc:mysql://HOST/oozie?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=false&serverTimezone=GMT</value>
</property>
{code}
I imagine the Derby workaround won't work for anything else, but perhaps the MySQL workaround would?  

The easiest way to fix this is to add the {{user.timezone}} thing (to fix Derby), and have Oozie always add the JDBC configs to the JDBC URL (for the others).  If Oracle, Postgres, and SQLServer don't support that, we'll have to come up with other ideas.  The other ideas I had were to replace TIMESTAMP with DATETIME or the SQL equivalent of {{long}}; though these have the downside of being schema changes and possibly other side effects.

I have some homework for everyone :)
Please check if the DB type listed below is affected by this, and if so, does the above workaround (or some  similar configs) fix it?
- [~bowenzhangusa]: SQLServer
- [~chitnis], [~puru], [~rohini], or [~egashira]: Oracle
- Me: Postgres


---

* [OOZIE-2153](https://issues.apache.org/jira/browse/OOZIE-2153) | *Major* | **modify HCatCredentialHelper to use HCatClient**

use HCatClient instead of HiveMetaStoreClient in HCatCredentialHelper.
at rolling upgrade of hive(HIVE-9583), users of HCatClient are protected but not HiveMetaStoreClient


---

* [OOZIE-2147](https://issues.apache.org/jira/browse/OOZIE-2147) | *Critical* | **Oozie upgrade from 4.0.0 to 4.1.0 fails with CLOBs of zero length with Oracle DB**

When upgrading from 4.0.0 to 4.1.0 the upgrade fails when the DB contains CLOBS of zero length with the following error

ERROR:
ORA-22994: source offset is beyond the end of the source LOB
ORA-06512: at "SYS.DBMS\_LOB", line 978

The reason for this is that DBMS\_LOB.CONVERTTOBLOB does not handle zero length CLOBs correctly. 

The fix is to explicitly check for the lob.length and skip those when doing the conversion


---

* [OOZIE-2145](https://issues.apache.org/jira/browse/OOZIE-2145) | *Critical* | **ZooKeeper paths should start with a "/"**

If you try to use a newer version of Curator (say 2.7.1) with Oozie, you'll run into some Exceptions like this:
{noformat}
org.apache.oozie.service.ServiceException: E1700: Issue communicating with ZooKeeper: Path must start with / character
        at org.apache.oozie.service.ZKUUIDService.init(ZKUUIDService.java:84)
        at org.apache.oozie.service.TestZKUUIDService.testRegisterUnregister(TestZKUUIDService.java:54)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at junit.framework.TestCase.runTest(TestCase.java:168)
        at junit.framework.TestCase.runBare(TestCase.java:134)
        at junit.framework.TestResult$1.protect(TestResult.java:110)
        at junit.framework.TestResult.runProtected(TestResult.java:128)
        at junit.framework.TestResult.run(TestResult.java:113)
        at junit.framework.TestCase.run(TestCase.java:124)
        at junit.framework.TestSuite.runTest(TestSuite.java:243)
        at junit.framework.TestSuite.run(TestSuite.java:238)
        at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
        at org.junit.runners.Suite.runChild(Suite.java:128)
        at org.junit.runners.Suite.runChild(Suite.java:24)
        at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
        at java.util.concurrent.FutureTask.run(FutureTask.java:262)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.IllegalArgumentException: Path must start with / character
        at org.apache.curator.utils.PathUtils.validatePath(PathUtils.java:54)
        at org.apache.curator.framework.recipes.atomic.DistributedAtomicValue.<init>(DistributedAtomicValue.java:74)
        at org.apache.curator.framework.recipes.atomic.DistributedAtomicLong.<init>(DistributedAtomicLong.java:66)
        at org.apache.oozie.service.ZKUUIDService.init(ZKUUIDService.java:79)
        ... 22 more
{noformat}

There's a couple paths that we're not properly starting with a "/".


---

* [OOZIE-2142](https://issues.apache.org/jira/browse/OOZIE-2142) | *Major* | **Changing the JT whitelist causes running Workflows to stay RUNNING forever**

If you change the JT whitelist while a workflow is running (and restart Oozie), that workflow will stay RUNNING forever.  The correct behavior should be the same as if the JT is unavailable: Oozie retries a few times and SUSPENDs the workflow.  Then the user should either put it back into the whitelist and resume, or simply kill it.

There might be multiple ways to reproduce, but here's one:
# Submit a workflow that has enough actions to run for a while
# Suspend the workflow
# Change the JT whitelist
# Restart Oozie
# Resume the workflow
You'll get errors about the whitelist, but it won't ever transition out of RUNNING


---

* [OOZIE-2133](https://issues.apache.org/jira/browse/OOZIE-2133) | *Major* | **Support getting ATS delegation tokens for tez jobs**

    Need a new server side option to enable getting delegation tokens from ATS (Application Timeline Server - generic history server for YARN Apps) for tez jobs. Putting yarn.timeline-service.enabled=true in yarn-site.xml will enable it for mapreduce jobs as well which is not needed. There are fixes being done in future releases of YARN and TEZ to not fail but just warn and proceed if they could not talk to ATS server.  Since that is not available now and ATS is not stable yet in Hadoop 2.6, it is preferable to use it only for Tez jobs and not impact mapreduce jobs as jobs will fail if ATS token could not be fetched.


---

* [OOZIE-2132](https://issues.apache.org/jira/browse/OOZIE-2132) | *Major* | **FS actions are not retried**

fs actions are not retried even when user explicitly set retry-max/interval.


---

* [OOZIE-2131](https://issues.apache.org/jira/browse/OOZIE-2131) | *Major* | **Add flag to sqoop action to skip hbase delegation token generation**

SQOOP-2057 adds a flag to skip hbase delegation token generation in Sqoop. Oozie generates this token already, so sqoop shouldn't generate another one.


---

* [OOZIE-2127](https://issues.apache.org/jira/browse/OOZIE-2127) | *Major* | **Add created time to RecoveryService WF queries**

   Scanning the whole workflow actions table takes time. Can use created time to further filter and if that is defined as the partition column it gives more performance. Setting the default value as 7 days as jobs don't usually run longer than that and also a delegation token cannot be renewed more than 7 days by default for secure clusters.


---

* [OOZIE-2126](https://issues.apache.org/jira/browse/OOZIE-2126) | *Major* | **SSH action can be too fast for Oozie sometimes**

We've seen a timing problem with the SSH action where the callback comes back too fast, before the action has transitioned to RUNNING and is still in PREP.  This causes Oozie to ignore the callback, which means it won't find out that the action completed until it manually checks (default=10min).  This happened in an HA setup, but I think it could happen even without HA.  Adding a 30 second delay into the ssh scripts fixed the problem, but ideally we should come up with a better solution.

Here's the relevant logs:
{noformat}
2015-01-16 18:00:12,916 INFO org.apache.oozie.action.ssh.SshActionExecutor: SERVER[FOO] USER[foo] GROUP[-] TOKEN[] APP[${job\_name}] JOB[0000027-150113223634420-oozie-oozi-W] ACTION[0000027-150113223634420-oozie-oozi-W@action-1] start() begins
2015-01-16 18:00:12,917 INFO org.apache.oozie.action.ssh.SshActionExecutor: SERVER[FOO] USER[foo] GROUP[-] TOKEN[] APP[${job\_name}] JOB[0000027-150113223634420-oozie-oozi-W] ACTION[0000027-150113223634420-oozie-oozi-W@action-1] Attempting to copy ssh base scripts to remote host [foo@bar.com]
2015-01-16 18:00:15,769 INFO org.apache.oozie.servlet.CallbackServlet: SERVER[FOO] USER[-] GROUP[-] TOKEN[-] APP[-] JOB[0000027-150113223634420-oozie-oozi-W] ACTION[0000027-150113223634420-oozie-oozi-W@action-1] callback for action [0000027-150113223634420-oozie-oozi-W@action-1]
2015-01-16 18:00:15,774 ERROR org.apache.oozie.command.wf.CompletedActionXCommand: SERVER[FOO] USER[-] GROUP[-] TOKEN[] APP[-] JOB[0000027-150113223634420-oozie-oozi-W] ACTION[0000027-150113223634420-oozie-oozi-W@action-1] XException,
org.apache.oozie.command.CommandException: E0800: Action it is not running its in [PREP] state, action [0000027-150113223634420-oozie-oozi-W@action-1]
        at org.apache.oozie.command.wf.CompletedActionXCommand.eagerVerifyPrecondition(CompletedActionXCommand.java:77)
        at org.apache.oozie.command.XCommand.call(XCommand.java:251)
        at org.apache.oozie.service.CallableQueueService$CallableWrapper.run(CallableQueueService.java:174)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{noformat}


---

* [OOZIE-2123](https://issues.apache.org/jira/browse/OOZIE-2123) | *Major* | **Disable launcher uber mode if classloader options are set**

classloader options include mapreduce.job.classloader, mapreduce.user.classpath.first


---

* [OOZIE-2122](https://issues.apache.org/jira/browse/OOZIE-2122) | *Major* | **fix test case failure of TestLiteWorkflowAppService**

when running against hadoop-2
{code}
java.lang.AssertionError
	at org.apache.oozie.service.TestLiteWorkflowAppService.testCreateprotoConfWithMulipleLibPath(TestLiteWorkflowAppService.java:462)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at junit.framework.TestCase.runTest(TestCase.java:168)
{code}


---

* [OOZIE-2121](https://issues.apache.org/jira/browse/OOZIE-2121) | *Trivial* | **CoordinatorFunctionalSpec 4.4.1.1 swap Value and First Occurrence line 4 in example table**

CoordinatorFunctionalSpec 4.4.1.1 
swap Value and First Occurrence on line 4 in example table
https://oozie.apache.org/docs/4.1.0/CoordinatorFunctionalSpec.html#a4.4.1.1.\_The\_coord:daysint\_n\_EL\_function

now
{code}
2009-03-08T08:00Z 	UTC 	${coord:days(1)} 	2009-03-08T08:00Z 	1440
{code}

should be 
{code}
2009-03-08T08:00Z 	UTC 	${coord:days(1)} 	1440  2009-03-08T08:00Z
{code}


---

* [OOZIE-2120](https://issues.apache.org/jira/browse/OOZIE-2120) | *Major* | **Many JPAExecutor names are wrong**

Many of the JPAExecutor classes have the wrong name in {{getName()}} due to copy-pasting. We should fix these to make metrics/instrumentation correct.

For example, in {{BundleJobsDeleteJPAExecutor.java}}, we have:
{code:java}
public String getName() {
    return "CoordJobsDeleteJPAExecutor";
}
{code}


---

* [OOZIE-2119](https://issues.apache.org/jira/browse/OOZIE-2119) | *Major* | **Distcp action fails when -D option in arguments**

distcp action failed with "Returned value from distcp is non-zero (-1)" when -D option in arguments.
regression caused by OOZIE-1728


---

* [OOZIE-2113](https://issues.apache.org/jira/browse/OOZIE-2113) | *Major* | **Oozie Command Line Utilities are failing as hadoop-auth jar not found**

Oozie Command Line options are failing since hadoop auth jar is missing in oozie class path . Exception while running examples
Exception in thread "main" java.lang.NoClassDefFoundError: org/apache/hadoop/security/authentication/client/AuthenticationException
	at org.apache.oozie.cli.OozieCLI.createXOozieClient(OozieCLI.java:858)
	at org.apache.oozie.cli.OozieCLI.jobCommand(OozieCLI.java:901)
	at org.apache.oozie.cli.OozieCLI.processCommand(OozieCLI.java:620)
	at org.apache.oozie.cli.OozieCLI.run(OozieCLI.java:573)
	at org.apache.oozie.cli.OozieCLI.main(OozieCLI.java:208)
Caused by: java.lang.ClassNotFoundException: org.apache.hadoop.security.authentication.client.AuthenticationException
	at java.net.URLClassLoader$1.run(URLClassLoader.java:202)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:190)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:306)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:301)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:247)
	... 5 more


---

* [OOZIE-2112](https://issues.apache.org/jira/browse/OOZIE-2112) | *Major* | **Child Job URL doesn't show properly with Hive on Tez**

hiveMain relies on regex pattern "Ended Job = (job\_\\S*)"  to extract child job ID, but the pattern changes when Hive on tez is used.


---

* [OOZIE-2111](https://issues.apache.org/jira/browse/OOZIE-2111) | *Major* | **Kerberized Oozie doesn't allow connections from users with a lot of groups**

If you try to use the Oozie CLI in a Kerberized environment with a user in a lot of groups (e.g. the groups list is 30+ lines), all commands fails with
{noformat}
Error: AUTHENTICATION : Could not authenticate, Authentication failed, status: 400
{noformat}

We need to increase the {{maxHttpHeaderSize}} that Tomcat allows from the default, 8192 (8K), to 65536 (64K).


---

* [OOZIE-2110](https://issues.apache.org/jira/browse/OOZIE-2110) | *Major* | **cancel delegation token of launcher jobs that stay till child jobs finish**

set mapreduce.job.complete.cancel.delegation.tokens=true for launcher job that wait for child jobs to finish (most of actions, pig,hive,java, distcp, etc). this is currently set to false.

keep mapreduce.job.complete.cancel.delegation.tokens=false for launcher job that exits right after a child job launched (mapred action), such that it does not delete delegation token while child job still running.

this change reduce the load on Namenode in terms of the number of tokens it has to maintain.


---

* [OOZIE-2109](https://issues.apache.org/jira/browse/OOZIE-2109) | *Major* | **Possibly incorrect job ID may be printed for map-reduce action errors**

Follow-up to OOZIE-2024, based on comment posted there:

{quote}
bq. "JA017: Could not lookup launched hadoop job ID [job\_12048563533402\_20232] which was associated with action [1129661-1909061866638236-oozie-oozi-W@java-action]. Failing this action!”

Is not that incorrect? After Id swap, jobId will be child jobId not launcher jobId.
{quote}


---

* [OOZIE-2107](https://issues.apache.org/jira/browse/OOZIE-2107) | *Major* | **Schema config properties should be consistent with ActionExecutor config properties**

For specifying ActionExecutors, we have {{oozie.service.ActionService.executor.classes}} and {{oozie.service.ActionService.executor.ext.classes}}.  The former specifies the default ones, and the latter allows adding/overriding them.

For specifying the corresponding action schemas, we have just: {{oozie.service.SchemaService.wf.ext.schemas}}.  This makes it difficult for users to add/override schemas.  We should add a {{oozie.service.SchemaService.wf.schemas}} with the default schemas, where the "ext" config would add/override.  This should be backwards compatible because both properties get loaded.  We can also remove the workflow schemas from being hardcoded in the SchemaService class.

Similarly, we should do the same for the coordinators, bundles, and sla schema properties.


---

* [OOZIE-2104](https://issues.apache.org/jira/browse/OOZIE-2104) | *Blocker* | **oozie server dies on startup if oozie-site redefines ActionExecutor classes**

OOZIE-1890 moved everything out of oozie-site; this includes the ActionExecutor config properties ({{oozie.service.ActionService.executor.classes}} and {{oozie.service.ActionService.executor.ext.classes}}).

Because these were previously defined in ooze-site, if the user re-uses their oozie-site after upgrading to an version of Oozie with OOZIE-1890, then Oozie will die on startup with:
{noformat}
2014-12-29 20:15:04,077 FATAL Services:514 - SERVER[p0106.sjc.cloudera.com] E0150: Actionexecutor type already registered [email]
org.apache.oozie.service.ServiceException: E0150: Actionexecutor type already registered [email]
        at org.apache.oozie.service.ActionService.register(ActionService.java:92)
        at org.apache.oozie.service.ActionService.registerExecutors(ActionService.java:72)
        at org.apache.oozie.service.ActionService.init(ActionService.java:66)
        at org.apache.oozie.service.Services.setServiceInternal(Services.java:386)
        at org.apache.oozie.service.Services.setService(Services.java:372)
        at org.apache.oozie.service.Services.loadServices(Services.java:305)
        at org.apache.oozie.service.Services.init(Services.java:213)
        at org.apache.oozie.servlet.ServicesLoader.contextInitialized(ServicesLoader.java:46)
        at org.apache.catalina.core.StandardContext.listenerStart(StandardContext.java:4210)
        at org.apache.catalina.core.StandardContext.start(StandardContext.java:4709)
...
...
        at org.apache.catalina.startup.Bootstrap.start(Bootstrap.java:289)
        at org.apache.catalina.startup.Bootstrap.main(Bootstrap.java:414)
2014-12-29 20:15:04,126  INFO Services:520 - SERVER[p0106.sjc.cloudera.com] Shutdown
{noformat}

The problem is that Oozie currently doesn't allow an ActionExecutor type to be redefined once defined.  We should change this so that Oozie uses whichever is defined last (doesn't matter if it's redefined as the same or different implementation).  This will also allow the ext property to override the regular property.


---

* [OOZIE-2102](https://issues.apache.org/jira/browse/OOZIE-2102) | *Blocker* | **Streaming actions are broken cause of incorrect method signature**

OOZIE-1954 changed the submitJob(Configuration) signature to submitJob(JobConf), but this change was not caught and made in the StreamingMain class cause it did not use an Override annotation.

Streaming jobs no longer succeed on trunk as a result. Pipe jobs still do as the change was made in it instead.


---

* [OOZIE-2100](https://issues.apache.org/jira/browse/OOZIE-2100) | *Major* | **Publish oozie-webapp artifact**

oozie-webapp artifact needs to be published. This is needed by Apache Falcon and I think this may be an artifact needed by other projects as well.


---

* [OOZIE-2098](https://issues.apache.org/jira/browse/OOZIE-2098) | *Major* | **Add Apache parent POM to oozie**

This jira proposes adding Apache parent POM to oozie to help publishing the release artifacts to nexus repo and to maven central.


---

* [OOZIE-2093](https://issues.apache.org/jira/browse/OOZIE-2093) | *Major* | **TestSubmitXCommand.testProtoConfStorage fails against Hadoop 2**

{noformat}
Running org.apache.oozie.command.wf.TestSubmitXCommand
Tests run: 9, Failures: 1, Errors: 0, Skipped: 0, Time elapsed: 209.081 sec <<< FAILURE!

Results :

Failed tests:   testProtoConfStorage(org.apache.oozie.command.wf.TestSubmitXCommand): expected:<3> but was:<2>

Tests run: 9, Failures: 1, Errors: 0, Skipped: 0
{noformat}

Looks like the problem is that at some point, Hadoop 2.x deprecated {{user.name}} and replaced it with {{mapreduce.job.user.name}}, so both end up in the config and so there's an extra property.  (Also, the expected and actual are backwards)


---

* [OOZIE-2092](https://issues.apache.org/jira/browse/OOZIE-2092) | *Major* | **Provide option to supply config to workflow during rerun of coordinator**

After disable reruns using workflow when parent exist. After enabling this flag there should be some way to supply config to workflow.


---

* [OOZIE-2090](https://issues.apache.org/jira/browse/OOZIE-2090) | *Major* | **wf:lastErrorNode does not take into account transient errors with retries**

Suppose you have a workflow where an action fails on the first try, but the automatic retry behavior for transient failures kicks in, and it succeeds on one of the later tries.  Currently, the wf:lastErrorNode() EL Function will show that this node failed, even though it ultimately succeeded.

We should have wf:lastErrorNode() take into account the auto-retries by not setting the last error node until the last retry occurs.


---

* [OOZIE-2088](https://issues.apache.org/jira/browse/OOZIE-2088) | *Major* | **Exponential retries for transient failures**

For transient failures there is retry mechanism but it is not exponential and there is no separate config for changing the interval , it is linked with oozie.service.ActionCheckerService.action.check.interval (Frequency at which action checkservice will run) . Add separate config for retry interval and add exponential retry mechanism.


---

* [OOZIE-2079](https://issues.apache.org/jira/browse/OOZIE-2079) | *Major* | **Notify when a coordinator action status becomes RUNNING**

When a coordinator-action is materialized with WAITING status, Oozie calls the oozie.coord.action.notification.url as expected, but it does not when the coordinator-action status changes to RUNNING.

It appears that CoordActionStartXCommand.execute() (CoordActionStartXCommand.java) method does not invoke a CoordActionNotificationXCommand().


---

* [OOZIE-2076](https://issues.apache.org/jira/browse/OOZIE-2076) | *Major* | **Sharelib usage improvement**

1.  By default enable oozie.use.system.libpath.
If the action property oozie.action.sharelib.for.#ACTIONTYPE# is set, it can safely be assumed that the user wants to use sharelib.
Property oozie.action.sharelib.for.#ACTIONTYPE# itself indicate that user want to use sharelib.
User can still disable sharelib for WF by  setting oozie.use.system.libpath=false.

We will have  server level setting( oozie.use.system.libpath.default = false ) to support backward compatibility. 

2.
User should be able to enable/disable sharelib for action
( ex oozie.use.system.libpath = false ) at action level. 
=oozie.use.system.libpath= defined at action level overrides job setting.  


3. Remove duplicate jars.
ex. Hcat and hive have lots of duplicate jars. If user want to use both sharelib, too many duplicate jars may cause slow job submission.


---

* [OOZIE-2074](https://issues.apache.org/jira/browse/OOZIE-2074) | *Major* | **Compatibility issue with Yarn and Hadoop 0.23/2.x**

We are using "yarn.resourcemanager.address" for checking the hadoop version in jobUtils. Here is the code snippet. 
 // Hadoop 0.20/1.x.
{code}
      if (defaultConf.get("yarn.resourcemanager.address") == null) {
          // Duplicate hadoop 1.x code to workaround MAPREDUCE-2361 in Hadoop 0.20
          // Refer OOZIE-1806.
          String filepath = file.toUri().getPath();
          String classpath = conf.get("mapred.job.classpath.files");
          conf.set("mapred.job.classpath.files", classpath == null
              ? filepath
              : classpath + System.getProperty("path.separator") + filepath);
          URI uri = fs.makeQualified(file).toUri();
          DistributedCache.addCacheFile(uri, conf);
      }
      else { // Hadoop 0.23/2.x
          DistributedCache.addFileToClassPath(file, conf, fs);
      }
{code}
But this is being used in JavaActionExecutor to set jobTracker.
conf.set(HADOOP\_YARN\_RM, jobTracker);


---

* [OOZIE-2072](https://issues.apache.org/jira/browse/OOZIE-2072) | *Minor* | **Improve the whitelist error message by showing allowed values**

The current error is vague and causes users to google and find odd solutions such as disabling the entire whitelist (which causes other issues).

Proposing to change the error to also print whitelist set in the message returned back, so they at least realise why they are getting that.


---

* [OOZIE-2071](https://issues.apache.org/jira/browse/OOZIE-2071) | *Major* | **Add a Spark example**

With the new Spark action, we should have a Spark example workflow that runs some Spark job.


---

* [OOZIE-2069](https://issues.apache.org/jira/browse/OOZIE-2069) | *Major* | **RecoveryService reads incorrect configuration**

  This causes a lot of duplicate coordinators to be created for a submitted bundle. Found by [~mchiang\_4work@yahoo.com] with the regression tests.


---

* [OOZIE-2065](https://issues.apache.org/jira/browse/OOZIE-2065) | *Major* | **Oozie returns incorrect total action for coord dryrun**

coord job should have 1 action, where action-nominal-time="2009-12-15T06:00Z".
but dryrun reported 0.
{code}
$ oozie job -dryrun -config job.properties -oozie  https://localhost:4443/oozie
***coordJob after parsing: ***
<?xml version="1.0" encoding="UTF-8"?>
<coordinator-app xmlns="uri:oozie:coordinator:0.2" name="END2END-13" frequency="1" start="2009-12-15T06:00Z" end="2009-12-18T01:00Z" timezone="UTC" freq\_timeunit="MONTH" end\_of\_duration="NONE">
   <controls>
      <timeout>10</timeout>
      <concurrency>1</concurrency>
      <execution>FIFO</execution>
   </controls>
   <input-events>
      <data-in name="din2" dataset="din2">
         <dataset name="din2" frequency="1" initial-instance="2009-06-01T05:00Z" timezone="UTC" freq\_timeunit="DAY" end\_of\_duration="NONE">
            <uri-template>hdfs://localhost/coord-input/${YEAR}/${MONTH}/${DAY}/${HOUR}/${MINUTE}</uri-template>
         </dataset>
         <start-instance>${coord:current(-coord:daysInMonth(-(START\_OFFSET)) - (START\_OFFSET) + 1)}</start-instance>
         <end-instance>${coord:current(- (END\_OFFSET))}</end-instance>
      </data-in>
   </input-events>
   <output-events>
      <data-out name="OUT" dataset="dout">
         <dataset name="dout" frequency="15" initial-instance="2009-06-01T05:00Z" timezone="UTC" freq\_timeunit="MINUTE" end\_of\_duration="NONE">
            <uri-template>hdfs://localhost/coord-input/${YEAR}/${MONTH}/${DAY}/${HOUR}/${MINUTE}</uri-template>
         </dataset>
         <instance>${coord:current((variable1))}</instance>
      </data-out>
   </output-events>
   <action>
      <workflow>
         <app-path>hdfs://localhost/wf-mr</app-path>
         <configuration>
            <property>
               <name>jobTracker</name>
               <value>${jobTracker}</value>
            </property>
            <property>
               <name>nameNode</name>
               <value>${nameNode}</value>
            </property>
            <property>
               <name>queueName</name>
               <value>${queueName}</value>
            </property>
            <property>
               <name>inputDir</name>
               <value>${coord:dataIn('din2')}</value>
            </property>
            <property>
               <name>outputDir</name>
               <value>${coord:dataOut('OUT')}</value>
            </property>
         </configuration>
      </workflow>
   </action>
</coordinator-app>
***actions for instance***
***total coord actions is 0 ***
{code}


---

* [OOZIE-2055](https://issues.apache.org/jira/browse/OOZIE-2055) | *Major* | **PauseTransitService does not proceed forward if any job has issue**

{code}
 // start bundles as needed;
            try {
                jobList = jpaService.execute(new BundleJobsGetNeedStartJPAExecutor(d));
                if (jobList != null) {
                    for (BundleJobBean bundleJob : jobList) {
                        bundleJob.setKickoffTime(d);
                        new BundleStartXCommand(bundleJob.getId()).call();
                        LOG.debug("Calling BundleStartXCommand for bundle job = " + bundleJob.getId());
                    }
                }
            }
            catch (Exception ex) {
                LOG.warn("Exception happened when pausing/unpausing/starting Bundle jobs", ex);
            }

{code}
If any of job has issue, then exception will be thrown and PauseTransitService will ignore all other jobs.


---

* [OOZIE-2053](https://issues.apache.org/jira/browse/OOZIE-2053) | *Major* | **Change old HCatalog API**

Old package – org.apache.hcatalog
New package where most bug fixes go – org.apache.hive.hcatalog


---

* [OOZIE-2048](https://issues.apache.org/jira/browse/OOZIE-2048) | *Major* | **HadoopAccessorService should also process ssl\_client.xml**

In HadoopAccessorService, per cluster, oozie processes the following configuration files per cluster

core-site.xml
hdfs-site.xml
mapred-site.xml
yarn-site.xml
and
hadoop-site.xml

But this not handle cases where we need to access secure webhdfs or in secure clusters post 2.6.0 where timeline client has security enabled because the ssl client configuration is in ssl-client.xml.

We need to add ssl-client.xml to the list of files we process per cluster


---

* [OOZIE-2045](https://issues.apache.org/jira/browse/OOZIE-2045) | *Major* | **Symlink support for sharelib**

With metafile configuration, one can configure sharelib (eg. pig\_latest) to latest version available.
If new version is available, admin will just change the pig\_latest sysmlink to new version. 
There will be no change to Oozie or metafile configuration.
Oozie should be able to detect symlink change and reloads the sharelib.

metafile configuration can look like
oozie.pig\_latest=hdfs:///tmp/pig\_latest


where /tmp/pig\_latest is a symlink pointing to latest available version.


---

* [OOZIE-2043](https://issues.apache.org/jira/browse/OOZIE-2043) | *Major* | **Misc test failures against JDK8**

Using the below procedure, I built Oozie with Java 7 and then built and ran the tests with Java 8:
- set java 7
- {{mvn clean test -DskipTests}}
- {{find . -name test-classes | grep target/test-classes | xargs rm -rf}}       // Delete test classes
- set java 8
- {{mvn test -DtargetJavaVersion=1.8}}

There were 3 test failures:
- org.apache.oozie.coord.TestHCatELFunctions.testDataOutPartitions
-- it was expecting {{'region=euro,datastamp=20130230'}} but now got {{'datastamp=20130230,region=euro'}}
- org.apache.oozie.util.TestELConstantsFunctions.testAppendAll
-- Java 8 changes the behavior of the String.split method to not include a leading empty String if the pattern matches the front of the String.  To remain backwards compatible, the solution here was to emulate this behavior so the appendAll method behaves the same as it did with Java 6 and 7.
- org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser.testForkJoinMismatch
-- it was checking a parameterized error message where the order of the parameters switched


---

* [OOZIE-2042](https://issues.apache.org/jira/browse/OOZIE-2042) | *Major* | **Max substitution for config variables should be configurable**

The max number of substitutions in a config variable is currently hardcoded at 20 in XConfiguration.  We should make this configurable.

https://github.com/apache/oozie/blob/master/core/src/main/java/org/apache/oozie/util/XConfiguration.java#L146


---

* [OOZIE-2031](https://issues.apache.org/jira/browse/OOZIE-2031) | *Trivial* | **Credentials doc uses 'hive' name for HBase Credentials example**

On http://oozie.apache.org/docs/4.0.1//DG\_UnifiedCredentialsModule.html, the below is observed carrying the typo 'hive=' instead of 'hbase=':

{code}
<property>
      <name>oozie.credentials.credentialclasses</name>
      <value>
         hcat=org.apache.oozie.action.hadoop.HCatCredentials,
         hive=org.apache.oozie.action.hadoop.HbaseCredentials
      </value>
   </property>
{code}


---

* [OOZIE-2029](https://issues.apache.org/jira/browse/OOZIE-2029) | *Major* | **Workflow re-run with RERUN\_FAIL\_NODES=true should re-run only the failed nodes of the sub-workflow**

If a workflow has sub-workflow and some actions in the sub-workflow has failed, currently, workflow re-run with RERUN\_FAIL\_NODES=true will launch new sub-workflow. Instead, it should re-run only the failed nodes of the sub-workflow.


---

* [OOZIE-2028](https://issues.apache.org/jira/browse/OOZIE-2028) | *Major* | **Coord action rerun with -failed option should rerun existing workflow with RERUN\_FAIL\_NODES=true**

1. Coord action re-run will take an addition optional flag -failed which re-run only the failed nodes. This will re-run the existing workflow with RERUN\_FAIL\_NODES=true. But this will also honour coord concurrency.
2. Coord action re-run with no -failed option will use the existing feature of launching new workflow.


---

* [OOZIE-2027](https://issues.apache.org/jira/browse/OOZIE-2027) | *Major* | **Disable re-runs using the workflow directly if it has a parent**

Disable re-runs using the workflow directly if it has a parent. This applies to both cases where parent is coord action/another workflow. This check should be controlled using oozie-site config and should be disabled by default for backward compatibility.


---

* [OOZIE-2024](https://issues.apache.org/jira/browse/OOZIE-2024) | *Minor* | **Confusing message when a job can't be looked up by JavaActionExecutor**

When you have issues where JT is missing job history or JHS is lacking it, causing JavaActionExecutor to fail when its RunningJob is returned back as null, it prints a very confusing message such as below, that can read instead as "This is not the Job ID I was supposed to find" instead of what is meant to be "I could not find this Job ID on the server":

{code}
"JA017: Unknown hadoop job [job\_12048563533402\_20232] associated with action [1129661-1909061866638236-oozie-oozi-W@java-action]. Failing this action!”
{code}

What would instead be clearer is this:

{code}
"JA017: Could not lookup launched hadoop job ID [job\_12048563533402\_20232] which was associated with action [1129661-1909061866638236-oozie-oozi-W@java-action]. Failing this action!”
{code}

Patch attached, feel free to refine further during commit if the text is unsatisfactory in parts.


---

* [OOZIE-2023](https://issues.apache.org/jira/browse/OOZIE-2023) | *Major* | **Job rerun can stuck in prep**

Job rerun is divided into two commands.
1. ReRunXCommand, which delete action and set job status to prep.
2. StartXCommand, which start WF.

If ReRunXCommand fails to acquire job lock, it's requeued and oozie will start StartXCommand command. ReRunXCommand will run again ( after/parallel to StartXCommand) when it can acquire lock.


{code}
    public void reRun(String jobId, Configuration conf) throws DagEngineException {
        try {
            WorkflowJobBean wfBean = WorkflowJobQueryExecutor.getInstance().get(WorkflowJobQuery.GET\_WORKFLOW, jobId);
            Configuration wfConf = new XConfiguration(new StringReader(wfBean.getConf()));
            XConfiguration.copy(conf, wfConf);
            validateReRunConfiguration(wfConf);
            new ReRunXCommand(jobId, wfConf).call();
            start(jobId);
        }
        catch (CommandException ex) {
            throw new DagEngineException(ex);
        }
        catch (JPAExecutorException ex) {
            throw new DagEngineException(ex);
        }
        catch (IOException ex) {
            throw new DagEngineException(ErrorCode.E0803, ex.getMessage());
        }
    }
{code}


---

* [OOZIE-2014](https://issues.apache.org/jira/browse/OOZIE-2014) | *Major* | **TestAuthFilterAuthOozieClient fails after OOZIE-1917**

As part of OOZIE-1917, we removed the {{oozie.authentication.signature.secret}} property so it will default to a randomly generated secret instead of "oozie" as the secret.  This causes {{TestAuthFilterAuthOozieClient.testClientAuthTokenCache}} to fail because it's comparing the auth token from two calls to two different Oozie server instances, which now don't match because the secret is different.

{noformat}
testClientAuthTokenCache(org.apache.oozie.servlet.TestAuthFilterAuthOozieClient)  Time elapsed: 0.008 sec  <<< FAILURE!
junit.framework.ComparisonFailure: expected:<...=simple&e=1411181460[262&s=ih179o8nT7c1pRorbFhE17QKemQ]=> but was:<...=simple&e=1411181460[645&s=mh9optNIM2eTqJsrXT7rcJjeTiI]=>
	at junit.framework.Assert.assertEquals(Assert.java:85)
	at junit.framework.Assert.assertEquals(Assert.java:91)
	at org.apache.oozie.servlet.TestAuthFilterAuthOozieClient.testClientAuthTokenCache(TestAuthFilterAuthOozieClient.java:193)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
{noformat}


---

* [OOZIE-2009](https://issues.apache.org/jira/browse/OOZIE-2009) | *Major* | **Requeue CoordActionInputCheck in case of permission error**

currently relies on recovery service to pick it up, but some applications cannot tolerate waiting for recovery service interval. CoordActionInputCheck can gracefully handle exception and requeue it.


---

* [OOZIE-2006](https://issues.apache.org/jira/browse/OOZIE-2006) | *Major* | **Hive 2 action should support tez delegation tokens**

Hive2Main needs to propagate the delegation token for tez; like HiveMain :
{code:java}
hiveConf.set("tez.credentials.path", delegationToken);
{code}


---

* [OOZIE-2003](https://issues.apache.org/jira/browse/OOZIE-2003) | *Major* | **Checkstyle issues**

Looks like the build is broken after last commit. [~rkanter], can you fix this please:
{noformat}
/work/git/oozie/core/src/main/java/org/apache/oozie/action/hadoop/Hive2ActionExecutor.java:10: Line does not match expected header line of ' *      http://www.apache.org/licenses/LICENSE-2.0'.
/work/git/oozie/core/src/test/java/org/apache/oozie/test/hive/AbstractHiveService.java:10: Line does not match expected header line of ' *      http://www.apache.org/licenses/LICENSE-2.0'.
/work/git/oozie/core/src/test/java/org/apache/oozie/test/hive/MiniHS2.java:10: Line does not match expected header line of ' *      http://www.apache.org/licenses/LICENSE-2.0'.

[INFO] Apache Oozie Core ................................. FAILURE [37.299s]
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-checkstyle-plugin:2.9.1:check (default) on project oozie-core: You have 3 Checkstyle violations. -> [Help 1]
{noformat}


---

* [OOZIE-2001](https://issues.apache.org/jira/browse/OOZIE-2001) | *Major* | **Workflow re-runs doesn't update coord action status**

When a workflow is re-run, the corresponding coord action status is not updated and coord action stays in killed state. This gives wrong impression that coord action is not running which is not the case
SignalXCommand:
{code}
        // Changing to synchronous call from asynchronous queuing to prevent
        // undue delay from between end of previous and start of next action
        if (wfJob.getStatus() != WorkflowJob.Status.RUNNING
                && wfJob.getStatus() != WorkflowJob.Status.SUSPENDED) {
            // only for asynchronous actions, parent coord action's external id will
            // persisted and following update will succeed.
            updateParentIfNecessary(wfJob);
            new WfEndXCommand(wfJob).call(); // To delete the WF temp dir
        }
{code}


---

* [OOZIE-1968](https://issues.apache.org/jira/browse/OOZIE-1968) | *Major* | **Building modules independently**

{noformat}
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-checkstyle-plugin:2.9.1:check (default) on project oozie-core: Failed during checkstyle configuration: cannot initialize module Header - unable to load header file src/main/resources/checkstyle-header.txt: src/main/resources/checkstyle-header.txt (No such file or directory) -> [Help 1]
{noformat}


---

* [OOZIE-1964](https://issues.apache.org/jira/browse/OOZIE-1964) | *Major* | **Hive Server 2 action doesn't return Hadoop Job IDs**

Beeline currently doesn't support getting the Hadoop Job IDs for jobs launched by Hive Server 2.  When/If Beeline ever adds support for this, we should update the Hive Server 2 action to parse the IDs and return them back to the Oozie server like most actions do.


---

* [OOZIE-1957](https://issues.apache.org/jira/browse/OOZIE-1957) | *Major* | **Coord update command override group when oozie.service.AuthorizationService.default.group.as.acl is set and group/acl is not configured in job property**

When oozie.service.AuthorizationService.default.group.as.acl is set, and group/acl is not configured in job property. Default group is used.
Update overrides the default group.


---

* [OOZIE-1954](https://issues.apache.org/jira/browse/OOZIE-1954) | *Major* | **Add a way for the MapReduce action to be configured by Java code**

With certain other components (e.g. Avro, HFileOutputFormat (HBase), etc), it becomes impractical to use the MapReduce action and users must instead use the Java action. The problem is that these components require a lot of extra configuration that is often hidden from the user in Java code (e.g. HFileOutputFormat.configureIncrementalLoad(job, table); which can also include decision logic, serialization, and other things that we can't do in an XML file directly.

One way to solve this problem is to allow the user to give the MR action some Java code that would do this configuration, similar to how we allow the {{<job-xml>}} field to specify an external XML file of configuration properties.
In more detail, we could have an interface; something like this:
{code}
public interface OozieActionConfigurator {
     public void updateOozieActionConfiguration(Configuration conf);
}
{code}
that the user can implement, create a jar, and include with their MR action (i.e. add a "{{<config-class>}}" field that let's them specify the class name). To protect the Oozie server from running user code (which could do anything it wants really), it would have to be run in the Launcher Job. The Launcher Job could call this method after it loads the configuration prepared by the Oozie server.

Another thing this will be helpful is with users who use the Java action to launch MR jobs and expect a bunch of things to be done for them that are not (e.g. delegation token propagation, config loading, returning the hadoop job to Oozie, etc). These are all done with the MR action, so the more users we can move to the MR action from the Java action, the less they'll run into these difficulties.

Some of this may change slightly as I try to actually implement this (e.g. have to handle throwing exceptions etc).  And one thing I may do is keep this general enough that it should be compatible with all action types in case we want to add this to any of them in the future; though for now, the schema would only accept it for the MapReduce action.


---

* [OOZIE-1940](https://issues.apache.org/jira/browse/OOZIE-1940) | *Major* | **StatusTransitService has race condition**

StatusTransitService doesn't acquire lock while updating DB. 

We noticed one such issue while doing HA testing, thanks to [~mchiang]
We issue a change command to change pause time, which got executed on one server. While change command was running on one server, other server started executing StatusTransitService.

Server 1 log
{code}
2014-07-16 17:28:05,268  INFO StatusTransitService$StatusTransitRunnable:539 [pool-1-thread-13] - USER[-] GROUP[-] Acquired lock for [org.apache.oozie.service.StatusTransitService]
2014-07-16 17:28:09,694  INFO StatusTransitService$StatusTransitRunnable:539 [pool-1-thread-13] - USER[-] GROUP[-] Set coordinator job [0011385-140716042555-oozie-oozi-C] status to 'SUCCEEDED' from 'RUNNING' 
2014-07-16 17:28:15,416  INFO StatusTransitService$StatusTransitRunnable:539 [pool-1-thread-13] - USER[-] GROUP[-] Released lock for [org.apache.oozie.service.StatusTransitService]
{code}


Server 2 log
{code}
2014-07-16 17:28:06,499 DEBUG CoordChangeXCommand:545 [http-0.0.0.0-4443-5] - USER[hadoopqa] GROUP[users] TOKEN[] APP[coordB180] JOB[0011385-140716042555-oozie-oozi-C] ACTION[-] New pause/end date is : Wed Jul 16 17:30:00 UTC 2014 and last action number is : 3
2014-07-16 17:28:06,508  INFO CoordChangeXCommand:539 [http-0.0.0.0-4443-5] - USER[hadoopqa] GROUP[users] TOKEN[] APP[coordB180] JOB[0011385-140716042555-oozie-oozi-C] ACTION[-] ENDED CoordChangeXCommand for jobId=0011385-140716042555-oozie-oozi-C
{code}
CoordMaterializeTransitionXCommand has created all actions( few were in waiting and few were in running state) and set doneMaterialization to true.

Change command deletes all waiting coords, except 3 running/SUCCEEDED action and reset doneMaterialization.


StatusTransitService first loads a set of pending jobs and for each job it make DB calls to check coord action status. Coord jobs are loaded only once in beginning.

This is what happened.
1.StatusTransitService loads the coord job which doneMaterialization is set to true at 17:28:05,268 (server 1)
2.Change command deletes waiting cation and reset  doneMaterialization at  17:28:06,508 (server 2)
3.StatusTransitService load actions for job, only 3 and in SUCCEEDED status. It never reload the doneMaterialization at 17:28:09,694 (server 1)
StatusTransitService overrides set job status to SUCCEEDED, bcz it's doneMaterialization and all action are SUCCEEDED.


---

* [OOZIE-1939](https://issues.apache.org/jira/browse/OOZIE-1939) | *Major* | **Incorrect job information is set while logging**

{code}
2014-07-16 17:28:06,422 DEBUG CoordChangeXCommand:545 [http-0.0.0.0-4443-5] - USER[hadoopqa] GROUP[users] TOKEN[] APP[coordB236] JOB[0011514-140716042555-oozie-oozi-C] ACTION[-] Acquired lock for [0011385-140716042555-oozie-oozi-C] in [coord\_change]
2014-07-16 17:28:06,422 TRACE CoordChangeXCommand:548 [http-0.0.0.0-4443-5] - USER[hadoopqa] GROUP[users] TOKEN[] APP[coordB236] JOB[0011514-140716042555-oozie-oozi-C] ACTION[-] Load state for [0011385-140716042555-oozie-oozi-C]
{code}


{code}
    protected void loadState() throws CommandException {
        jpaService = Services.get().get(JPAService.class);
        if (jpaService == null) {
            LOG.error(ErrorCode.E0610);
        }

        try {
            coordJob = CoordJobQueryExecutor.getInstance().get(CoordJobQuery.GET\_COORD\_JOB\_MATERIALIZE, jobId);
            prevStatus = coordJob.getStatus();
        }
        catch (JPAExecutorException jex) {
            throw new CommandException(jex);
        }

        // calculate start materialize and end materialize time
        calcMatdTime();

        LogUtils.setLogInfo(coordJob, logInfo);
    }

{code}
Most of the commands set jobinfo after loadstate, because of that few log statements ( like acquiring lock, load state) logs with previous jobinfo.


---

* [OOZIE-1923](https://issues.apache.org/jira/browse/OOZIE-1923) | *Major* | **ZKLocksService locks are not re-entrant like MemoryLocks**

This is because we are creating InterProcessReadWriteLock instance for every path. 
We should store InterProcessReadWriteLock and reuse for same path like MemoryLocksService.

We should also add tests for both ZKLocksService and MemoryLocksService to verify.


---

* [OOZIE-1917](https://issues.apache.org/jira/browse/OOZIE-1917) | *Critical* | **Authentication secret should be random by default and needs to coordinate with HA**

{{oozie.authentication.signature.secret}} is currently set to {{oozie}} by default, which is a pretty poor value for this.  We should set it to be random by default (i.e. blank in oozie-site/default).  

We should also make it so that with Oozie HA, we store this value in ZooKeeper so all Oozie servers can use the same secret.  This may get a little tricky because hadoop-auth's AuthenticationFilter doesn't make it easy/practical to change how the Signer and secret are set.  We'll likely have to have Oozie's AuthFilter compute it's own random secret and do all the ZK stuff and set the value of {{oozie.authentication.signature.secret}} before calling AuthenticationFilter#init


---

* [OOZIE-1913](https://issues.apache.org/jira/browse/OOZIE-1913) | *Major* | **Devise a way to turn off SLA alerts for bundle/coordinator flexibly**

From user:
Need to turn off the SLA miss alerts in jobs when the bundle is suspended for
grid upgrades and similar work so that when it's resumed we aren't flooded with a bunch of alerts.


---

* [OOZIE-1896](https://issues.apache.org/jira/browse/OOZIE-1896) | *Major* | **ZKUUIDService - Too many job submission fails**

DistributedAtomicLong.prevalue and postValue  =0 and succeeded = false.

ZK error.
Thu Jun 12 22:22:00 2014: 2014-06-12 22:22:00,981 - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@627] - Got user-level KeeperException when processing sessionid:0x145bf4221730116 type:setData cxid:0x2f992 zxid:0x30b14d txntype:-1 reqpath:n/a Error Path:/oozie\_test1/job\_id\_sequence Error:KeeperErrorCode = BadVersion for /oozie\_test1/job\_id\_sequence


---

* [OOZIE-1894](https://issues.apache.org/jira/browse/OOZIE-1894) | *Major* | **Better error reporting to user**

Ooize debuggability is not that easy. We noticed most of user has difficulty finding proper error message.
They will create ticket to solution-team/dev to help.
Though we have log streaming, but it flooded with other log messages. It's very difficult for naive user to find out failure reason.


Here is my solution,
1. Add a new appender to log only error message. Oozie appender will still have all the log message ( including error).
2. Have a new UI tab ( cli/web-service as well) to show error message. When user ask for error message, parse it from error logs. It will be faster.

This has multiple advantage
1. Error log streaming will be faster.
2. User will see less and precise log, will help him to solve issue by his own.
3. It will help ops/dev to find out system issues.




New appender.
{code}
+log4j.appender.oozieError=org.apache.log4j.rolling.RollingFileAppender
+log4j.appender.oozieError.RollingPolicy=org.apache.oozie.util.OozieRollingPolicy
+log4j.appender.oozieError.File=${oozie.log.dir}/oozie-error.log
+log4j.appender.oozieError.Append=true
+log4j.appender.oozieError.layout=org.apache.log4j.PatternLayout
+log4j.appender.oozieError.layout.ConversionPattern=%d{ISO8601} %5p %c{1}:%L - SERVER[${oozie.instance.id}] %m%n
+# The FileNamePattern must end with "-%d{yyyy-MM-dd-HH}.gz" or "-%d{yyyy-MM-dd-HH}" and also start with the 
+# value of log4j.appender.oozie.File
+log4j.appender.oozieError.RollingPolicy.FileNamePattern=${log4j.appender.oozieError.File}-%d{yyyy-MM-dd-HH}
+# The MaxHistory controls how many log files will be retained (720 hours / 24 hours per day = 30 days); -1 to disable
+log4j.appender.oozieError.RollingPolicy.MaxHistory=720
+log4j.appender.oozieError.filter.1 = org.apache.log4j.varia.LevelMatchFilter
+log4j.appender.oozieError.filter.1.levelToMatch = WARN
+log4j.appender.oozieError.filter.2 = org.apache.log4j.varia.LevelMatchFilter
+log4j.appender.oozieError.filter.2.levelToMatch = ERROR
+log4j.appender.oozieError.filter.3 = org.apache.log4j.varia.LevelMatchFilter
+log4j.appender.oozieError.filter.3.levelToMatch = FATAL
+log4j.appender.oozieError.filter.4 = org.apache.log4j.varia.DenyAllFilter

-log4j.logger.org.apache.oozie=INFO, oozie
+log4j.logger.org.apache.oozie=ALL, oozie, oozieError
{code}


---

* [OOZIE-1891](https://issues.apache.org/jira/browse/OOZIE-1891) | *Major* | **Parametrize surefire argLine to bump up heap memory for testing**

when running tests with hadoop-2 profile,  hitting OOM.
currently setting is <argLine>-Xmx1024m -da -XX:MaxPermSize=512m</argLine>.
-DargLine=" " doesn't overwrite when i tried.


---

* [OOZIE-1890](https://issues.apache.org/jira/browse/OOZIE-1890) | *Major* | **Make oozie-site empty and reconcile defaults between oozie-default and the code**

As shwetha and puru suggested in OOZIE-1888, oozie-site vs oozie-default is a point of confusion for users.  We've also had issues in the past where they've had different values from each other and/or from the code's default (i.e. {{conf.get(PROP\_NAME, DEFAULT\_VALUE)}}).

We should make oozie-default the only source of truth by:
# Putting all configuration properties in oozie-default.
# Making oozie-site empty; if the user wants to change a property, they can copy it out of the for-reference oozie-default.
# Getting rid of the code defaults.  It's easy for these to be out of sync with oozie-default, leading to confusion.  They aren't used anyway because oozie-default should always be there (and will now have every property)

This will require looking through all classes to make sure we're not missing anything from oozie-default and also checking that we put the proper default value (from all 3 sources) into oozie-default.  It may be nice to also reorder the properties in oozie-default alphabetically (and also do this going forward with new properties).

Also, {{oozie.service.WorkflowAppService.system.libpath}} should be set to "/user/$\{user.name\}/share/lib" (which is what OOZIE-1888 wanted to do).


---

* [OOZIE-1889](https://issues.apache.org/jira/browse/OOZIE-1889) | *Major* | **Convert NamedNativeQueries to JPQL**

Currently, there is only one JPA NamedNativeQuery (GET\_READY\_ACTIONS\_GROUP\_BY\_JOBID). By converting it to a regular NamedQuery in JPQL, it can take advantage of JPA capabilities, such as configuring the DB schema as a property (Required for issues such as OOZIE-814 and OOZIE-80)


---

* [OOZIE-1885](https://issues.apache.org/jira/browse/OOZIE-1885) | *Major* | **Query optimization for StatusTransitService**

{code}
 private void coordTransit() throws JPAExecutorException, CommandException {
            List<CoordinatorJobBean> pendingJobCheckList = null;
            if (lastInstanceStartTime == null) {
                LOG.info("Running coordinator status service first instance");
                // this is the first instance, we need to check for all pending jobs;
                pendingJobCheckList = jpaService.execute(new CoordJobsGetPendingJPAExecutor(limit));
            }
            else {
                LOG.info("Running coordinator status service from last instance time =  "
                        + DateUtils.formatDateOozieTZ(lastInstanceStartTime));
                // this is not the first instance, we should only check jobs
                // that have actions or jobs been
                // updated >= start time of last service run;
                List<CoordinatorActionBean> actionsList = CoordActionQueryExecutor.getInstance().getList(
                        CoordActionQuery.GET\_COORD\_ACTIONS\_BY\_LAST\_MODIFIED\_TIME, lastInstanceStartTime);
                Set<String> coordIds = new HashSet<String>();
                for (CoordinatorActionBean action : actionsList) {
                    coordIds.add(action.getJobId());
                }

                pendingJobCheckList = new ArrayList<CoordinatorJobBean>();
                for (String coordId : coordIds.toArray(new String[coordIds.size()])) {
                    CoordinatorJobBean coordJob;
                    try {
                        coordJob = CoordJobQueryExecutor.getInstance().get(CoordJobQuery.GET\_COORD\_JOB, coordId);
                    }
                    catch (JPAExecutorException jpaee) {
                        if (jpaee.getErrorCode().equals(ErrorCode.E0604)) {
                            LOG.warn("Exception happened during StatusTransitRunnable; Coordinator Job doesn't exist", jpaee);
                            continue;
                        } else {
                            throw jpaee;
                        }
                    }
                    // Running coord job might have pending false
                    Job.Status coordJobStatus = coordJob.getStatus();
                    if ((coordJob.isPending() || coordJobStatus.equals(Job.Status.PAUSED)
                            || coordJobStatus.equals(Job.Status.RUNNING)
                            || coordJobStatus.equals(Job.Status.RUNNINGWITHERROR)
                            || coordJobStatus.equals(Job.Status.PAUSEDWITHERROR))
                            && !coordJobStatus.equals(Job.Status.IGNORED)) {
                        pendingJobCheckList.add(coordJob);
                    }
                }
                pendingJobCheckList.addAll(CoordJobQueryExecutor.getInstance().getList(
                        CoordJobQuery.GET\_COORD\_JOBS\_CHANGED, lastInstanceStartTime));
            }
            aggregateCoordJobsStatus(pendingJobCheckList);
        }
    }

{code}


This could be done in one sql, something like 
select w.id, w.status, w.pending from CoordinatorJobBean w where w.startTimestamp <= :matTime AND (w.statusStr = 'PREP' OR w.statusStr = 'RUNNING' or w.statusStr = 'RUNNINGWITHERROR' or w.statusStr= 'PAUSEDWITHERROR' and w.statusStr <> 'IGNORED') w.id in  ( select a.jobId from CoordinatorActionBean a where a.lastModifiedTimestamp >= :lastModifiedTime groupby a.jobId)

Same for bundleTransit().


---

* [OOZIE-1876](https://issues.apache.org/jira/browse/OOZIE-1876) | *Major* | **use pom properties rather than specific version numbers in the pom files of hbaselibs, hcataloglibs, sharelib, etc**

version numbers (hbase, hive, hcatalog, sqoop, etc) are hard coded in the pom files.


---

* [OOZIE-1872](https://issues.apache.org/jira/browse/OOZIE-1872) | *Major* | **TestCoordActionInputCheckXCommand.testActionInputCheckLatestActionCreationTime is failing for past couple of builds**

https://builds.apache.org/job/oozie-trunk-precommit-build/1291/testReport/junit/org.apache.oozie.command.coord/TestCoordActionInputCheckXCommand/testActionInputCheckLatestActionCreationTime/


---

* [OOZIE-1853](https://issues.apache.org/jira/browse/OOZIE-1853) | *Major* | **Improve the Credentials documentation**

We've heard from users that the Credentials documentation isn't very clear or easy to find.  

More specifically:
# It's titled "Unified Credentials Module" which, to the user, isn't super-obvious what it means.  Perhaps something like "Authenticating with Other Components", "Action Authentication", etc would be more clear
# The content of the page itself reads more like a design document; it presents two options for solving the problem with their shortcomings.  It would be better to restructure the page to only mention what we did do, and make it more clear how to setup and use the Credentials.  
#- The Sample implementation is nice to have, but it's for advanced users.  Most users would be interested in the last section of the page where we briefly say how to enable the Credentials classes and the middle of the page where we talk about UI changes.


---

* [OOZIE-1846](https://issues.apache.org/jira/browse/OOZIE-1846) | *Major* | **Convert CoordActionMaterializeCommand to an XCommand and remove Command**

{{CoordActionMaterializeCommand}} is only used in one place where we do a coordinator dryrun ({{CoordSubmitXCommand.getDryRun(...)}}); otherwise, {{CoordMaterializeTransitionXCommand}} is normally used.

{{CoordActionMaterializeCommand}} appears to be the only class left still based on {{Command}}; everything else is using {{XCommand}}.  We should update the code that uses {{CoordActionMaterializeCommand}} to use {{CoordMaterializeTransitionXCommand}} instead.  Then we could completely remove {{Comamnd}}.


---

* [OOZIE-1845](https://issues.apache.org/jira/browse/OOZIE-1845) | *Major* | **Coord submit command doesn't honor conf "materialization\_window" while calling CoordMaterializeTransitionXCommand**

{code}
 /**
     * Queue MaterializeTransitionXCommand
     */
    protected void queueMaterializeTransitionXCommand(String jobId) {
        // submit a command to materialize jobs for the next 1 hour (3600 secs)
        // so we don't wait 10 mins for the Service to run.
        queue(new CoordMaterializeTransitionXCommand(jobId, 3600), 100);
    }
{code}


---

* [OOZIE-1843](https://issues.apache.org/jira/browse/OOZIE-1843) | *Major* | **Bulk update for coord last modified time for CoordMaterializeTriggerService**

{code}
for (CoordinatorJobBean coordJob : materializeJobs) {
                    if (Services.get().get(JobsConcurrencyService.class).isJobIdForThisServer(coordJob.getId())) {
                        Services.get().get(InstrumentationService.class).get()
                                .incr(INSTRUMENTATION\_GROUP, INSTR\_MAT\_JOBS\_COUNTER, 1);
                        queueCallable(new CoordMaterializeTransitionXCommand(coordJob.getId(), materializationWindow));
                        coordJob.setLastModifiedTime(new Date());
                        CoordJobQueryExecutor.getInstance().executeUpdate(
                                CoordJobQueryExecutor.CoordJobQuery.UPDATE\_COORD\_JOB\_LAST\_MODIFIED\_TIME, coordJob);
 }
{code}


---

* [OOZIE-1836](https://issues.apache.org/jira/browse/OOZIE-1836) | *Major* | **Documenation is wrong for the timestamp() EL Function**

The documentation for the {{timestamp()}} EL Function says:
{quote}
It returns the UTC current date and time in W3C format down to the second (YYYY-MM-DDThh:mm:ss.sZ). I.e.: 1997-07-16T19:20:30.45Z
{quote}
https://oozie.apache.org/docs/4.0.1/WorkflowFunctionalSpec.html#a4.2\_Expression\_Language\_Functions

This is incorrect.  It's ISO08601 format in Oozie processing timezone down to the minute (like other Oozie time formats).  The Javadoc is even correct:
{code:java}
    /**
     * Return the current datetime in ISO8601 using Oozie processing timezone, yyyy-MM-ddTHH:mmZ. i.e.:
     * 1997-07-16T19:20Z
     *
     * @return the formatted time string.
     */
    public static String timestamp() {
        return DateUtils.formatDateOozieTZ(new Date());
    }
{code}

We should update the documentation to match the javadoc


---

* [OOZIE-1830](https://issues.apache.org/jira/browse/OOZIE-1830) | *Minor* | **Change hadoop-1 profile to use 1.2.1**

We should change the hadoop-1 profile to use 1.2.1 instead of 1.1.1.


---

* [OOZIE-1818](https://issues.apache.org/jira/browse/OOZIE-1818) | *Major* | **CoordMaterializeTransitionXCommand verifyPrecondition doesn't verify current time**

We need new condition to verify current time.

{code}
 if (coordJob.getNextMaterializedTimestamp() != null
                && coordJob.getNextMaterializedTimestamp().after(
                        new Timestamp(System.currentTimeMillis() + lookAheadWindow * 1000))) {
            throw new PreconditionException(ErrorCode.E1100, "CoordMaterializeTransitionXCommand for jobId=" + jobId
                    + " Request is for future time. Lookup time is  "
                    + new Timestamp(System.currentTimeMillis() + lookAheadWindow * 1000) + " mat time is "
                    + coordJob.getNextMaterializedTimestamp());
        }
{code}


---

* [OOZIE-1813](https://issues.apache.org/jira/browse/OOZIE-1813) | *Major* | **Add service to report/kill rogue bundles and coordinator jobs**

People leave their test coordinator and bundle jobs without ever killing them
and they just eat up resources heavily. We should have a service which periodically check for abandoned coords and report/kill them.
We can add multiple logic to this like ( number of consecutive failed/timedout action, total number of failed/timedout action). 

To start with if number of coord action with failed/timedout status > defined value, then coord is considered to be rogue.


---

* [OOZIE-1808](https://issues.apache.org/jira/browse/OOZIE-1808) | *Major* | **Change DG\_QuickStart.twiki to reflect changes in sharelib installation**

Bottom of the DG\_QuickStart.twiki needs to be modified to reflect the sharelib installation change.
{code}hadoop fs -put share share{code}


---

* [OOZIE-1803](https://issues.apache.org/jira/browse/OOZIE-1803) | *Major* | **Improvement in Purge service**

Current purge service of oozie have some performance issues and it might help to look at the queries and indexes to improve the the purge service.


---

* [OOZIE-1756](https://issues.apache.org/jira/browse/OOZIE-1756) | *Major* | **hadoop-auth version is wrong if profile isn't selected**

In the hadooplibs for the non-sepecified version of hadoop (e.g. if you build with no profile (i.e. Hadoop 1) and look at the hadoop-2 sharelib), it will have the wrong version of the hadoop-auth jar.


---

* [OOZIE-1743](https://issues.apache.org/jira/browse/OOZIE-1743) | *Major* | **generateDocs is failing**

[ERROR] Failed to execute goal org.apache.maven.plugins:maven-site-plugin:2.0-beta-6:site (default) on project oozie-docs: Execution default of goal org.apache.maven.plugins:maven-site-plugin:2.0-beta-6:site failed: Plugin org.apache.maven.plugins:maven-site-plugin:2.0-beta-6 or one of its dependencies could not be resolved: The following artifacts could not be resolved: org.apache.maven.doxia:doxia-module-twiki:jar:1.0-alpha-9.2y, org.apache.maven.doxia:doxia-core:jar:1.0-alpha-9.2y: Could not find artifact org.apache.maven.doxia:doxia-module-twiki:jar:1.0-alpha-9.2y in repository.cloudera.com (https://repository.cloudera.com/artifactory/ext-release-local) -> [Help 1]

If you can't reproduce, delete ~/.m2/repository/org/apache/maven/doxia/ and try.


---

* [OOZIE-1736](https://issues.apache.org/jira/browse/OOZIE-1736) | *Major* | **Switch to Hadoop 2.3.0 for the hadoop-2 profile**

We should update the "hadoop-2" profile to use Hadoop 2.3.0 instead of 2.2.0.  Y! has done some QE runs on it and I also just tried all of the unit tests.


---

* [OOZIE-1730](https://issues.apache.org/jira/browse/OOZIE-1730) | *Major* | **Change hadoop-2 profile to use 2.4.0**

- Update the hadoop-2 profile to use Hadoop 2.4.0
- Update the version we use for mini-kdc to be 2.4.0
- Make sure all the tests pass and that it actually works.


---

* [OOZIE-1729](https://issues.apache.org/jira/browse/OOZIE-1729) | *Major* | **Add support to Hadoop-2 for AM restarts of the launcher job**

Once we update our Hadoop-2 to Hadoop 2.4.0, we can add support for AM restarts of the launcher job (OOZIE-1722) for Hadoop-2 instead of just Hadoop-3.  

This should be fairly trivial: just need to copy
{{./hadooplibs/hadoop-utils-3/src/main/java/org/apache/oozie/action/hadoop/LauncherMainHadoopUtils.java}}
in place of
{{./hadooplibs/hadoop-utils-2/src/main/java/org/apache/oozie/action/hadoop/LauncherMainHadoopUtils.java}}


---

* [OOZIE-1728](https://issues.apache.org/jira/browse/OOZIE-1728) | *Major* | **When an ApplicationMaster restarts, it restarts the launcher job: DistCp followup**

In doing OOZIE-1722, we had not not add support for the DistCp action because there wasn't a good clean way to set the {{mapreduce.job.tags}} property on the job launched by DistCp that would work between all versions of Hadoop.

The best solution would be to switch our version of Hadoop 1 to Hadoop 1.2.1 (OOZIE-1613), which would make DistCp v2 available in Hadoop 1.  The signatures of DistCp's constructor (where we can pass the tags property in a Configuration) should then be same.  We can then duplicate what DistCp.main(...) does.  

A more immediate solution would involve some ugly reflection based on different versions of Hadoop.


---

* [OOZIE-1726](https://issues.apache.org/jira/browse/OOZIE-1726) | *Major* | **Oozie does not support \_HOST when configuring kerberos security**

When configuring kerberos security for Oozie, the oozie.service.HadoopAccessorService.kerberos.principal property and oozie.authentication.kerberos.principal need to be configured.  However, both of which don't support \_HOST substitution, i.e. if it is configured as oozie/\_HOST@EXAMPLE.COM, the \_HOST shall be replaced with the FQDN of the host.  This feature is supported by hdfs and yarn, so it would be great if oozie support it as well.

Below is from the oozie log:
======================
2014-02-17 08:28:53,199 FATAL Services:533 - USER[-] GROUP[-] E0100: Could not initialize service [org.apache.oozie.service.HadoopAccessorService], Login failure for oozie/\_HOST@EXAMPLE.COM from keytab /etc/security/keytab/oozie.service.keytab
org.apache.oozie.service.ServiceException: E0100: Could not initialize service [org.apache.oozie.service.HadoopAccessorService], Login failure for oozie/\_HOST@EXAMPLE.COM from keytab /etc/security/keytab/oozie.service.keytab
======================


---

* [OOZIE-1696](https://issues.apache.org/jira/browse/OOZIE-1696) | *Major* | **Document how to get the action conf in the Java action**

The Java action doesn't get a lot of the "magic" that we do in the other actions, so things don't always behave right for users using the Java action to launch MapReduce jobs.  We've seen some confusion where these jobs were picking up the mapred-default properties and not working because of it.  It would be great if we could document how to use the job conf prepared by Oozie, which includes the proper mapred-site.xml (and other site files), plus anything in the {{<configuration>}} section of the Java action.  

Basically, they just need to create their job conf with something like this (taken from MapReduceMain.java):
{code:java}
Configuration actionConf = new Configuration(false);
actionConf.addResource(new Path("file:///", System.getProperty("oozie.action.conf.xml")));
{code}

We can put it next to the already documented snippet about the delegation token propagation here: http://oozie.apache.org/docs/4.0.0/WorkflowFunctionalSpec.html#a3.2.7\_Java\_Action


---

* [OOZIE-1688](https://issues.apache.org/jira/browse/OOZIE-1688) | *Major* | **New configuration to specify server-server authentication type.**

Currently conf "oozie.authentication.type" is used by specify authentication type for client-server as well as server-server.

Client-server and server-server communication can use different type of authentication.

We need to have  different conf "oozie.server.authentication.type" to specify server-server authentication type.


---

* [OOZIE-1677](https://issues.apache.org/jira/browse/OOZIE-1677) | *Minor* | **Add Oozie servers to instrumentation info**

It could be useful to add the list of Oozie servers (particularly when HA is enabled) to the instrumentation info.


---

* [OOZIE-1653](https://issues.apache.org/jira/browse/OOZIE-1653) | *Minor* | **Support ALL to allowed error code of the user retry**

Action retry for all the errors if ALL is configured.

oozie-site.xml
{code:xml}
<name>oozie.service.LiteWorkflowStoreService.user.retry.error.code.ext</name>
<value>ALL</value>
{code}

This feature make convenient to set error handle policy.


---

* [OOZIE-1630](https://issues.apache.org/jira/browse/OOZIE-1630) | *Major* | **\<prepare\> operations fail when path doesn't have scheme**

hitting exception "Scheme not present in uri /user/aaaa/test\_hbase\_workflow/output" when doing something like <mkdir path ="/user/aaaa/test\_hbase\_workflow/output"/>.  it should default to hdfs when no scheme specified considering typical use case, also use default namenode if not specified.


---

* [OOZIE-1626](https://issues.apache.org/jira/browse/OOZIE-1626) | *Major* | **pig action pop-up is not working properly in UI**

pop-up doesn't show up when pig job failed and externalChildIDs is "null" (as string)


---

* [OOZIE-1582](https://issues.apache.org/jira/browse/OOZIE-1582) | *Major* | **Bump up Tomcat version to 6.0.37**

Tomcat 6.0.37 fixes two security issues (http://tomcat.apache.org/security-6.html).  We should upgrade from 6.0.36 to incorporate them.


---

* [OOZIE-1573](https://issues.apache.org/jira/browse/OOZIE-1573) | *Major* | **coord:tzOffset() gives incorrect offset for daylight saving timezones**

Case 1:

Daily job run through oozie bundle
Coordinator time Zone: UTC
Dataset timezone: America/New\_York
Start Time: 2013-10-13T00:00Z
End Time: 2013-10-14T00:00Z

Return from tzOffset() function: 4 hrs (which is correct)


Case 2:

Daily job run through oozie bundle
Coordinator time Zone: UTC
Dataset timezone: America/New\_York
Start Time: 2012-11-13T00:00Z
End Time: 2012-11-14T00:00Z

Return from tzOffset() function: 4 hrs (which is not correct as difference between GMT and America/New\_York timezone should be 5 hrs).


---

* [OOZIE-1567](https://issues.apache.org/jira/browse/OOZIE-1567) | *Trivial* | **Provide a wait tool in Oozie**

Currently, in situations where a program has to wait to check wether an oozie workflow is successful or not, it is done by constantly pinging the oozie workflow status (that is, manual scripts need to be written). It would be good if Oozie provided a {{oozie wait -jobID <JOBID>}} or similar.


---

* [OOZIE-1565](https://issues.apache.org/jira/browse/OOZIE-1565) | *Major* | **OOZIE-1481 should only affect v2 of the API, not v1**

OOZIE-1481 changed the behavior of the v1 API such that when getting coord info, specifying {{len=0}} now returns 0 actions instead of all actions.  Also, on the REST call, not specifying any {{len}} parameter is interpreted by the Oozie server as {{len=0}}.  

This is a logically backwards incompatible change.  We should keep this change in the v2 API, but change the v1 API back to the original (incorrect) behavior.


---

* [OOZIE-1563](https://issues.apache.org/jira/browse/OOZIE-1563) | *Major* | **colt jar includes GPL licence**

I believe the colt jar is introduced in the SLA feature. The "Hep" class inside the jar has GPL licence which restricts the usage and distribution of oozie.


---

* [OOZIE-1551](https://issues.apache.org/jira/browse/OOZIE-1551) | *Blocker* | **Change hadoop-2 profile to use 2.2.0**

We should change the hadoop-2 profile to use 2.2.0 (GA) instead of 2.2.0-SNAPSHOT now that its been released.


---

* [OOZIE-1542](https://issues.apache.org/jira/browse/OOZIE-1542) | *Minor* | **When extjs isn't installed, the web UI is unhelpfully blank**

When extjs isn't installed, the web UI page is currently unhelpfully blank (it has the oozie logo and docs link).  In the past (when it used to be an html page instead of a jsp page) it had some text to let the user know that they have to install extjs to see the UI.  

It would be good to put back the same or similar text; otherwise, users may be confused why they can't see the UI if they forget to install extjs.


---

* [OOZIE-1514](https://issues.apache.org/jira/browse/OOZIE-1514) | *Blocker* | **Rerunning a coordinator with no input dependencies puts actions in WAITING instead of READY and proceeding**

Following issue reported by Bowen:
 
{quote}
rerun oozie coordinator action that has no data dependency will make the action stuck in "WAITING" forever.
The issue has to do with the change introduced in coordActionInputCheckXCommand. The rerun action will fail this if statement:
if (!nonExistListStr.equals(missingDeps))
since nonExistListStr and missingDeps are both empty strings. Once it fails the if statement, isChangeDependency is still
set to false and the status change to "READY" will not be persisted since we will call CoordActionUpdateForModifiedTimeJPAExecutor instead of CoordActionUpdateForInputCheckJPAExecutor in the updateCoordAction method.
the Action is in "WAITING" stage forever.
{quote}


---

* [OOZIE-1457](https://issues.apache.org/jira/browse/OOZIE-1457) | *Minor* | **Create a Hive Server 2 action**

We should update the Hive action to support Hive Server 2 (Beeline); we'll also need to add a new {{Credentials}} implementation to get the delegation token (unlike the Hive Metastore, the existing {{HCatCredentials}} cannot be reused for Hive Server 2 because of the JDBC connection).  We may need to bump up the Hive version to support this.  

We should create a "Hive Server 2 action" that uses Beeline to connect to Hive Server 2.  We'll also need to add a new {{Credentials}} implementation to get the delegation token (unlike the Hive Metastore, the existing {{HCatCredentials}} cannot be reused for Hive Server 2 because of the JDBC connection).  

This will definitely work with Hive 0.13 (which hasn't been released) but may also work with Hive 0.12, though probably not with Kerberos.  I believe the delegation token work required isn't in Hive 0.12.


---

* [OOZIE-1428](https://issues.apache.org/jira/browse/OOZIE-1428) | *Minor* | **The delay time for requeue should be configurable**

In {{XCommand}}, the requeue delay for requeuing commands who's lock timed out should be configurable (like the lock timeout itself already is).

Its currently hardcoded to 10 seconds; we should add a {{oozie.command.default.requeue.delay}} property for oozie-site.


---

* [OOZIE-1391](https://issues.apache.org/jira/browse/OOZIE-1391) | *Major* | **Sub wf suspend doesn't update parent wf**

If a workflow contains sub workflow, and sub workflow gets suspended, workflow stays in running state. The workflow should also move to suspended state


---

* [OOZIE-1385](https://issues.apache.org/jira/browse/OOZIE-1385) | *Major* | **Make Uber Mode the default**

Once we sort out the Uber mode for the launcher job issues, we should make it the default to take advantage of the speed-up.


---

* [OOZIE-1299](https://issues.apache.org/jira/browse/OOZIE-1299) | *Major* | **Rerunning the main workflow to rerun sub-workflow and not create new one**

Consider the case that the oozie workflow  calls sub-workflow. If we kill the main workflow and rerun the same does not rerun the same sub-workflow,instead it creates new sub-workflow.
For example:
Workflow Id 0000004-130401101507291-oozie-oozi-W calls the sub-workflow 0000005-130401101507291-oozie-oozi-W.Sub-workflow fails (0000005-130401101507291-oozie-oozi-W i.e main workflow (0000004-130401101507291-oozie-oozi-W) also be killed).If we rerun the main workflow(0000004-130401101507291-oozie-oozi-W)again, it doesn't rerun the same sub-workflow(0000005-130401101507291-oozie-oozi-W),instead it call another sub-workflow(0000006-130401101507291-oozie-oozi-W).


---

* [OOZIE-1284](https://issues.apache.org/jira/browse/OOZIE-1284) | *Major* | **oozie.service.SchemaService.wf.ext.schemas in oozie-site is missing some newer xsd files**

In oozie-site.xml, we have the following listed under {{oozie.service.SchemaService.wf.ext.schemas}}:
{noformat}
shell-action-0.1.xsd
shell-action-0.2.xsd
email-action-0.1.xsd
hive-action-0.2.xsd
hive-action-0.3.xsd
sqoop-action-0.2.xsd
sqoop-action-0.3.xsd
ssh-action-0.1.xsd
distcp-action-0.1.xsd
{noformat}

It's missing the following xsd files:
{noformat}
distcp-action-0.2.xsd
hive-action-0.4.xsd
shell-action-0.3.xsd
sqoop-action-0.4.xsd
{noformat}

If I recall correctly, this will cause Oozie to reject workflows using those versions of those extension action schemas.


---

* [OOZIE-1236](https://issues.apache.org/jira/browse/OOZIE-1236) | *Minor* | **Documentation on capture-output element for Java action has incorrect property to get the filename**

In the documentation [here|http://oozie.apache.org/docs/3.3.1/WorkflowFunctionalSpec.html#a3.2.7\_Java\_Action], it says:

{quote}
The capture-output element can be used to propagate values back into Oozie context, which can then be accessed via EL-functions. This needs to be written out as a java properties format file. The filename is obtained via a System property specified by the constant JavaMainMapper.OOZIE\_JAVA\_MAIN\_CAPTURE\_OUTPUT\_FILE
{quote}

That property is incorrect; it should be {{oozie.action.output.properties}}, which is what the [Java action cookbook|https://cwiki.apache.org/OOZIE/java-cookbook.html] has.


---

* [OOZIE-658](https://issues.apache.org/jira/browse/OOZIE-658) | *Minor* | **Some doc improvements for HowToContribute**

HowToContribute can have a couple of things added to it:

* Base directory for SVN reviewboard for uploading patches: http://svn.apache.org/repos/asf/incubator/oozie/trunk

* Tag to search for, for easy fixes to get started into contributing: newbie

Will post a patch.


---

* [OOZIE-44](https://issues.apache.org/jira/browse/OOZIE-44) | *Trivial* | **Oozie JIRA changes that'd be favorable**

None of this is urgent to do at the moment (given all the work you're already going through -- let me know if I can help in any way too!). But am just compiling some notes here to make the Oozie jira work/act more like the other ecosystem elements:

- Enable formatting in comments. Right now tags like {code}, (-), etc. do not work. These are useful in filing reports or talking in general.
- Limit down issue types in this JIRA instance. HDFS, for example, has just Bug, Task, Improvement, New Feature, Wish types. OOZIE seems to have a load of things.

(Will add more notes as a comment as I notice them while contributing things)



