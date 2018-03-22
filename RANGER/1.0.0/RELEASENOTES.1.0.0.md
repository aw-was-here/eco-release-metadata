
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
# Apache Ranger  1.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [RANGER-1372](https://issues.apache.org/jira/browse/RANGER-1372) | *Major* | **There are some errors when I used 'sudo ranger-usersync start' command to run the Ranger UserSync Process in ubuntu 16.04.**

There are following errors when I used 'sudo ranger-usersync start' command to run the Ranger UserSync Process in ubuntu 16.04.
Starting Apache Ranger Usersync Service
/usr/bin/ranger-usersync: line 78: /var/run/ranger/usersync.pid: No such file or directory
chown: cannot access '/var/run/ranger/usersync.pid': No such file or directory
chmod: cannot access '/var/run/ranger/usersync.pid': No such file or directory
cat: /var/run/ranger/usersync.pid: No such file or directory
Apache Ranger Usersync Service with pid  has started.

And the following error would also occur when I run 'sudo ranger-usersync stop' command.
Apache Ranger Usersync Service not running

In fact the process was running.

The cause of the error is as follows:
/var/run/ranger directory does not exist when Apache Ranger Usersync Service started. The 'echo $VALUE\_OF\_PID \> ${pidf}' failed. This problem will cause the following errors:
1. /usr/bin/ranger-usersync: line 78: /var/run/ranger/usersync.pid: No such file or directory
2. chown: cannot access '/var/run/ranger/usersync.pid': No such file or directory
3. chmod: cannot access '/var/run/ranger/usersync.pid': No such file or directory
4. cat: /var/run/ranger/usersync.pid: No such file or directory
5. Apache Ranger Usersync Service with pid  has started. The 'pid' has no value.
6. Apache Ranger Usersync Service not running. In fact the process was running.


---

* [RANGER-1416](https://issues.apache.org/jira/browse/RANGER-1416) | *Major* | **SunX509 is the hardcoded Algorithm for SSL**

In IBM JDK environment, the SSL Algorithm is IbmX509. The hardcoded SunX509 fails in the IBM JDK environment. This is similar to the issue for THRIFT-1332: TSSLTransportParameters class uses hard coded value keyManagerType: SunX509


---

* [RANGER-1412](https://issues.apache.org/jira/browse/RANGER-1412) | *Critical* | **Start hadoop failed after enabling ranger HDFS plugins**

Start hadoop failed after enabling ranger HDFS plugins. The error information is as following:
2017-02-27 02:34:58,885 ERROR org.apache.hadoop.hdfs.server.namenode.FSNamesystem: FSNamesystem initialization failed.
java.lang.RuntimeException: java.lang.reflect.InvocationTargetException
	at org.apache.hadoop.util.ReflectionUtils.newInstance(ReflectionUtils.java:134)
	at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.\<init\>(FSNamesystem.java:843)
	at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.loadFromDisk(FSNamesystem.java:673)
	at org.apache.hadoop.hdfs.server.namenode.NameNode.loadNamesystem(NameNode.java:585)
	at org.apache.hadoop.hdfs.server.namenode.NameNode.initialize(NameNode.java:645)
	at org.apache.hadoop.hdfs.server.namenode.NameNode.\<init\>(NameNode.java:812)
	at org.apache.hadoop.hdfs.server.namenode.NameNode.\<init\>(NameNode.java:796)
	at org.apache.hadoop.hdfs.server.namenode.NameNode.createNameNode(NameNode.java:1493)
	at org.apache.hadoop.hdfs.server.namenode.NameNode.main(NameNode.java:1559)
...............
	at org.apache.ranger.authorization.hadoop.RangerHdfsAuthorizer.init(RangerHdfsAuthorizer.java:64)
	at org.apache.ranger.authorization.hadoop.RangerHdfsAuthorizer.\<init\>(RangerHdfsAuthorizer.java:43)
	at sun.reflect.GeneratedConstructorAccessor7.newInstance(Unknown Source)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:526)
	at java.lang.Class.newInstance(Class.java:383)
	at org.apache.ranger.authorization.hadoop.RangerHdfsAuthorizer.init(RangerHdfsAuthorizer.java:64)
	at org.apache.ranger.authorization.hadoop.RangerHdfsAuthorizer.\<init\>(RangerHdfsAuthorizer.java:43)
	at sun.reflect.GeneratedConstructorAccessor7.newInstance(Unknown Source)
2017-02-27 02:34:58,922 INFO org.apache.hadoop.util.ExitUtil: Exiting with status 1

The cause of the issue is that the enable-hdfs-plugin.sh was done as following.
1. Link ranger-1.0.0-SNAPSHOT-hdfs-plugin/lib/ranger-hdfs-plugin-impl to /var/local/hadoop/hadoop-2.7.3/lib/ranger-hdfs-plugin-impl
2. Link ranger-1.0.0-SNAPSHOT-hdfs-plugin/lib/ranger-hdfs-plugin-shim-1.0.0-SNAPSHOT.jar to /var/local/hadoop/hadoop-2.7.3/lib/ranger-hdfs-plugin-shim-1.0.0-SNAPSHOT.jar
3. Link ranger-1.0.0-SNAPSHOT-hdfs-plugin/lib/ranger-plugin-classloader-1.0.0-SNAPSHOT.jar to /var/local/hadoop/hadoop-2.7.3/lib/ranger-plugin-classloader-1.0.0-SNAPSHOT.jar

lrwxrwxrwx  1 root root   72 Feb 27 02:33 ranger-hdfs-plugin-impl -\> /usr/local/ranger-1.0.0-SNAPSHOT-hdfs-plugin/lib/ranger-hdfs-plugin-impl/
lrwxrwxrwx  1 root root   91 Feb 27 02:33 ranger-hdfs-plugin-shim-1.0.0-SNAPSHOT.jar -\> /usr/local/ranger-1.0.0-SNAPSHOT-hdfs-plugin/lib/ranger-hdfs-plugin-shim-1.0.0-SNAPSHOT.jar
lrwxrwxrwx  1 root root   93 Feb 27 02:33 ranger-plugin-classloader-1.0.0-SNAPSHOT.jar -\> /usr/local/ranger-1.0.0-SNAPSHOT-hdfs-plugin/lib/ranger-plugin-classloader-1.0.0-SNAPSHOT.jar

The above link are error. The hadoop can not find dependent packages when starting. They should link as following.
1. Link ranger-1.0.0-SNAPSHOT-hdfs-plugin/lib/ranger-hdfs-plugin-impl to /var/local/hadoop/hadoop-2.7.3/share/hadoop/hdfs/lib/ranger-hdfs-plugin-impl
2. Link ranger-1.0.0-SNAPSHOT-hdfs-plugin/lib/ranger-hdfs-plugin-shim-1.0.0-SNAPSHOT.jar to /var/local/hadoop/hadoop-2.7.3/share/hadoop/hdfs/lib/ranger-hdfs-plugin-shim-1.0.0-SNAPSHOT.jar
3. Link ranger-1.0.0-SNAPSHOT-hdfs-plugin/lib/ranger-plugin-classloader-1.0.0-SNAPSHOT.jar to /var/local/hadoop/hadoop-2.7.3/share/hadoop/hdfs/lib/ranger-plugin-classloader-1.0.0-SNAPSHOT.jar

The program install path is as following:
1. Install pseudo distributions hadoop. It's path is /var/local/hadoop/hadoop-2.7.3.
2. ranger hdfs plugin path is /usr/local/ranger-1.0.0-SNAPSHOT-hdfs-plugin.

Test and verify:
I carefully tested and verified the patch before commit the issue.


---

* [RANGER-1386](https://issues.apache.org/jira/browse/RANGER-1386) | *Major* | **ranger hdfs-plugin function not revoked after execute disable-hdfs-plugin.sh which cause hadoop-hdfs authorization failed.**

steps:
1.User yuwen does't has the permission to put a.txt in hdfs Catalog /test
[yuwen@zdh41 bin]$ ./hdfs dfs -put /home/xiehh/a.txt /test
put: Permission denied: user=yuwen, access=WRITE, inode="/test/a.txt.\_COPYING\_":xiehh:supergroup:drwxr-xr-x

2.Execute enable-hdfs-plugin.sh and Restart hadoop-hdfs, ranger authorization control enabled. 
We add policy to give permission for user yuwen to put a file in web UI.
[yuwen@zdh41 bin]$ ./hdfs dfs -put /home/xiehh/a.txt /test
[yuwen@zdh41 bin]$ ./hdfs dfs -ls /test
Found 1 items
-rw-r--r--   3 yuwen supergroup         15 2017-02-20 17:07 /test/a.txt

3. Execute disable-hdfs-plugin.sh and Restart hadoop-hdfs
user yuwen shouldn't have the permission to put a file in Catalog /test
but he also has the rights ,ranger hdfs-plugin function not revoked
This is a serious problem which cause hadoop-hdfs authorization failed.


---

* [RANGER-1400](https://issues.apache.org/jira/browse/RANGER-1400) | *Major* | **Enabling Ranger HDFS Plugins failed when hadoop program and Ranger HDFS Plugin are not in the same path.**

Enabling Ranger HDFS Plugins failed when hadoop program and Ranger HDFS Plugin are not in the same path. 
1. Install hadoop-2.7.3 under /var/local/hadoop
2. Copy ranger-1.0.0-SNAPSHOT-hdfs-plugin.tar.gz to /usr/local
3. Run command: cd /usr/local
4. Run command: sudo tar -zxvf ranger-1.0.0-SNAPSHOT-hdfs-plugin.tar.gz
5. Modified install.properties according to installation guide.
6. Execute enable-hdfs-plugin.sh
result:
ERROR: Unable to find the lib directory of component [hadoop];  dir [/usr/local/hadoop/lib] not found.

Reason:
COMPONENT\_INSTALL\_DIR\_NAME does not exist in install.properties. So the HCOMPONENT\_INSTALL\_DIR\_NAME variable is empty when execute the following sentence.
 HCOMPONENT\_INSTALL\_DIR\_NAME=$(getInstallProperty 'COMPONENT\_INSTALL\_DIR\_NAME')
The result is that HCOMPONENT\_LIB\_DIR directory doesn't exist.

We should add COMPONENT\_INSTALL\_DIR\_NAME parameter to install.properties. The error can be avoided after setting COMPONENT\_INSTALL\_DIR\_NAME.

Test and verify:
I carefully tested and verified the patch before commit the issue.


---

* [RANGER-1519](https://issues.apache.org/jira/browse/RANGER-1519) | *Major* | **Error occurred after execute enable-hive-plugin.sh**

[root@zdh41 ranger-1.0.0-SNAPSHOT-hive-plugin]# ./enable-hive-plugin.sh 
Custom user and group is available, using custom user and group.
ERROR: Unable to find the conf directory of component [hive]; dir [/home/xiehh/rangerplugin/hive/conf] not found.
Exiting installation.


---

* [RANGER-1525](https://issues.apache.org/jira/browse/RANGER-1525) | *Major* | **Some users hope that the execute programs and install configuration file of the Ranger Admin can be deployed separately when they integrate Ranger into the big data platform or business systems to uniform install Ranger.**

Some users hope that the execute programs and install configuration file of the Ranger Admin can be deployed separately when they integrate Ranger into the big data platform or business systems to install Ranger through the platform or systems. We should support the need in the case of compatibility with existing logic.

Solution:
1. Users can set RANGER\_ADMIN\_CONF environment variable to meet their needs.
2. The program read configuration information from the RANGER\_ADMIN\_CONF path.
3. Users can re-plan programs and configurations when installing the Ranger Admin. Then they set  RANGER\_ADMIN\_CONF value as configuration path.


---

* [RANGER-1540](https://issues.apache.org/jira/browse/RANGER-1540) | *Major* | **Log is very important for big data platform. The main purpose of log analysis is that we need to know who is running the service, in which machine running service, which service out of the problem. The ranger security admin should support the feature.**

Log is very important for big data platform. The main purpose of log analysis is that we need to know who is running the service, in which machine running service, which service out of the problem. The ranger security admin should support the feature.
Implement logic:
1. Modify the value of log4j.appender.xa\_log\_appender.file from ${logdir}/ranger\_admin.log to ${logdir}/ranger-${user}-rangeradmin-${hostname}.log in /security-admin/src/main/webapp/WEB-INF/log4j.properties file.
2. Pass ${user} and ${hostname} as parameters to org.apache.ranger.server.tomcat.EmbeddedServer.
3. User obtains the user and hostname information by parsing the log file name.


---

* [RANGER-1541](https://issues.apache.org/jira/browse/RANGER-1541) | *Major* | **The assignment logic is inconsistent for the value of the RANGER\_ADMIN\_HOME variable in Ranger Admin. It will cause a serious failure.**

The assignment logic is inconsistent for the value of the RANGER\_ADMIN\_HOME variable in Ranger Admin. If the RANGER\_ADMIN\_HOME environment variable do not set, the Ranger Admin is installed using current path in linux. However the Ranger Admin is installed using empty path in windows. So it will cause a serious failure in windows system.


---

* [RANGER-1568](https://issues.apache.org/jira/browse/RANGER-1568) | *Major* | **Similar to RANGER-1540, the Ranger UserSync should also support the same new feature.**

Similar to RANGER-1540, the Ranger UserSync should also support the same new feature.


---

* [RANGER-1542](https://issues.apache.org/jira/browse/RANGER-1542) | *Major* | **Exceptions occured when I test connection during create a new service for atlas-plugin**

{code}
2017-04-25 07:02:20,358 [timed-executor-pool-0] ERROR org.apache.ranger.plugin.util.PasswordUtils (PasswordUtils.java:127) - Unable to decrypt password due to error
javax.crypto.BadPaddingException: Given final block not properly padded
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:811)
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:676)
	at com.sun.crypto.provider.PBECipherCore.doFinal(PBECipherCore.java:422)
	at com.sun.crypto.provider.PBEWithMD5AndDESCipher.engineDoFinal(PBEWithMD5AndDESCipher.java:316)
	at javax.crypto.Cipher.doFinal(Cipher.java:2131)
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:112)
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:183)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:227)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:123)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:114)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:356)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:114)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:107)
	at org.apache.ranger.services.atlas.client.AtlasClient.timedTask(AtlasClient.java:692)
	at org.apache.ranger.services.atlas.client.AtlasClient.getResourceList(AtlasClient.java:161)
	at org.apache.ranger.services.atlas.client.AtlasClient.getAtlasResource(AtlasClient.java:673)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTest(AtlasClient.java:619)
	at org.apache.ranger.services.atlas.client.AtlasResourceMgr.validateConfig(AtlasResourceMgr.java:40)
	at org.apache.ranger.services.atlas.RangerServiceAtlas.validateConfig(RangerServiceAtlas.java:58)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:563)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:550)
	at org.apache.ranger.biz.ServiceMgr$TimedCallable.call(ServiceMgr.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
2017-04-25 07:02:20,358 [timed-executor-pool-0] INFO  apache.ranger.services.atlas.client.AtlasClient (AtlasClient.java:185) - Password decryption failed; trying Atlas connection with received password string
2017-04-25 07:02:20,359 [timed-executor-pool-0] ERROR org.apache.ranger.plugin.util.PasswordUtils (PasswordUtils.java:127) - Unable to decrypt password due to error
javax.crypto.BadPaddingException: Given final block not properly padded
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:811)
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:676)
	at com.sun.crypto.provider.PBECipherCore.doFinal(PBECipherCore.java:422)
	at com.sun.crypto.provider.PBEWithMD5AndDESCipher.engineDoFinal(PBEWithMD5AndDESCipher.java:316)
	at javax.crypto.Cipher.doFinal(Cipher.java:2131)
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:112)
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:192)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:227)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:123)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:114)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:356)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:114)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:107)
	at org.apache.ranger.services.atlas.client.AtlasClient.timedTask(AtlasClient.java:692)
	at org.apache.ranger.services.atlas.client.AtlasClient.getResourceList(AtlasClient.java:161)
	at org.apache.ranger.services.atlas.client.AtlasClient.getAtlasResource(AtlasClient.java:673)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTest(AtlasClient.java:619)
	at org.apache.ranger.services.atlas.client.AtlasResourceMgr.validateConfig(AtlasResourceMgr.java:40)
	at org.apache.ranger.services.atlas.RangerServiceAtlas.validateConfig(RangerServiceAtlas.java:58)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:563)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:550)
	at org.apache.ranger.biz.ServiceMgr$TimedCallable.call(ServiceMgr.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
2017-04-25 07:02:20,360 [timed-executor-pool-0] ERROR apache.ranger.services.atlas.client.AtlasClient (AtlasClient.java:212) - Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
java.io.IOException: Unable to decrypt password due to error
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:128)
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:192)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:227)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:123)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:114)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:356)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:114)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:107)
	at org.apache.ranger.services.atlas.client.AtlasClient.timedTask(AtlasClient.java:692)
	at org.apache.ranger.services.atlas.client.AtlasClient.getResourceList(AtlasClient.java:161)
	at org.apache.ranger.services.atlas.client.AtlasClient.getAtlasResource(AtlasClient.java:673)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTest(AtlasClient.java:619)
	at org.apache.ranger.services.atlas.client.AtlasResourceMgr.validateConfig(AtlasResourceMgr.java:40)
	at org.apache.ranger.services.atlas.RangerServiceAtlas.validateConfig(RangerServiceAtlas.java:58)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:563)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:550)
	at org.apache.ranger.biz.ServiceMgr$TimedCallable.call(ServiceMgr.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: javax.crypto.BadPaddingException: Given final block not properly padded
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:811)
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:676)
	at com.sun.crypto.provider.PBECipherCore.doFinal(PBECipherCore.java:422)
	at com.sun.crypto.provider.PBEWithMD5AndDESCipher.engineDoFinal(PBEWithMD5AndDESCipher.java:316)
	at javax.crypto.Cipher.doFinal(Cipher.java:2131)
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:112)
	... 21 more
2017-04-25 07:02:20,361 [timed-executor-pool-0] ERROR apache.ranger.services.atlas.client.AtlasClient (AtlasClient.java:251) - Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:211)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:227)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:123)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:114)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:356)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:114)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:107)
	at org.apache.ranger.services.atlas.client.AtlasClient.timedTask(AtlasClient.java:692)
	at org.apache.ranger.services.atlas.client.AtlasClient.getResourceList(AtlasClient.java:161)
	at org.apache.ranger.services.atlas.client.AtlasClient.getAtlasResource(AtlasClient.java:673)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTest(AtlasClient.java:619)
	at org.apache.ranger.services.atlas.client.AtlasResourceMgr.validateConfig(AtlasResourceMgr.java:40)
	at org.apache.ranger.services.atlas.RangerServiceAtlas.validateConfig(RangerServiceAtlas.java:58)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:563)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:550)
	at org.apache.ranger.biz.ServiceMgr$TimedCallable.call(ServiceMgr.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: java.io.IOException: Unable to decrypt password due to error
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:128)
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:192)
	... 20 more
Caused by: javax.crypto.BadPaddingException: Given final block not properly padded
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:811)
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:676)
	at com.sun.crypto.provider.PBECipherCore.doFinal(PBECipherCore.java:422)
	at com.sun.crypto.provider.PBEWithMD5AndDESCipher.engineDoFinal(PBEWithMD5AndDESCipher.java:316)
	at javax.crypto.Cipher.doFinal(Cipher.java:2131)
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:112)
	... 21 more
2017-04-25 07:02:20,361 [timed-executor-pool-0] ERROR apache.ranger.services.atlas.client.AtlasClient$1$1 (AtlasClient.java:144) - Exception while getting Atlas Resource List.
org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:250)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:123)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:114)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:356)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:114)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:107)
	at org.apache.ranger.services.atlas.client.AtlasClient.timedTask(AtlasClient.java:692)
	at org.apache.ranger.services.atlas.client.AtlasClient.getResourceList(AtlasClient.java:161)
	at org.apache.ranger.services.atlas.client.AtlasClient.getAtlasResource(AtlasClient.java:673)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTest(AtlasClient.java:619)
	at org.apache.ranger.services.atlas.client.AtlasResourceMgr.validateConfig(AtlasResourceMgr.java:40)
	at org.apache.ranger.services.atlas.RangerServiceAtlas.validateConfig(RangerServiceAtlas.java:58)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:563)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:550)
	at org.apache.ranger.biz.ServiceMgr$TimedCallable.call(ServiceMgr.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:211)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:227)
	... 19 more
Caused by: java.io.IOException: Unable to decrypt password due to error
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:128)
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:192)
	... 20 more
Caused by: javax.crypto.BadPaddingException: Given final block not properly padded
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:811)
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:676)
	at com.sun.crypto.provider.PBECipherCore.doFinal(PBECipherCore.java:422)
	at com.sun.crypto.provider.PBEWithMD5AndDESCipher.engineDoFinal(PBEWithMD5AndDESCipher.java:316)
	at javax.crypto.Cipher.doFinal(Cipher.java:2131)
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:112)
	... 21 more
2017-04-25 07:02:20,362 [timed-executor-pool-0] ERROR apache.ranger.services.atlas.client.AtlasClient (AtlasClient.java:163) - Unable to get Atlas Resource list
org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List.
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:143)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:114)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:356)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:114)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:107)
	at org.apache.ranger.services.atlas.client.AtlasClient.timedTask(AtlasClient.java:692)
	at org.apache.ranger.services.atlas.client.AtlasClient.getResourceList(AtlasClient.java:161)
	at org.apache.ranger.services.atlas.client.AtlasClient.getAtlasResource(AtlasClient.java:673)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTest(AtlasClient.java:619)
	at org.apache.ranger.services.atlas.client.AtlasResourceMgr.validateConfig(AtlasResourceMgr.java:40)
	at org.apache.ranger.services.atlas.RangerServiceAtlas.validateConfig(RangerServiceAtlas.java:58)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:563)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:550)
	at org.apache.ranger.biz.ServiceMgr$TimedCallable.call(ServiceMgr.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:250)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:123)
	... 18 more
Caused by: org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:211)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:227)
	... 19 more
Caused by: java.io.IOException: Unable to decrypt password due to error
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:128)
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:192)
	... 20 more
Caused by: javax.crypto.BadPaddingException: Given final block not properly padded
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:811)
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:676)
	at com.sun.crypto.provider.PBECipherCore.doFinal(PBECipherCore.java:422)
	at com.sun.crypto.provider.PBEWithMD5AndDESCipher.engineDoFinal(PBEWithMD5AndDESCipher.java:316)
	at javax.crypto.Cipher.doFinal(Cipher.java:2131)
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:112)
	... 21 more
2017-04-25 07:02:20,363 [timed-executor-pool-0] ERROR apache.ranger.services.atlas.client.AtlasClient (AtlasClient.java:167) - Unable to get a valid response for expected mime type : [application/json] 
org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List.
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:143)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:114)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:356)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:114)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:107)
	at org.apache.ranger.services.atlas.client.AtlasClient.timedTask(AtlasClient.java:692)
	at org.apache.ranger.services.atlas.client.AtlasClient.getResourceList(AtlasClient.java:161)
	at org.apache.ranger.services.atlas.client.AtlasClient.getAtlasResource(AtlasClient.java:673)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTest(AtlasClient.java:619)
	at org.apache.ranger.services.atlas.client.AtlasResourceMgr.validateConfig(AtlasResourceMgr.java:40)
	at org.apache.ranger.services.atlas.RangerServiceAtlas.validateConfig(RangerServiceAtlas.java:58)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:563)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:550)
	at org.apache.ranger.biz.ServiceMgr$TimedCallable.call(ServiceMgr.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:250)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:123)
	... 18 more
Caused by: org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:211)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:227)
	... 19 more
Caused by: java.io.IOException: Unable to decrypt password due to error
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:128)
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:192)
	... 20 more
Caused by: javax.crypto.BadPaddingException: Given final block not properly padded
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:811)
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:676)
	at com.sun.crypto.provider.PBECipherCore.doFinal(PBECipherCore.java:422)
	at com.sun.crypto.provider.PBEWithMD5AndDESCipher.engineDoFinal(PBEWithMD5AndDESCipher.java:316)
	at javax.crypto.Cipher.doFinal(Cipher.java:2131)
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:112)
	... 21 more
2017-04-25 07:02:20,364 [timed-executor-pool-0] ERROR apache.ranger.services.atlas.client.AtlasClient (AtlasClient.java:683) - getAtlasResource: Unable to get Atlas Resources.
org.apache.ranger.plugin.client.HadoopException: Unable to get a valid response for expected mime type : [application/json] 
	at org.apache.ranger.services.atlas.client.AtlasClient.getResourceList(AtlasClient.java:166)
	at org.apache.ranger.services.atlas.client.AtlasClient.getAtlasResource(AtlasClient.java:673)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTest(AtlasClient.java:619)
	at org.apache.ranger.services.atlas.client.AtlasResourceMgr.validateConfig(AtlasResourceMgr.java:40)
	at org.apache.ranger.services.atlas.RangerServiceAtlas.validateConfig(RangerServiceAtlas.java:58)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:563)
	at org.apache.ranger.biz.ServiceMgr$ValidateCallable.actualCall(ServiceMgr.java:550)
	at org.apache.ranger.biz.ServiceMgr$TimedCallable.call(ServiceMgr.java:511)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List.
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:143)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:114)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:356)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:114)
	at org.apache.ranger.services.atlas.client.AtlasClient$1.call(AtlasClient.java:107)
	at org.apache.ranger.services.atlas.client.AtlasClient.timedTask(AtlasClient.java:692)
	at org.apache.ranger.services.atlas.client.AtlasClient.getResourceList(AtlasClient.java:161)
	... 11 more
Caused by: org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:250)
	at org.apache.ranger.services.atlas.client.AtlasClient$1$1.run(AtlasClient.java:123)
	... 18 more
Caused by: org.apache.ranger.plugin.client.HadoopException: Exception while getting Atlas Resource List. URL : http://localhost:21000/j\_spring\_security\_check
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:211)
	at org.apache.ranger.services.atlas.client.AtlasClient.connectionTestResource(AtlasClient.java:227)
	... 19 more
Caused by: java.io.IOException: Unable to decrypt password due to error
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:128)
	at org.apache.ranger.services.atlas.client.AtlasClient.getStatusResponse(AtlasClient.java:192)
	... 20 more
Caused by: javax.crypto.BadPaddingException: Given final block not properly padded
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:811)
	at com.sun.crypto.provider.CipherCore.doFinal(CipherCore.java:676)
	at com.sun.crypto.provider.PBECipherCore.doFinal(PBECipherCore.java:422)
	at com.sun.crypto.provider.PBEWithMD5AndDESCipher.engineDoFinal(PBEWithMD5AndDESCipher.java:316)
	at javax.crypto.Cipher.doFinal(Cipher.java:2131)
	at org.apache.ranger.plugin.util.PasswordUtils.decryptPassword(PasswordUtils.java:112)
	... 21 more
2017-04-25 07:02:20,365 [timed-executor-pool-0] ERROR apache.ranger.services.atlas.client.AtlasResourceMgr (AtlasResourceMgr.java:42) - \<== AtlasResourceMgr.validateConfig Error: org.apache.ranger.plugin.client.HadoopException: getAtlasResource: Unable to get Atlas Resources.
2017-04-25 07:02:20,365 [timed-executor-pool-0] ERROR org.apache.ranger.services.atlas.RangerServiceAtlas (RangerServiceAtlas.java:60) - \<== RangerServiceAtlas.validateConfig Error:org.apache.ranger.plugin.client.HadoopException: getAtlasResource: Unable to get Atlas Resources.
2017-04-25 07:02:20,365 [timed-executor-pool-0] ERROR org.apache.ranger.biz.ServiceMgr$TimedCallable (ServiceMgr.java:513) - TimedCallable.call: Error:org.apache.ranger.plugin.client.HadoopException: getAtlasResource: Unable to get Atlas Resources.
2017-04-25 07:02:20,365 [timed-executor-pool-0] ERROR apache.ranger.services.atlas.client.AtlasResourceMgr (AtlasResourceMgr.java:42) - \<== AtlasResourceMgr.validateConfig Error: org.apache.ranger.plugin.client.HadoopException: getAtlasResource: Unable to get Atlas Resources.
2017-04-25 07:02:20,365 [timed-executor-pool-0] ERROR org.apache.ranger.services.atlas.RangerServiceAtlas (RangerServiceAtlas.java:60) - \<== RangerServiceAtlas.validateConfig Error:org.apache.ranger.plugin.client.HadoopException: getAtlasResource: Unable to get Atlas Resources.
2017-04-25 07:02:20,365 [timed-executor-pool-0] ERROR org.apache.ranger.biz.ServiceMgr$TimedCallable (ServiceMgr.java:513) - TimedCallable.call: Error:org.apache.ranger.plugin.client.HadoopException: getAtlasResource: Unable to get Atlas Resources.
2017-04-25 07:02:20,366 [http-bio-6080-exec-5] ERROR org.apache.ranger.biz.ServiceMgr (ServiceMgr.java:188) - ==\> ServiceMgr.validateConfig Error:org.apache.ranger.plugin.client.HadoopException: org.apache.ranger.plugin.client.HadoopException: getAtlasResource: Unable to get Atlas Resources.
{code}


---

* [RANGER-1613](https://issues.apache.org/jira/browse/RANGER-1613) | *Major* | **There is one defect in start script for ranger-usersync process**

1.In install.properties, I configure 'ranger\_base\_dir=/etc/ranger/xiehh'
2.I execute ranger-usersync-services.sh to start
  [root@zdh41 ranger-1.0.0-SNAPSHOT-usersync]# ./ranger-usersync-services.sh start
  Starting Apache Ranger Usersync Service
  Apache Ranger Usersync Service with pid 23417 has started.
3.[root@zdh41 ranger-1.0.0-SNAPSHOT-usersync]# ps -ef\|grep 23417
  root     23417     1 31 15:39 pts/1    00:00:03 java -Dproc\_rangerusersync -Dlog4j.configuration=file:/etc/ranger/usersync/conf/log4j.properties -Duser=root -Dhostname=zdh41 -Dlogdir=logs -cp /home/rangerusersync/ranger-1.0.0-SNAPSHOT-usersync/dist/\*:/home/rangerusersync/ranger-1.0.0-SNAPSHOT-usersync/lib/\*:/home/rangerusersync/ranger-1.0.0-SNAPSHOT-usersync/conf:/etc/hadoop/conf/\* org.apache.ranger.authentication.UnixAuthenticationService -enableUnixAuth
  
The Configuration '-Dlog4j.configuration=file:/etc/ranger/usersync/conf/log4j.properties' will not find the file log4j.properties,because the dir '/etc/ranger/usersync/conf' is not right ,it should be '/etc/ranger/xiehh/usersync/conf'


So we should change 
{code}
nohup java -Dproc\_rangerusersync -Dlog4j.configuration=file:/etc/ranger/usersync/conf/log4j.properties ${JAVA\_OPTS} -Duser=${USER} -Dhostname=${HOSTNAME} -Dlogdir="${logdir}" -cp "${cp}" org.apache.ranger.authentication.UnixAuthenticationService -enableUnixAuth \> ${logdir}/auth.log 2\>&1 &
{code}
in ranger-usersync-services.sh

Change
{code}
-Dlog4j.configuration=file:/etc/ranger/usersync/conf/log4j.properties
{code}
to
{code}
-Dlog4j.configuration=file:${RANGER\_BASE\_DIR}/usersync/conf/log4j.properties
{code}
for dynamic configuration.


---

* [RANGER-1662](https://issues.apache.org/jira/browse/RANGER-1662) | *Minor* | **The user is easy to configure the wrong format's data for 'YARN REST URL' property when adding a new yarn service. It will cause testconnection fail.**

User can only configure the ‘YARN REST URL’ property using the specified format. In order to avoid that user inputs error format's data, we should add a hint for ‘YARN REST URL’ property.


---

* [RANGER-1668](https://issues.apache.org/jira/browse/RANGER-1668) | *Minor* | **Do some code improvement in setup.sh of security-admin**

{code}
ranger\_hadoop\_conf\_file=${WEBAPP\_ROOT}/WEB-INF/classes/conf/core-site.xml
{code}
The ranger\_hadoop\_conf\_file variable had been defined and equaled to ${WEBAPP\_ROOT}/WEB-INF/classes/conf/core-site.xml. So repeated ${WEBAPP\_ROOT}/WEB-INF/classes/conf/core-site.xml should been replaced by ${ranger\_hadoop\_conf\_file} in following code:
{code}
if [ -d ${WEBAPP\_ROOT}/WEB-INF/classes/conf ]; then
   chown -R ${unix\_user} ${WEBAPP\_ROOT}/WEB-INF/classes/conf
   if [ "${hadoop\_conf}" == "" ]
   then
	log "[WARN] Property hadoop\_conf not found. Creating blank core-site.xml."
	echo "\<configuration\>\</configuration\>" \> ${WEBAPP\_ROOT}/WEB-INF/classes/conf/core-site.xml
	else
	if [ -f ${hadoop\_conf\_file} ]; then
               ln -sf ${hadoop\_conf\_file} ${WEBAPP\_ROOT}/WEB-INF/classes/conf/core-site.xml
        else
               log "[WARN] core-site.xml file not found in provided hadoop\_conf path. Creating blank core-site.xml"
		echo "\<configuration\>\</configuration\>" \> ${WEBAPP\_ROOT}/WEB-INF/classes/conf/core-site.xml
          fi
     fi
fi
{code}


---

* [RANGER-1503](https://issues.apache.org/jira/browse/RANGER-1503) | *Major* | **Add tips to make jdbc.url parameter easy for users to use when create hive-plugin service**

The jdbc.url of hive has multiple modes,each model has a different parameter format.
So,we need to add tips to make it easy for users to use.
Detailed link:
https://cwiki.apache.org/confluence/display/Hive/HiveServer2+Clients#HiveServer2Clients-JDBC


---

* [RANGER-1693](https://issues.apache.org/jira/browse/RANGER-1693) | *Major* | **The pidf's assignment logic in ranger-kms-initd should be consistent with the pidf's assignment logic in ranger-kms**

The pidf's assignment logic in ranger-kms-initd is as following:
pidf=/var/run/ranger\_kms/rangerkms.pid
if [ -f $pidf ]; then
	pid=\`cat $pidf\`
else
    pid=\`ps -ef \| grep java \| grep -- '-Dproc\_rangerkms' \| grep -v grep \| awk '{ print $2 }'\`
fi

the pidf's assignment logic in ranger-kms is as following:
realScriptPath=\`readlink -f $0\`
realScriptDir=\`dirname $realScriptPath\`
RANGER\_KMS\_DIR=\`(cd $realScriptDir; pwd)\`
for custom\_env\_script in \`find ${RANGER\_KMS\_DIR}/ews/webapp/WEB-INF/classes/conf/ -name "ranger-kms-env\*"\`; do
        if [ -f $custom\_env\_script ]; then
                . $custom\_env\_script
        fi
done
if [ -z "${RANGER\_KMS\_PID\_NAME}" ]
then
        RANGER\_KMS\_PID\_NAME=rangerkms.pid
fi
if [ -z "${RANGER\_KMS\_PID\_DIR\_PATH}" ]
then
	RANGER\_KMS\_PID\_DIR\_PATH=/var/run/ranger\_kms
fi
if [ ! -d "${RANGER\_KMS\_PID\_DIR\_PATH}" ]
then
	mkdir -p  $RANGER\_KMS\_PID\_DIR\_PATH
	chmod 660 $RANGER\_KMS\_PID\_DIR\_PATH
fi
pidf=${RANGER\_KMS\_PID\_DIR\_PATH}/${RANGER\_KMS\_PID\_NAME}

if the value of RANGER\_KMS\_PID\_DIR\_PATH variable was changed, the value of pidf in ranger-kms-initd is error.


---

* [RANGER-1698](https://issues.apache.org/jira/browse/RANGER-1698) | *Critical* | **Write audit log to solr failure.**

Plugin writed audit log to solr failure because of the lack of noggit-0.6.jar in plugin lib path.
The following issue removed the related dependency:
RANGER-1587 - Cleanup Ranger KMS service dependencies.


---

* [RANGER-1731](https://issues.apache.org/jira/browse/RANGER-1731) | *Major* | **Guava dependency cause build problems**

In some build environments, maven fails with :

{code}
2017/08/11 13:46:39 INFO : [ERROR] Failed to execute goal on project security-admin-web: Could not resolve dependencies for project org.apache.ranger:security-admin-web:war:1.0.0-SNAPSHOT: Failed to collect dependencies at com.googlecode.owasp-java-html-sanitizer:owasp-java-html-sanitizer:jar:r239 -\> com.google.guava:guava:jar:[11.0,): No versions available for com.google.guava:guava:jar:[11.0,) within specified range -\> [Help 1]
{code}

As guava 17 is already included in the security-admin module, this transitive dependency is not needed at all. So it would be better to exclude it from there, so maven doesn't need to manually calculate versions


---

* [RANGER-1788](https://issues.apache.org/jira/browse/RANGER-1788) | *Critical* | **Install Ranger admin failure.**

1. Fetch latest source using "git clone https://git-wip-us.apache.org/repos/asf/ranger.git" command.
2. Build.
3. Install Ranger admin.
Error information is as following:
{code}
2017-09-16 23:39:54,695  [E] 028-add-unique-constraint-on-table-x\_group.sql import failed!
{code}

Execute 028-add-unique-constraint-on-table-x\_group.sql file separately, there are following:
{code}
1. error code:1314
ALTER VIEW is not allowed in stored procedures
2. error code:1305
PROCEDURE ranger.create\_unique\_constraint\_on\_groupname does not exist
{code}

This issue was introduced by the RANGER-1765.
{code}
mysql\> source /diskc/installranger/run/ranger-1.0.0-admin/db/mysql/patches/028-add-unique-constraint-on-table-x\_group.sql
Query OK, 0 rows affected, 1 warning (0.00 sec)
ERROR 1314 (0A000): ALTER VIEW is not allowed in stored procedures
ERROR 1305 (42000): PROCEDURE ranger.create\_unique\_constraint\_on\_groupname does not exist
Query OK, 0 rows affected, 1 warning (0.00 sec)
{code}

Reason:
{code}
As of MySQL 5.7.4, the IGNORE clause for ALTER TABLE is removed and its use produces an error.
{code}


---

* [RANGER-1791](https://issues.apache.org/jira/browse/RANGER-1791) | *Major* | **The JAVA\_HOME property is invalid in install.properties for Solr for Ranger Audits. The solr started fail after installed and configured Solr for Ranger Audits**

The JAVA\_HOME was set to jdk1.8.0 in install.properties when installed and configured Solr for Ranger Audits. The solr was started fail when started solr. The error information is as following:
{code}
Your current version of Java is too old to run this version of Solr
We found version 1.7.0\_80, using command '/diskb/home/pengjianhua/tools/jdk1.7.0\_80/bin/java -version', with response:
java version "1.7.0\_80"
Java(TM) SE Runtime Environment (build 1.7.0\_80-b15)
Java HotSpot(TM) 64-Bit Server VM (build 24.80-b11, mixed mode)

Please install latest version of Java 1.8 or set JAVA\_HOME properly.

Debug information:
JAVA\_HOME: /diskb/home/pengjianhua/tools/jdk1.8.0\_111
Active Path:
/diskb/home/pengjianhua/tools/jdk1.7.0\_80/bin:/diskb/home/pengjianhua/tools/jdk1.7.0\_80/jre/bin:/diskb/home/pengjianhua/tools/jdk1.7.0\_80/bin:/diskb/home/pengjianhua/tools/jdk1.7.0\_80/jre/bin:/diskc/component/run/hbase-1.2.6/bin:/diskc/component/run/hbase-1.2.6/conf:/diskc/component/run/hadoop-2.7.4/bin:/diskc/component/run/hadoop-2.7.4/sbin:/diskc/component/run/zookeeper-3.4.10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/pengjianhua/anaconda3/bin:/snap/bin:/home/pengjianhua/bin:/diskb/home/pengjianhua/tools/apache-maven-3.3.9/bin:/home/pengjianhua/anaconda3/bin:/home/pengjianhua/bin:/diskb/home/pengjianhua/tools/apache-maven-3.3.9/bin:/home/pengjianhua/anaconda3/bin
{code}

That is, this configuration is invalid.


---

* [RANGER-1810](https://issues.apache.org/jira/browse/RANGER-1810) | *Major* | **Ranger supports plugin to enable, monitor and manage apache Sqoop2**

Apache Sqoop is a tool designed for efficiently transferring bulk data between Apache Hadoop and structured datastores such as relational databases. You can use Sqoop to import data from external structured datastores into Hadoop Distributed File System or related systems like Hive and HBase. Conversely, Sqoop can be used to extract data from Hadoop and export it to external structured datastores such as relational databases and enterprise data warehouses.It successfully graduated from the Incubator in March of 2012 and is now a Top-Level Apache project.  
The Ranger will further expand the influence in the hadoop ecosystem if it supports sqoop authorization. So we should develop sqoop plugin to enable, monitor and manage apache Sqoop2.

Our test specialists have rigorously tested this feature.


---

* [RANGER-1846](https://issues.apache.org/jira/browse/RANGER-1846) | *Major* | **This JAVA\_VERSION\_REQUIRED configuration item is invalid in security admin installer, we should enable it to control the necessary java version.**

The java version must be equal to or more than 1.8 when we set db\_ssl\_enabled equal to true.
This JAVA\_VERSION\_REQUIRED configuration item is invalid in security admin installer, we should enable it to control the necessary java version.


---

* [RANGER-1856](https://issues.apache.org/jira/browse/RANGER-1856) | *Major* | **Installation and access logic are inconsistent for the pid of kms program. Like security admin, they should be consistent.**

The directory for the kms pid is constant path in installer.
{code}
pidFolderName='/var/run/ranger\_kms'
if [ ! -d "${pidFolderName}" ]; then
    mkdir -p "${pidFolderName}"
fi
{code}
The directory for the kms pid is configurable in ranger-kms and ranger-kms-initd.
{code}
if [ -z "${RANGER\_KMS\_PID\_DIR\_PATH}" ]
then
	RANGER\_KMS\_PID\_DIR\_PATH=/var/run/ranger\_kms
fi
if [ ! -d "${RANGER\_KMS\_PID\_DIR\_PATH}" ]
then
	mkdir -p  $RANGER\_KMS\_PID\_DIR\_PATH
	chmod 660 $RANGER\_KMS\_PID\_DIR\_PATH
fi
pidf=${RANGER\_KMS\_PID\_DIR\_PATH}/${RANGER\_KMS\_PID\_NAME}
{code}
The directory for the kms pid  can be configured in install.properties.
{code}
#PID file path
RANGER\_KMS\_PID\_DIR\_PATH=/var/run/ranger\_kms
{code}


---

* [RANGER-1859](https://issues.apache.org/jira/browse/RANGER-1859) | *Major* | **Fix new findBugs in HdfsClient.java**

There is FindBugs: Performance  (FB.SBSC\_USE\_STRINGBUFFER\_CONCATENATION) in org.apache.ranger.services.hdfs.client.HdfsClient.validateConnectionConfigs(Map\<String, String\>)
{code}
if (fsDefaultNameElements != null && fsDefaultNameElements.length \>= 2) {
	String cluster = "";
	StringBuffer clusters = new StringBuffer();
	configs.put("dfs.nameservices", "hdfscluster");
	configs.put("fs.default.name", "hdfs://" + configs.get("dfs.nameservices"));
	configs.put("dfs.client.failover.proxy.provider." + configs.get("dfs.nameservices"),
			"org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider");
	for (int i = 0; i \< fsDefaultNameElements.length; i++) {
		cluster = "namenode" + (i + 1);
		configs.put("dfs.namenode.rpc-address." + configs.get("dfs.nameservices") + "." + cluster,
				fsDefaultNameElements[i]);
		if (i == (fsDefaultNameElements.length - 1)) {
				clusters.append(cluster);
		} else {
				clusters.append(cluster).append(",");
		}
	}
	configs.put("dfs.ha.namenodes." + configs.get("dfs.nameservices"), clusters.toString());
}
{code}

To view the defects in Coverity Scan visit, https://u2389337.ct.sendgrid.net/wf/click?upn=08onrYu34A-2BWcWUl-2F-2BfV0V05UPxvVjWch-2Bd2MGckcRZSbhom32dlDl11LWEm9nX11zsOWMf5dv3Q9Mogo-2FGua3FsLRTFft2V-2FOFC9o0P2e0-3D\_d04ZgyDzSjlwpjXIuOFYDNE6R93Lal83MDClQK32PZtwvLNyXEpALHHKXqGKvroU5mWNsNiM7OVRdsl6DJR5LTUChq42fVbU-2Fr1jlwSSZ3yR3k4ycwZTS0QkKayVUGYhpHjV8vMdPHJwfZIZjeDvW59RoGHYuxr3UvsJzGHNk6gAvr6OuaH0vx6ZtLRw-2F0NLST5sMrn2kXHvdALOtTEjnQ-3D-3D


---

* [RANGER-1858](https://issues.apache.org/jira/browse/RANGER-1858) | *Critical* | **ranger-admin start fail when policymgr\_http\_enabled equal to false.**

ranger-admin start fail when policymgr\_http\_enabled equal to false. The error log is as following:
{code}
Exception in thread "main" java.lang.NoClassDefFoundError: com/google/common/base/Preconditions
	at org.apache.hadoop.conf.Configuration$DeprecationDelta.\<init\>(Configuration.java:328)
	at org.apache.hadoop.conf.Configuration$DeprecationDelta.\<init\>(Configuration.java:341)
	at org.apache.hadoop.conf.Configuration.\<clinit\>(Configuration.java:423)
	at org.apache.ranger.server.tomcat.EmbeddedServer.getDecryptedString(EmbeddedServer.java:398)
	at org.apache.ranger.server.tomcat.EmbeddedServer.start(EmbeddedServer.java:135)
	at org.apache.ranger.server.tomcat.EmbeddedServer.main(EmbeddedServer.java:69)
Caused by: java.lang.ClassNotFoundException: com.google.common.base.Preconditions
	at java.net.URLClassLoader.findClass(URLClassLoader.java:381)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:331)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
	... 6 more
{code}

Verify steps:
1. Modify install.properties.
The ssl properties configuration are as following:
policymgr\_http\_enabled=false
policymgr\_https\_keystore\_file=/diskc/installranger/ssl/keystore
policymgr\_https\_keystore\_keyalias=mysqlClientCertificate
policymgr\_https\_keystore\_password=testverify$

2. Run setup.sh to install Ranger Admin.
3. Run ranger-admin start to start Ranger Admin.


---

* [RANGER-1860](https://issues.apache.org/jira/browse/RANGER-1860) | *Major* | **Provide a new service interface prompt function framework to resolved the defect of the current service interface, increase the flexibility of the function, improve user ease of use**

The ranger used the hard-coded way to achieve the service interface prompt function, the result is that the codes have worse maintainability.
{code}
if(!isPolicyForm) {
	if(v.name == 'yarn.url'){
		formObj.type = 'TextFiledWithIcon';
		formObj.errorMsg = localization.tt("hintMsg.yarnRestUrl");
	}else if(v.name == 'sqoop.url'){
		formObj.type = 'TextFiledWithIcon';
		formObj.errorMsg = localization.tt("hintMsg.sqoopRestUrl");
	}else if(v.name == 'jdbc.url'){
		formObj.type = 'TextFiledWithIcon';
		formObj.errorMsg = localization.tt("hintMsg.hiveJDBCUrl");
	}else if(v.name == 'fs.default.name'){
		formObj.type = 'TextFiledWithIcon';
		formObj.errorMsg = localization.tt("hintMsg.hdfsNameNodeUrl");
	}else{
		formObj.type = 'Text';
	}
	break;
}
{code}
Using the new issue we can directly modify the configuration file to meet the requirements of the new prompt function. Such as we can modify the following configuration to meet following requirements: 
the configuration in the ranger-servicedef-yarn.json is as follows：
{code}
"configs": 
[
	{
		"itemId": 3,
		"name": "yarn.url",
		"type": "string",
		"mandatory": true,
		"defaultValue": "",
		"validationRegEx":"",
		"validationMessage": "",
		"uiHint":"{\\"TextFiledWithIcon\\":true, \\"info\\": \\"1.For one url, eg.\<br\>'http or https://&lt;ipaddr&gt;:8088'\<br\>2.For multiple urls (use , or ; delimiter), eg.\<br\>'http://&lt;ipaddr1&gt;:8088,http://&lt;ipaddr2&gt;:8088'\\"}",
		"label": "YARN REST URL"
	}
]
{code}
requirements: 
adding text field with an icon( i.e information) on service form page,we should add unified configuration management functions in the service definition.


---

* [RANGER-1848](https://issues.apache.org/jira/browse/RANGER-1848) | *Major* | **Implement getLinkList/getJobList in SqoopClient for Ranger Sqoop2 plugin**

Implement getLinkList/getJobList in SqoopClient for Ranger Sqoop2 plugin.
It affects link and job resource lookup when creating sqoop policy in RangerAdmin.


---

* [RANGER-1797](https://issues.apache.org/jira/browse/RANGER-1797) | *Major* | **Tomcat Security Vulnerability Alert. The version of the tomcat for ranger should upgrade to 7.0.82.**

【Security Vulnerability Alert】Tomcat Information leakage and remote code execution vulnerabilities.
CVE ID:
{code}
CVE-2017-12615\\CVE-2017-12616
{code}
Description
{code}
CVE-2017-12615:When running Apache Tomcat 7.0.0 to 7.0.79 on Windows with HTTP PUTs enabled, it was possible to upload a JSP file to the server via a specially crafted request. This JSP could then be requested and any code it contained would be executed by the server.
CVE-2017-12616:When using a VirtualDirContext with Apache Tomcat 7.0.0 to 7.0.80, it was possible to use a specially crafted request, bypass security constraints, or get the source code of JSPs for resources served by the VirtualDirContext, thereby cased code disclosure.
{code}
Scope
{code}
CVE-2017-12615:Apache Tomcat 7.0.0 - 7.0.79
CVE-2017-12616:Apache Tomcat 7.0.0 - 7.0.80
{code}
Solution
{code}
The official release of the Apache Tomcat 7.0.81 version has fixed the two vulnerabilities and recommends upgrading to the latest version.
{code}
Reference
{code}
https://tomcat.apache.org/security-7.html
http://tomcat.apache.org/security-7.html#Fixed\_in\_Apache\_Tomcat\_7.0.81
https://tomcat.apache.org/security-7.html#Fixed\_in\_Apache\_Tomcat\_7.0.82
{code}


---

* [RANGER-1905](https://issues.apache.org/jira/browse/RANGER-1905) | *Blocker* | **NoClassDefFoundError from the built zip/tar.gz, created by the maven-assembly-plugin**

It seems, because of the recent guava exclusions, the maven-assembly plugin fails to include guava-17.0.jar in ews/lib. It only puts into ews/webapp/WEB-INF/lib and cred/lib/guava-17.0.jar. Unfortunately this blocks starting up the server, because of the following exception:

{code}
Exception in thread "main" java.lang.NoClassDefFoundError: com/google/common/base/Preconditions
        at org.apache.hadoop.conf.Configuration$DeprecationDelta.\<init\>(Configuration.java:336)
        at org.apache.hadoop.conf.Configuration$DeprecationDelta.\<init\>(Configuration.java:349)
        at org.apache.hadoop.conf.Configuration.\<clinit\>(Configuration.java:431)
        at org.apache.ranger.server.tomcat.EmbeddedServer.getDecryptedString(EmbeddedServer.java:480)
        at org.apache.ranger.server.tomcat.EmbeddedServer.start(EmbeddedServer.java:142)
        at org.apache.ranger.server.tomcat.EmbeddedServer.main(EmbeddedServer.java:76)
Caused by: java.lang.ClassNotFoundException: com.google.common.base.Preconditions
        at java.net.URLClassLoader.findClass(URLClassLoader.java:381)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
        at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:331)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
{code}


---

* [RANGER-1932](https://issues.apache.org/jira/browse/RANGER-1932) | *Major* | **After create the service of yarndev,the policy named 'all-queue' created for the default user should have all the permissions.However, this policy does't take effect.**

Steps:
1.Create service named yarndev and userName is xiehh
2.The Queue of the default policy for user xiehh is .\\\*
3.Using xiehh to execute the command line 'hadoop jar /home/xiehh/hadoop-2.7.1/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar wordcount -Dmapreduce.job.queuename=default /input /output/mr'
  Exceptions are as follows:
{code}
  [xiehh@zdh41 hadoop-2.7.1]$ hadoop jar /home/xiehh/hadoop-2.7.1/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar wordcount -Dmapreduce.job.queuename=default /input /output/mr
17/12/15 10:53:27 WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
17/12/15 10:53:28 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
17/12/15 10:53:28 INFO input.FileInputFormat: Total input paths to process : 1
17/12/15 10:53:28 INFO mapreduce.JobSubmitter: number of splits:1
17/12/15 10:53:29 INFO mapreduce.JobSubmitter: Submitting tokens for job: job\_1513238905285\_0005
17/12/15 10:53:44 INFO mapreduce.JobSubmitter: Cleaning up the staging area /tmp/hadoop-yarn/staging/xiehh/.staging/job\_1513238905285\_0005
java.io.IOException: org.apache.hadoop.yarn.exceptions.YarnException: Failed to submit application\_1513238905285\_0005 to YARN : org.apache.hadoop.security.AccessControlException: User xiehh cannot submit applications to queue root.default
	at org.apache.hadoop.mapred.YARNRunner.submitJob(YARNRunner.java:306)
	at org.apache.hadoop.mapreduce.JobSubmitter.submitJobInternal(JobSubmitter.java:240)
	at org.apache.hadoop.mapreduce.Job$10.run(Job.java:1290)
	at org.apache.hadoop.mapreduce.Job$10.run(Job.java:1287)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)
	at org.apache.hadoop.mapreduce.Job.submit(Job.java:1287)
	at org.apache.hadoop.mapreduce.Job.waitForCompletion(Job.java:1308)
	at org.apache.hadoop.examples.WordCount.main(WordCount.java:87)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:71)
	at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:144)
	at org.apache.hadoop.examples.ExampleDriver.main(ExampleDriver.java:74)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.RunJar.run(RunJar.java:221)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:136)
Caused by: org.apache.hadoop.yarn.exceptions.YarnException: Failed to submit application\_1513238905285\_0005 to YARN : org.apache.hadoop.security.AccessControlException: User xiehh cannot submit applications to queue root.default
	at org.apache.hadoop.yarn.client.api.impl.YarnClientImpl.submitApplication(YarnClientImpl.java:270)
	at org.apache.hadoop.mapred.ResourceMgrDelegate.submitApplication(ResourceMgrDelegate.java:290)
	at org.apache.hadoop.mapred.YARNRunner.submitJob(YARNRunner.java:290)
	... 22 more
{code}
The user xiehh does't have the permission, and the default policy for 'all-queue' does't take effect.
4.Through analysis,I find that the Queue {noformat} .\*{noformat}  is wrong,
 and we should change to {noformat} \*.\* {noformat}.
5.After changed:
{code}
[xiehh@zdh41 hadoop-2.7.1]$ hadoop jar /home/xiehh/hadoop-2.7.1/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar wordcount -Dmapreduce.job.queuename=default /input /output/mr1
17/12/15 11:38:00 WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
17/12/15 11:38:00 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
17/12/15 11:38:01 INFO input.FileInputFormat: Total input paths to process : 1
17/12/15 11:38:01 INFO mapreduce.JobSubmitter: number of splits:1
17/12/15 11:38:02 INFO mapreduce.JobSubmitter: Submitting tokens for job: job\_1513238905285\_0006
17/12/15 11:38:17 INFO impl.YarnClientImpl: Submitted application application\_1513238905285\_0006
17/12/15 11:38:17 INFO mapreduce.Job: The url to track the job: http://zdh41:8088/proxy/application\_1513238905285\_0006/
17/12/15 11:38:17 INFO mapreduce.Job: Running job: job\_1513238905285\_0006
17/12/15 11:38:23 INFO mapreduce.Job: Job job\_1513238905285\_0006 running in uber mode : false
17/12/15 11:38:23 INFO mapreduce.Job:  map 0% reduce 0%
17/12/15 11:38:28 INFO mapreduce.Job:  map 100% reduce 0%
17/12/15 11:38:34 INFO mapreduce.Job:  map 100% reduce 100%
{code}


---

* [RANGER-1967](https://issues.apache.org/jira/browse/RANGER-1967) | *Major* | **The Ranger support the Kafka 1.0.0**

Now the Ranger don't support the Kafka 1.0.0. We should support the Kafka 1.0.0.



