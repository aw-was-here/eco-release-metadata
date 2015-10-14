
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
# Apache Tez  0.6.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [TEZ-2855](https://issues.apache.org/jira/browse/TEZ-2855) | *Critical* | **Potential NPE while routing VertexManager events**

Observed while running against 0.8.0-alpha. This will likely affect 0.7 as well - that'll be known after debugging.

{code}
2015-09-24T12:13:42,675 ERROR [Dispatcher thread: Central] common.AsyncDispatcher: Error in dispatcher thread
java.lang.NullPointerException
  at org.apache.tez.dag.app.dag.impl.VertexImpl.handleRoutedTezEvents(VertexImpl.java:4429) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.dag.impl.VertexImpl.access$4000(VertexImpl.java:203) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.dag.impl.VertexImpl$RouteEventTransition.transition(VertexImpl.java:4175) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.dag.impl.VertexImpl$RouteEventTransition.transition(VertexImpl.java:4167) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.hadoop.yarn.state.StateMachineFactory$MultipleInternalArc.doTransition(StateMachineFactory.java:385) ~[hadoop-yarn-common-2.6.0.jar:?]
  at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302) ~[hadoop-yarn-common-2.6.0.jar:?]
  at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46) ~[hadoop-yarn-common-2.6.0.jar:?]
  at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448) ~[hadoop-yarn-common-2.6.0.jar:?]
  at org.apache.tez.state.StateMachineTez.doTransition(StateMachineTez.java:57) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1906) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:202) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:2069) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:2055) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.common.AsyncDispatcher.dispatch(AsyncDispatcher.java:183) [tez-common-0.8.0-alpha.jar:0.8.0-alpha]
  at org.apache.tez.common.AsyncDispatcher$1.run(AsyncDispatcher.java:114) [tez-common-0.8.0-alpha.jar:0.8.0-alpha]
  at java.lang.Thread.run(Thread.java:745) [?:1.8.0\_40]
2015-09-24T12:13:42,681 INFO [HistoryEventHandlingThread] impl.SimpleHistoryLoggingService: Writing event TASK\_ATTEMPT\_FINISHED to history file
{code}

Looks like the VertexManager was null.


---

* [TEZ-2834](https://issues.apache.org/jira/browse/TEZ-2834) | *Major* | **Make Tez preemption resilient to incorrect free resource reported by YARN**

Will attach the DAG.

Repro for reference: TPC-DS q\_70 @ 30 TB scale.

"Map 7" completes in 2 waves. Output is very tiny, so reducer 8 gets launched slightly late.  But before "Reducer 9" can get scheduled, slots are taken up by "Map 1", which is not preempted for running "Reducer 9".

This is with 0.7.1 codebase.


---

* [TEZ-2816](https://issues.apache.org/jira/browse/TEZ-2816) | *Major* | **Preemption sometimes does not respect heartbeats between preemptions**

https://builds.apache.org/job/Tez-Build-Hadoop-2.4/170/console

{noformat}
Running org.apache.tez.analyzer.TestAnalyzer
Tests run: 13, Failures: 2, Errors: 0, Skipped: 0, Time elapsed: 99.595 sec \<\<\< FAILURE!
testBasicInputFailureWithoutExit(org.apache.tez.analyzer.TestAnalyzer)  Time elapsed: 6.276 sec  \<\<\< FAILURE!
java.lang.AssertionError: v2 : 000000\_0
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.assertTrue(Assert.java:41)
	at org.apache.tez.analyzer.TestAnalyzer.verifyCriticalPath(TestAnalyzer.java:273)
	at org.apache.tez.analyzer.TestAnalyzer.runDAGAndVerify(TestAnalyzer.java:220)
	at org.apache.tez.analyzer.TestAnalyzer.testBasicInputFailureWithoutExit(TestAnalyzer.java:399)

testCascadingInputFailureWithExitSuccess(org.apache.tez.analyzer.TestAnalyzer)  Time elapsed: 5.986 sec  \<\<\< FAILURE!
java.lang.AssertionError: v3 : 000000\_1
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.assertTrue(Assert.java:41)
	at org.apache.tez.analyzer.TestAnalyzer.verifyCriticalPath(TestAnalyzer.java:273)
	at org.apache.tez.analyzer.TestAnalyzer.runDAGAndVerify(TestAnalyzer.java:220)
	at org.apache.tez.analyzer.TestAnalyzer.testCascadingInputFailureWithExitSuccess(TestAnalyzer.java:561)


Results :

Failed tests: 
  TestAnalyzer.testBasicInputFailureWithoutExit:399-\>runDAGAndVerify:220-\>verifyCriticalPath:273 v2 : 000000\_0
  TestAnalyzer.testCascadingInputFailureWithExitSuccess:561-\>runDAGAndVerify:220-\>verifyCriticalPath:273 v3 : 000000\_1
{noformat}


---

* [TEZ-2808](https://issues.apache.org/jira/browse/TEZ-2808) | *Major* | **Race condition between preemption and container assignment**

New container allocated. Put in delayed container manager queue. Triggers assignment run on delayed container manager thread. 
On AMRMClient thread callback, preemption is called. This is to ensure preemption logic is guaranteed to be invoked at regular intervals even though nothing else may be happening because there are no containers allocated/to-match. Preemption logic checks if containers are available to assign by looking at delayed container manager queue. If by this time, the assignment thread has polled the queue to remove the container for assignment checking, then the preemption code will see no containers available to assign. So it proceeds to preempt containers.


---

* [TEZ-2781](https://issues.apache.org/jira/browse/TEZ-2781) | *Major* | **Fallback to send only TaskAttemptFailedEvent if taskFailed heartbeat fails**

It is possible the taskFailed heartbeat fails to send to AM (due to counter limitation exceed) . In that case client can not get the right diagnostic info. 

{code}
hive\> select gencounter(2500) from (select count(\*) from abc) a;
Query ID = hrt\_qa\_20150831220000\_1956a7d6-1d41-406b-9266-af56ed21883c
Total jobs = 1
Launching Job 1 out of 1


Status: Running (Executing on YARN cluster with App id application\_1440915851419\_0007)

--------------------------------------------------------------------------------
        VERTICES      STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
--------------------------------------------------------------------------------
Map 1              SUCCEEDED      0          0        0        0       0       0
Reducer 2             FAILED      1          0        0        1       4       0
--------------------------------------------------------------------------------
VERTICES: 01/02  [\>\>--------------------------] 0%    ELAPSED TIME: 25.44 s
--------------------------------------------------------------------------------
Status: Failed
Vertex failed, vertexName=Reducer 2, vertexId=vertex\_1440915851419\_0007\_2\_01, diagnostics=[Task failed, taskId=task\_1440915851419\_0007\_2\_01\_000000, diagnostics=[TaskAttempt 0 failed, info=[Container container\_e02\_1440915851419\_0007\_01\_000002 finished with diagnostics set to [Container failed. ]], TaskAttempt 1 failed, info=[Container container\_e02\_1440915851419\_0007\_01\_000003 finished with diagnostics set to [Container failed. ]], TaskAttempt 2 failed, info=[Container container\_e02\_1440915851419\_0007\_01\_000004 finished with diagnostics set to [Container failed. ]], TaskAttempt 3 failed, info=[Container container\_e02\_1440915851419\_0007\_01\_000005 finished with diagnostics set to [Container failed. ]]], Vertex failed as one or more tasks failed. failedTasks:1, Vertex vertex\_1440915851419\_0007\_2\_01 [Reducer 2] killed/failed due to:null]
DAG failed due to vertex failure. failedVertices:1 killedVertices:0
FAILED: Execution Error, return code 2 from org.apache.hadoop.hive.ql.exec.tez.TezTask
{code}
{code}
2015-08-31 22:00:27,528 WARN [TezChild] task.TezTaskRunner: Heartbeat failure caused by communication failure
org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.ipc.RpcServerException): IPC server unable to read call parameters: Too many counters: 2001 max=2000
    at org.apache.hadoop.ipc.Client.call(Client.java:1469)
    at org.apache.hadoop.ipc.Client.call(Client.java:1400)
    at org.apache.hadoop.ipc.WritableRpcEngine$Invoker.invoke(WritableRpcEngine.java:244)
    at com.sun.proxy.$Proxy9.heartbeat(Unknown Source)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.heartbeat(TaskReporter.java:249)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.taskFailed(TaskReporter.java:344)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.access$300(TaskReporter.java:119)
    at org.apache.tez.runtime.task.TaskReporter.taskFailed(TaskReporter.java:381)
    at org.apache.tez.runtime.task.TezTaskRunner.sendFailure(TezTaskRunner.java:257)
    at org.apache.tez.runtime.task.TezTaskRunner.access$600(TezTaskRunner.java:51)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:224)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:168)
    at java.security.AccessController.doPrivileged(Native Method)
    at javax.security.auth.Subject.doAs(Subject.java:415)
    at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1671)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:168)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:163)
    at java.util.concurrent.FutureTask.run(FutureTask.java:262)
    at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
    at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
    at java.lang.Thread.run(Thread.java:745)
2015-08-31 22:00:27,529 INFO [TezChild] task.TezTaskRunner: Ignoring the following exception since a previous exception is already registered
org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.ipc.RpcServerException): IPC server unable to read call parameters: Too many counters: 2001 max=2000
    at org.apache.hadoop.ipc.Client.call(Client.java:1469)
    at org.apache.hadoop.ipc.Client.call(Client.java:1400)
    at org.apache.hadoop.ipc.WritableRpcEngine$Invoker.invoke(WritableRpcEngine.java:244)
    at com.sun.proxy.$Proxy9.heartbeat(Unknown Source)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.heartbeat(TaskReporter.java:249)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.taskFailed(TaskReporter.java:344)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.access$300(TaskReporter.java:119)
    at org.apache.tez.runtime.task.TaskReporter.taskFailed(TaskReporter.java:381)
    at org.apache.tez.runtime.task.TezTaskRunner.sendFailure(TezTaskRunner.java:257)
    at org.apache.tez.runtime.task.TezTaskRunner.access$600(TezTaskRunner.java:51)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:224)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:168)
    at java.security.AccessController.doPrivileged(Native Method)
    at javax.security.auth.Subject.doAs(Subject.java:415)
    at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1671)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:168)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:163)
    at java.util.concurrent.FutureTask.run(FutureTask.java:262)
    at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
    at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
    at java.lang.Thread.run(Thread.java:745)
2015-08-31 22:00:27,537 INFO [TezChild] runtime.LogicalIOProcessorRuntimeTask: Final Counters : Counters: 2012 [[File System Counters HDFS\_BYTES\_READ=0, HDFS\_BYTES\_WRITTEN=0, HDFS\_READ\_OPS=0, HDFS\_LARGE\_READ\_OPS=0, HDFS\_WRITE\_OPS=0][org.apache.tez.common.counters.TaskCounter GC\_TIME\_MILLIS=0, CPU\_MILLISECONDS=350, PHYSICAL\_MEMORY\_BYTES=211939328, VIRTUAL\_MEMORY\_BYTES=2892767232, COMMITTED\_HEAP\_BYTES=324009984, OUTPUT\_RECORDS=0][TestCounter Counter #0=1, Counter #1=1, Counter #10=1, Counter #100=1, Counter #1000=1, Counter #1001=1, Counter #1002=1, Counter #1003=1, Counter #1004=1, Counter #1005=1, Counter #1006=1, Counter #1007=1, Counter #1008=1, Counter #1009=1, Counter #101=1, Counter #1010=1, Counter #1011=1, Counter #1012=1, Counter #1013=1, Counter #1014=1, Counter #1015=1, Counter #1016=1, Counter #1017=1, Counter #1018=1, Counter #1019=1, Counter #102=1, Counter #1020=1, Counter #1021=1, Counter #1022=1, Counter #1023=1, Counter #1024=1, Counter #1025=1, Counter #1026=1, Counter #1027=1, Counter #1028=1, Counter #1029=1, Counter #103=1, Counter #1030=1, Counter #1031=1, Counter #1032=1, Counter #1033=1, Counter #1034=1, Counter #1035=1, Counter #1036=1, Counter #1037=1, Counter #1038=1, Counter #1039=1, Counter #104=1, Counter #1040=1, Counter #1041=1, Counter #1042=1, Counter #1043=1, Counter #1044=1, Counter #1045=1, Counter #1046=1, Counter #1047=1, Counter #1048=1, Counter #1049=1, Counter #105=1, Counter #1050=1, Counter #1051=1, Counter #1052=1, Counter #1053=1, Counter #1054=1, Counter #1055=1, Counter #1056=1, Counter #1057=1, Counter #1058=1, Counter #1059=1, Counter #106=1, Counter #1060=1, Counter #1061=1, Counter #1062=1, Counter #1063=1, Counter #1064=1, Counter #1065=1, Counter #1066=1, Counter #1067=1, Counter #1068=1, Counter #1069=1, Counter #107=1, Counter #1070=1, Counter #1071=1, Counter #1072=1, Counter #1073=1, Counter #1074=1, Counter #1075=1, Counter #1076=1, Counter #1077=1, Counter #1078=1, Counter #1079=1, Counter #108=1, Counter #1080=1, Counter #1081=1, Counter #1082=1, Counter #1083=1, Counter #1084=1, Counter #1085=1, Counter #1086=1, Counter #1087=1, Counter #1088=1, Counter #1089=1, Counter #109=1, Counter #1090=1, Counter #1091=1, Counter #1092=1, Counter #1093=1, Counter #1094=1, Counter #1095=1, Counter #1096=1, Counter #1097=1, Counter #1098=1, Counter #1099=1, Counter #11=1, Counter #110=1, Counter #1100=1, Counter #1101=1, Counter #1102=1, Counter #1103=1, Counter #1104=1, Counter #1105=1, Counter #1106=1, Counter #1107=1, Counter #1108=1, Counter #1109=1, Counter #111=1, Counter #1110=1, Counter #1111=1, Counter #1112=1, Counter #1113=1, Counter #1114=1, Counter #1115=1, Counter #1116=1, Counter #1117=1, Counter #1118=1, Counter #1119=1, Counter #112=1, Counter #1120=1, Counter #1121=1, Counter #1122=1, Counter #1123=1, Counter #1124=1, Counter #1125=1, Counter #1126=1, Counter #1127=1, Counter #1128=1, Counter #1129=1, Counter #113=1, Counter #1130=1, Counter #1131=1, Counter #1132=1, Counter #1133=1, Counter #1134=1, Counter #1135=1, Counter #1136=1, Counter #1137=1, Counter #1138=1, Counter #1139=1, Counter #114=1, Counter #1140=1, Counter #1141=1, Counter #1142=1, Counter #1143=1, Counter #1144=1, Counter #1145=1, Counter #1146=1, Counter #1147=1, Counter #1148=1, Counter #1149=1, Counter #115=1, Counter #1150=1, Counter #1151=1, Counter #1152=1, Counter #1153=1, Counter #1154=1, Counter #1155=1, Counter #1156=1, Counter #1157=1, Counter #1158=1, Counter #1159=1, Counter #116=1, Counter #1160=1, Counter #1161=1, Counter #1162=1, Counter #1163=1, Counter #1164=1, Counter #1165=1, Counter #1166=1, Counter #1167=1, Counter #1168=1, Counter #1169=1, Counter #117=1, Counter #1170=1, Counter #1171=1, Counter #1172=1, Counter #1173=1, Counter #1174=1, Counter #1175=1, Counter #1176=1, Counter #1177=1, Counter #1178=1, Counter #1179=1, Counter #118=1, Counter #1180=1, Counter #1181=1, Counter #1182=1, Counter #1183=1, Counter #1184=1, Counter #1185=1, Counter #1186=1, Counter #1187=1, Counter #1188=1, Counter #1189=1, Counter #119=1, Counter #1190=1, Counter #1191=1, Counter #1192=1, Counter #1193=1, Counter #1194=1, Counter #1195=1, Counter #1196=1, Counter #1197=1, Counter #1198=1, Counter #1199=1, Counter #12=1, Counter #120=1, Counter #1200=1, Counter #1201=1, Counter #1202=1, Counter #1203=1, Counter #1204=1, Counter #1205=1, Counter #1206=1, Counter #1207=1, Counter #1208=1, Counter #1209=1, Counter #121=1, Counter #1210=1, Counter #1211=1, Counter #1212=1, Counter #1213=1, Counter #1214=1, Counter #1215=1, Counter #1216=1, Counter #1217=1, Counter #1218=1, Counter #1219=1, Counter #122=1, Counter #1220=1, Counter #1221=1, Counter #1222=1, Counter #1223=1, Counter #1224=1, Counter #1225=1, Counter #1226=1, Counter #1227=1, Counter #1228=1, Counter #1229=1, Counter #123=1, Counter #1230=1, Counter #1231=1, Counter #1232=1, Counter #1233=1, Counter #1234=1, Counter #1235=1, Counter #1236=1, Counter #1237=1, Counter #1238=1, Counter #1239=1, Counter #124=1, Counter #1240=1, Counter #1241=1, Counter #1242=1, Counter #1243=1, Counter #1244=1, Counter #1245=1, Counter #1246=1, Counter #1247=1, Counter #1248=1, Counter #1249=1, Counter #125=1, Counter #1250=1, Counter #1251=1, Counter #1252=1, Counter #1253=1, Counter #1254=1, Counter #1255=1, Counter #1256=1, Counter #1257=1, Counter #1258=1, Counter #1259=1, Counter #126=1, Counter #1260=1, Counter #1261=1, Counter #1262=1, Counter #1263=1, Counter #1264=1, Counter #1265=1, Counter #1266=1, Counter #1267=1, Counter #1268=1, Counter #1269=1, Counter #127=1, Counter #1270=1, Counter #1271=1, Counter #1272=1, Counter #1273=1, Counter #1274=1, Counter #1275=1, Counter #1276=1, Counter #1277=1, Counter #1278=1, Counter #1279=1, Counter #128=1, Counter #1280=1, Counter #1281=1, Counter #1282=1, Counter #1283=1, Counter #1284=1, Counter #1285=1, Counter #1286=1, Counter #1287=1, Counter #1288=1, Counter #1289=1, Counter #129=1, Counter #1290=1, Counter #1291=1, Counter #1292=1, Counter #1293=1, Counter #1294=1, Counter #1295=1, Counter #1296=1, Counter #1297=1, Counter #1298=1, Counter #1299=1, Counter #13=1, Counter #130=1, Counter #1300=1, Counter #1301=1, Counter #1302=1, Counter #1303=1, Counter #1304=1, Counter #1305=1, Counter #1306=1, Counter #1307=1, Counter #1308=1, Counter #1309=1, Counter #131=1, Counter #1310=1, Counter #1311=1, Counter #1312=1, Counter #1313=1, Counter #1314=1, Counter #1315=1, Counter #1316=1, Counter #1317=1, Counter #1318=1, Counter #1319=1, Counter #132=1, Counter #1320=1, Counter #1321=1, Counter #1322=1, Counter #1323=1, Counter #1324=1, Counter #1325=1, Counter #1326=1, Counter #1327=1, Counter #1328=1, Counter #1329=1, Counter #133=1, Counter #1330=1, Counter #1331=1, Counter #1332=1, Counter #1333=1, Counter #1334=1, Counter #1335=1, Counter #1336=1, Counter #1337=1, Counter #1338=1, Counter #1339=1, Counter #134=1, Counter #1340=1, Counter #1341=1, Counter #1342=1, Counter #1343=1, Counter #1344=1, Counter #1345=1, Counter #1346=1, Counter #1347=1, Counter #1348=1, Counter #1349=1, Counter #135=1, Counter #1350=1, Counter #1351=1, Counter #1352=1, Counter #1353=1, Counter #1354=1, Counter #1355=1, Counter #1356=1, Counter #1357=1, Counter #1358=1, Counter #1359=1, Counter #136=1, Counter #1360=1, Counter #1361=1, Counter #1362=1, Counter #1363=1, Counter #1364=1, Counter #1365=1, Counter #1366=1, Counter #1367=1, Counter #1368=1, Counter #1369=1, Counter #137=1, Counter #1370=1, Counter #1371=1, Counter #1372=1, Counter #1373=1, Counter #1374=1, Counter #1375=1, Counter #1376=1, Counter #1377=1, Counter #1378=1, Counter #1379=1, Counter #138=1, Counter #1380=1, Counter #1381=1, Counter #1382=1, Counter #1383=1, Counter #1384=1, Counter #1385=1, Counter #1386=1, Counter #1387=1, Counter #1388=1, Counter #1389=1, Counter #139=1, Counter #1390=1, Counter #1391=1, Counter #1392=1, Counter #1393=1, Counter #1394=1, Counter #1395=1, Counter #1396=1, Counter #1397=1, Counter #1398=1, Counter #1399=1, Counter #14=1, Counter #140=1, Counter #1400=1, Counter #1401=1, Counter #1402=1, Counter #1403=1, Counter #1404=1, Counter #1405=1, Counter #1406=1, Counter #1407=1, Counter #1408=1, Counter #1409=1, Counter #141=1, Counter #1410=1, Counter #1411=1, Counter #1412=1, Counter #1413=1, Counter #1414=1, Counter #1415=1, Counter #1416=1, Counter #1417=1, Counter #1418=1, Counter #1419=1, Counter #142=1, Counter #1420=1, Counter #1421=1, Counter #1422=1, Counter #1423=1, Counter #1424=1, Counter #1425=1, Counter #1426=1, Counter #1427=1, Counter #1428=1, Counter #1429=1, Counter #143=1, Counter #1430=1, Counter #1431=1, Counter #1432=1, Counter #1433=1, Counter #1434=1, Counter #1435=1, Counter #1436=1, Counter #1437=1, Counter #1438=1, Counter #1439=1, Counter #144=1, Counter #1440=1, Counter #1441=1, Counter #1442=1, Counter #1443=1, Counter #1444=1, Counter #1445=1, Counter #1446=1, Counter #1447=1, Counter #1448=1, Counter #1449=1, Counter #145=1, Counter #1450=1, Counter #1451=1, Counter #1452=1, Counter #1453=1, Counter #1454=1, Counter #1455=1, Counter #1456=1, Counter #1457=1, Counter #1458=1, Counter #1459=1, Counter #146=1, Counter #1460=1, Counter #1461=1, Counter #1462=1, Counter #1463=1, Counter #1464=1, Counter #1465=1, Counter #1466=1, Counter #1467=1, Counter #1468=1, Counter #1469=1, Counter #147=1, Counter #1470=1, Counter #1471=1, Counter #1472=1, Counter #1473=1, Counter #1474=1, Counter #1475=1, Counter #1476=1, Counter #1477=1, Counter #1478=1, Counter #1479=1, Counter #148=1, Counter #1480=1, Counter #1481=1, Counter #1482=1, Counter #1483=1, Counter #1484=1, Counter #1485=1, Counter #1486=1, Counter #1487=1, Counter #1488=1, Counter #1489=1, Counter #149=1, Counter #1490=1, Counter #1491=1, Counter #1492=1, Counter #1493=1, Counter #1494=1, Counter #1495=1, Counter #1496=1, Counter #1497=1, Counter #1498=1, Counter #1499=1, Counter #15=1, Counter #150=1, Counter #1500=1, Counter #1501=1, Counter #1502=1, Counter #1503=1, Counter #1504=1, Counter #1505=1, Counter #1506=1, Counter #1507=1, Counter #1508=1, Counter #1509=1, Counter #151=1, Counter #1510=1, Counter #1511=1, Counter #1512=1, Counter #1513=1, Counter #1514=1, Counter #1515=1, Counter #1516=1, Counter #1517=1, Counter #1518=1, Counter #1519=1, Counter #152=1, Counter #1520=1, Counter #1521=1, Counter #1522=1, Counter #1523=1, Counter #1524=1, Counter #1525=1, Counter #1526=1, Counter #1527=1, Counter #1528=1, Counter #1529=1, Counter #153=1, Counter #1530=1, Counter #1531=1, Counter #1532=1, Counter #1533=1, Counter #1534=1, Counter #1535=1, Counter #1536=1, Counter #1537=1, Counter #1538=1, Counter #1539=1, Counter #154=1, Counter #1540=1, Counter #1541=1, Counter #1542=1, Counter #1543=1, Counter #1544=1, Counter #1545=1, Counter #1546=1, Counter #1547=1, Counter #1548=1, Counter #1549=1, Counter #155=1, Counter #1550=1, Counter #1551=1, Counter #1552=1, Counter #1553=1, Counter #1554=1, Counter #1555=1, Counter #1556=1, Counter #1557=1, Counter #1558=1, Counter #1559=1, Counter #156=1, Counter #1560=1, Counter #1561=1, Counter #1562=1, Counter #1563=1, Counter #1564=1, Counter #1565=1, Counter #1566=1, Counter #1567=1, Counter #1568=1, Counter #1569=1, Counter #157=1, Counter #1570=1, Counter #1571=1, Counter #1572=1, Counter #1573=1, Counter #1574=1, Counter #1575=1, Counter #1576=1, Counter #1577=1, Counter #1578=1, Counter #1579=1, Counter #158=1, Counter #1580=1, Counter #1581=1, Counter #1582=1, Counter #1583=1, Counter #1584=1, Counter #1585=1, Counter #1586=1, Counter #1587=1, Counter #1588=1, Counter #1589=1, Counter #159=1, Counter #1590=1, Counter #1591=1, Counter #1592=1, Counter #1593=1, Counter #1594=1, Counter #1595=1, Counter #1596=1, Counter #1597=1, Counter #1598=1, Counter #1599=1, Counter #16=1, Counter #160=1, Counter #1600=1, Counter #1601=1, Counter #1602=1, Counter #1603=1, Counter #1604=1, Counter #1605=1, Counter #1606=1, Counter #1607=1, Counter #1608=1, Counter #1609=1, Counter #161=1, Counter #1610=1, Counter #1611=1, Counter #1612=1, Counter #1613=1, Counter #1614=1, Counter #1615=1, Counter #1616=1, Counter #1617=1, Counter #1618=1, Counter #1619=1, Counter #162=1, Counter #1620=1, Counter #1621=1, Counter #1622=1, Counter #1623=1, Counter #1624=1, Counter #1625=1, Counter #1626=1, Counter #1627=1, Counter #1628=1, Counter #1629=1, Counter #163=1, Counter #1630=1, Counter #1631=1, Counter #1632=1, Counter #1633=1, Counter #1634=1, Counter #1635=1, Counter #1636=1, Counter #1637=1, Counter #1638=1, Counter #1639=1, Counter #164=1, Counter #1640=1, Counter #1641=1, Counter #1642=1, Counter #1643=1, Counter #1644=1, Counter #1645=1, Counter #1646=1, Counter #1647=1, Counter #1648=1, Counter #1649=1, Counter #165=1, Counter #1650=1, Counter #1651=1, Counter #1652=1, Counter #1653=1, Counter #1654=1, Counter #1655=1, Counter #1656=1, Counter #1657=1, Counter #1658=1, Counter #1659=1, Counter #166=1, Counter #1660=1, Counter #1661=1, Counter #1662=1, Counter #1663=1, Counter #1664=1, Counter #1665=1, Counter #1666=1, Counter #1667=1, Counter #1668=1, Counter #1669=1, Counter #167=1, Counter #1670=1, Counter #1671=1, Counter #1672=1, Counter #1673=1, Counter #1674=1, Counter #1675=1, Counter #1676=1, Counter #1677=1, Counter #1678=1, Counter #1679=1, Counter #168=1, Counter #1680=1, Counter #1681=1, Counter #1682=1, Counter #1683=1, Counter #1684=1, Counter #1685=1, Counter #1686=1, Counter #1687=1, Counter #1688=1, Counter #1689=1, Counter #169=1, Counter #1690=1, Counter #1691=1, Counter #1692=1, Counter #1693=1, Counter #1694=1, Counter #1695=1, Counter #1696=1, Counter #1697=1, Counter #1698=1, Counter #1699=1, Counter #17=1, Counter #170=1, Counter #1700=1, Counter #1701=1, Counter #1702=1, Counter #1703=1, Counter #1704=1, Counter #1705=1, Counter #1706=1, Counter #1707=1, Counter #1708=1, Counter #1709=1, Counter #171=1, Counter #1710=1, Counter #1711=1, Counter #1712=1, Counter #1713=1, Counter #1714=1, Counter #1715=1, Counter #1716=1, Counter #1717=1, Counter #1718=1, Counter #1719=1, Counter #172=1, Counter #1720=1, Counter #1721=1, Counter #1722=1, Counter #1723=1, Counter #1724=1, Counter #1725=1, Counter #1726=1, Counter #1727=1, Counter #1728=1, Counter #1729=1, Counter #173=1, Counter #1730=1, Counter #1731=1, Counter #1732=1, Counter #1733=1, Counter #1734=1, Counter #1735=1, Counter #1736=1, Counter #1737=1, Counter #1738=1, Counter #1739=1, Counter #174=1, Counter #1740=1, Counter #1741=1, Counter #1742=1, Counter #1743=1, Counter #1744=1, Counter #1745=1, Counter #1746=1, Counter #1747=1, Counter #1748=1, Counter #1749=1, Counter #175=1, Counter #1750=1, Counter #1751=1, Counter #1752=1, Counter #1753=1, Counter #1754=1, Counter #1755=1, Counter #1756=1, Counter #1757=1, Counter #1758=1, Counter #1759=1, Counter #176=1, Counter #1760=1, Counter #1761=1, Counter #1762=1, Counter #1763=1, Counter #1764=1, Counter #1765=1, Counter #1766=1, Counter #1767=1, Counter #1768=1, Counter #1769=1, Counter #177=1, Counter #1770=1, Counter #1771=1, Counter #1772=1, Counter #1773=1, Counter #1774=1, Counter #1775=1, Counter #1776=1, Counter #1777=1, Counter #1778=1, Counter #1779=1, Counter #178=1, Counter #1780=1, Counter #1781=1, Counter #1782=1, Counter #1783=1, Counter #1784=1, Counter #1785=1, Counter #1786=1, Counter #1787=1, Counter #1788=1, Counter #1789=1, Counter #179=1, Counter #1790=1, Counter #1791=1, Counter #1792=1, Counter #1793=1, Counter #1794=1, Counter #1795=1, Counter #1796=1, Counter #1797=1, Counter #1798=1, Counter #1799=1, Counter #18=1, Counter #180=1, Counter #1800=1, Counter #1801=1, Counter #1802=1, Counter #1803=1, Counter #1804=1, Counter #1805=1, Counter #1806=1, Counter #1807=1, Counter #1808=1, Counter #1809=1, Counter #181=1, Counter #1810=1, Counter #1811=1, Counter #1812=1, Counter #1813=1, Counter #1814=1, Counter #1815=1, Counter #1816=1, Counter #1817=1, Counter #1818=1, Counter #1819=1, Counter #182=1, Counter #1820=1, Counter #1821=1, Counter #1822=1, Counter #1823=1, Counter #1824=1, Counter #1825=1, Counter #1826=1, Counter #1827=1, Counter #1828=1, Counter #1829=1, Counter #183=1, Counter #1830=1, Counter #1831=1, Counter #1832=1, Counter #1833=1, Counter #1834=1, Counter #1835=1, Counter #1836=1, Counter #1837=1, Counter #1838=1, Counter #1839=1, Counter #184=1, Counter #1840=1, Counter #1841=1, Counter #1842=1, Counter #1843=1, Counter #1844=1, Counter #1845=1, Counter #1846=1, Counter #1847=1, Counter #1848=1, Counter #1849=1, Counter #185=1, Counter #1850=1, Counter #1851=1, Counter #1852=1, Counter #1853=1, Counter #1854=1, Counter #1855=1, Counter #1856=1, Counter #1857=1, Counter #1858=1, Counter #1859=1, Counter #186=1, Counter #1860=1, Counter #1861=1, Counter #1862=1, Counter #1863=1, Counter #1864=1, Counter #1865=1, Counter #1866=1, Counter #1867=1, Counter #1868=1, Counter #1869=1, Counter #187=1, Counter #1870=1, Counter #1871=1, Counter #1872=1, Counter #1873=1, Counter #1874=1, Counter #1875=1, Counter #1876=1, Counter #1877=1, Counter #1878=1, Counter #1879=1, Counter #188=1, Counter #1880=1, Counter #1881=1, Counter #1882=1, Counter #1883=1, Counter #1884=1, Counter #1885=1, Counter #1886=1, Counter #1887=1, Counter #1888=1, Counter #1889=1, Counter #189=1, Counter #1890=1, Counter #1891=1, Counter #1892=1, Counter #1893=1, Counter #1894=1, Counter #1895=1, Counter #1896=1, Counter #1897=1, Counter #1898=1, Counter #1899=1, Counter #19=1, Counter #190=1, Counter #1900=1, Counter #1901=1, Counter #1902=1, Counter #1903=1, Counter #1904=1, Counter #1905=1, Counter #1906=1, Counter #1907=1, Counter #1908=1, Counter #1909=1, Counter #191=1, Counter #1910=1, Counter #1911=1, Counter #1912=1, Counter #1913=1, Counter #1914=1, Counter #1915=1, Counter #1916=1, Counter #1917=1, Counter #1918=1, Counter #1919=1, Counter #192=1, Counter #1920=1, Counter #1921=1, Counter #1922=1, Counter #1923=1, Counter #1924=1, Counter #1925=1, Counter #1926=1, Counter #1927=1, Counter #1928=1, Counter #1929=1, Counter #193=1, Counter #1930=1, Counter #1931=1, Counter #1932=1, Counter #1933=1, Counter #1934=1, Counter #1935=1, Counter #1936=1, Counter #1937=1, Counter #1938=1, Counter #1939=1, Counter #194=1, Counter #1940=1, Counter #1941=1, Counter #1942=1, Counter #1943=1, Counter #1944=1, Counter #1945=1, Counter #1946=1, Counter #1947=1, Counter #1948=1, Counter #1949=1, Counter #195=1, Counter #1950=1, Counter #1951=1, Counter #1952=1, Counter #1953=1, Counter #1954=1, Counter #1955=1, Counter #1956=1, Counter #1957=1, Counter #1958=1, Counter #1959=1, Counter #196=1, Counter #1960=1, Counter #1961=1, Counter #1962=1, Counter #1963=1, Counter #1964=1, Counter #1965=1, Counter #1966=1, Counter #1967=1, Counter #1968=1, Counter #1969=1, Counter #197=1, Counter #1970=1, Counter #1971=1, Counter #1972=1, Counter #1973=1, Counter #1974=1, Counter #1975=1, Counter #1976=1, Counter #1977=1, Counter #1978=1, Counter #1979=1, Counter #198=1, Counter #1980=1, Counter #1981=1, Counter #1982=1, Counter #1983=1, Counter #1984=1, Counter #1985=1, Counter #1986=1, Counter #1987=1, Counter #1988=1, Counter #1989=1, Counter #199=1, Counter #1990=1, Counter #1991=1, Counter #1992=1, Counter #1993=1, Counter #1994=1, Counter #1995=1, Counter #1996=1, Counter #1997=1, Counter #1998=1, Counter #1999=1, Counter #2=1, Counter #20=1, Counter #200=1, Counter #2000=0, Counter #201=1, Counter #202=1, Counter #203=1, Counter #204=1, Counter #205=1, Counter #206=1, Counter #207=1, Counter #208=1, Counter #209=1, Counter #21=1, Counter #210=1, Counter #211=1, Counter #212=1, Counter #213=1, Counter #214=1, Counter #215=1, Counter #216=1, Counter #217=1, Counter #218=1, Counter #219=1, Counter #22=1, Counter #220=1, Counter #221=1, Counter #222=1, Counter #223=1, Counter #224=1, Counter #225=1, Counter #226=1, Counter #227=1, Counter #228=1, Counter #229=1, Counter #23=1, Counter #230=1, Counter #231=1, Counter #232=1, Counter #233=1, Counter #234=1, Counter #235=1, Counter #236=1, Counter #237=1, Counter #238=1, Counter #239=1, Counter #24=1, Counter #240=1, Counter #241=1, Counter #242=1, Counter #243=1, Counter #244=1, Counter #245=1, Counter #246=1, Counter #247=1, Counter #248=1, Counter #249=1, Counter #25=1, Counter #250=1, Counter #251=1, Counter #252=1, Counter #253=1, Counter #254=1, Counter #255=1, Counter #256=1, Counter #257=1, Counter #258=1, Counter #259=1, Counter #26=1, Counter #260=1, Counter #261=1, Counter #262=1, Counter #263=1, Counter #264=1, Counter #265=1, Counter #266=1, Counter #267=1, Counter #268=1, Counter #269=1, Counter #27=1, Counter #270=1, Counter #271=1, Counter #272=1, Counter #273=1, Counter #274=1, Counter #275=1, Counter #276=1, Counter #277=1, Counter #278=1, Counter #279=1, Counter #28=1, Counter #280=1, Counter #281=1, Counter #282=1, Counter #283=1, Counter #284=1, Counter #285=1, Counter #286=1, Counter #287=1, Counter #288=1, Counter #289=1, Counter #29=1, Counter #290=1, Counter #291=1, Counter #292=1, Counter #293=1, Counter #294=1, Counter #295=1, Counter #296=1, Counter #297=1, Counter #298=1, Counter #299=1, Counter #3=1, Counter #30=1, Counter #300=1, Counter #301=1, Counter #302=1, Counter #303=1, Counter #304=1, Counter #305=1, Counter #306=1, Counter #307=1, Counter #308=1, Counter #309=1, Counter #31=1, Counter #310=1, Counter #311=1, Counter #312=1, Counter #313=1, Counter #314=1, Counter #315=1, Counter #316=1, Counter #317=1, Counter #318=1, Counter #319=1, Counter #32=1, Counter #320=1, Counter #321=1, Counter #322=1, Counter #323=1, Counter #324=1, Counter #325=1, Counter #326=1, Counter #327=1, Counter #328=1, Counter #329=1, Counter #33=1, Counter #330=1, Counter #331=1, Counter #332=1, Counter #333=1, Counter #334=1, Counter #335=1, Counter #336=1, Counter #337=1, Counter #338=1, Counter #339=1, Counter #34=1, Counter #340=1, Counter #341=1, Counter #342=1, Counter #343=1, Counter #344=1, Counter #345=1, Counter #346=1, Counter #347=1, Counter #348=1, Counter #349=1, Counter #35=1, Counter #350=1, Counter #351=1, Counter #352=1, Counter #353=1, Counter #354=1, Counter #355=1, Counter #356=1, Counter #357=1, Counter #358=1, Counter #359=1, Counter #36=1, Counter #360=1, Counter #361=1, Counter #362=1, Counter #363=1, Counter #364=1, Counter #365=1, Counter #366=1, Counter #367=1, Counter #368=1, Counter #369=1, Counter #37=1, Counter #370=1, Counter #371=1, Counter #372=1, Counter #373=1, Counter #374=1, Counter #375=1, Counter #376=1, Counter #377=1, Counter #378=1, Counter #379=1, Counter #38=1, Counter #380=1, Counter #381=1, Counter #382=1, Counter #383=1, Counter #384=1, Counter #385=1, Counter #386=1, Counter #387=1, Counter #388=1, Counter #389=1, Counter #39=1, Counter #390=1, Counter #391=1, Counter #392=1, Counter #393=1, Counter #394=1, Counter #395=1, Counter #396=1, Counter #397=1, Counter #398=1, Counter #399=1, Counter #4=1, Counter #40=1, Counter #400=1, Counter #401=1, Counter #402=1, Counter #403=1, Counter #404=1, Counter #405=1, Counter #406=1, Counter #407=1, Counter #408=1, Counter #409=1, Counter #41=1, Counter #410=1, Counter #411=1, Counter #412=1, Counter #413=1, Counter #414=1, Counter #415=1, Counter #416=1, Counter #417=1, Counter #418=1, Counter #419=1, Counter #42=1, Counter #420=1, Counter #421=1, Counter #422=1, Counter #423=1, Counter #424=1, Counter #425=1, Counter #426=1, Counter #427=1, Counter #428=1, Counter #429=1, Counter #43=1, Counter #430=1, Counter #431=1, Counter #432=1, Counter #433=1, Counter #434=1, Counter #435=1, Counter #436=1, Counter #437=1, Counter #438=1, Counter #439=1, Counter #44=1, Counter #440=1, Counter #441=1, Counter #442=1, Counter #443=1, Counter #444=1, Counter #445=1, Counter #446=1, Counter #447=1, Counter #448=1, Counter #449=1, Counter #45=1, Counter #450=1, Counter #451=1, Counter #452=1, Counter #453=1, Counter #454=1, Counter #455=1, Counter #456=1, Counter #457=1, Counter #458=1, Counter #459=1, Counter #46=1, Counter #460=1, Counter #461=1, Counter #462=1, Counter #463=1, Counter #464=1, Counter #465=1, Counter #466=1, Counter #467=1, Counter #468=1, Counter #469=1, Counter #47=1, Counter #470=1, Counter #471=1, Counter #472=1, Counter #473=1, Counter #474=1, Counter #475=1, Counter #476=1, Counter #477=1, Counter #478=1, Counter #479=1, Counter #48=1, Counter #480=1, Counter #481=1, Counter #482=1, Counter #483=1, Counter #484=1, Counter #485=1, Counter #486=1, Counter #487=1, Counter #488=1, Counter #489=1, Counter #49=1, Counter #490=1, Counter #491=1, Counter #492=1, Counter #493=1, Counter #494=1, Counter #495=1, Counter #496=1, Counter #497=1, Counter #498=1, Counter #499=1, Counter #5=1, Counter #50=1, Counter #500=1, Counter #501=1, Counter #502=1, Counter #503=1, Counter #504=1, Counter #505=1, Counter #506=1, Counter #507=1, Counter #508=1, Counter #509=1, Counter #51=1, Counter #510=1, Counter #511=1, Counter #512=1, Counter #513=1, Counter #514=1, Counter #515=1, Counter #516=1, Counter #517=1, Counter #518=1, Counter #519=1, Counter #52=1, Counter #520=1, Counter #521=1, Counter #522=1, Counter #523=1, Counter #524=1, Counter #525=1, Counter #526=1, Counter #527=1, Counter #528=1, Counter #529=1, Counter #53=1, Counter #530=1, Counter #531=1, Counter #532=1, Counter #533=1, Counter #534=1, Counter #535=1, Counter #536=1, Counter #537=1, Counter #538=1, Counter #539=1, Counter #54=1, Counter #540=1, Counter #541=1, Counter #542=1, Counter #543=1, Counter #544=1, Counter #545=1, Counter #546=1, Counter #547=1, Counter #548=1, Counter #549=1, Counter #55=1, Counter #550=1, Counter #551=1, Counter #552=1, Counter #553=1, Counter #554=1, Counter #555=1, Counter #556=1, Counter #557=1, Counter #558=1, Counter #559=1, Counter #56=1, Counter #560=1, Counter #561=1, Counter #562=1, Counter #563=1, Counter #564=1, Counter #565=1, Counter #566=1, Counter #567=1, Counter #568=1, Counter #569=1, Counter #57=1, Counter #570=1, Counter #571=1, Counter #572=1, Counter #573=1, Counter #574=1, Counter #575=1, Counter #576=1, Counter #577=1, Counter #578=1, Counter #579=1, Counter #58=1, Counter #580=1, Counter #581=1, Counter #582=1, Counter #583=1, Counter #584=1, Counter #585=1, Counter #586=1, Counter #587=1, Counter #588=1, Counter #589=1, Counter #59=1, Counter #590=1, Counter #591=1, Counter #592=1, Counter #593=1, Counter #594=1, Counter #595=1, Counter #596=1, Counter #597=1, Counter #598=1, Counter #599=1, Counter #6=1, Counter #60=1, Counter #600=1, Counter #601=1, Counter #602=1, Counter #603=1, Counter #604=1, Counter #605=1, Counter #606=1, Counter #607=1, Counter #608=1, Counter #609=1, Counter #61=1, Counter #610=1, Counter #611=1, Counter #612=1, Counter #613=1, Counter #614=1, Counter #615=1, Counter #616=1, Counter #617=1, Counter #618=1, Counter #619=1, Counter #62=1, Counter #620=1, Counter #621=1, Counter #622=1, Counter #623=1, Counter #624=1, Counter #625=1, Counter #626=1, Counter #627=1, Counter #628=1, Counter #629=1, Counter #63=1, Counter #630=1, Counter #631=1, Counter #632=1, Counter #633=1, Counter #634=1, Counter #635=1, Counter #636=1, Counter #637=1, Counter #638=1, Counter #639=1, Counter #64=1, Counter #640=1, Counter #641=1, Counter #642=1, Counter #643=1, Counter #644=1, Counter #645=1, Counter #646=1, Counter #647=1, Counter #648=1, Counter #649=1, Counter #65=1, Counter #650=1, Counter #651=1, Counter #652=1, Counter #653=1, Counter #654=1, Counter #655=1, Counter #656=1, Counter #657=1, Counter #658=1, Counter #659=1, Counter #66=1, Counter #660=1, Counter #661=1, Counter #662=1, Counter #663=1, Counter #664=1, Counter #665=1, Counter #666=1, Counter #667=1, Counter #668=1, Counter #669=1, Counter #67=1, Counter #670=1, Counter #671=1, Counter #672=1, Counter #673=1, Counter #674=1, Counter #675=1, Counter #676=1, Counter #677=1, Counter #678=1, Counter #679=1, Counter #68=1, Counter #680=1, Counter #681=1, Counter #682=1, Counter #683=1, Counter #684=1, Counter #685=1, Counter #686=1, Counter #687=1, Counter #688=1, Counter #689=1, Counter #69=1, Counter #690=1, Counter #691=1, Counter #692=1, Counter #693=1, Counter #694=1, Counter #695=1, Counter #696=1, Counter #697=1, Counter #698=1, Counter #699=1, Counter #7=1, Counter #70=1, Counter #700=1, Counter #701=1, Counter #702=1, Counter #703=1, Counter #704=1, Counter #705=1, Counter #706=1, Counter #707=1, Counter #708=1, Counter #709=1, Counter #71=1, Counter #710=1, Counter #711=1, Counter #712=1, Counter #713=1, Counter #714=1, Counter #715=1, Counter #716=1, Counter #717=1, Counter #718=1, Counter #719=1, Counter #72=1, Counter #720=1, Counter #721=1, Counter #722=1, Counter #723=1, Counter #724=1, Counter #725=1, Counter #726=1, Counter #727=1, Counter #728=1, Counter #729=1, Counter #73=1, Counter #730=1, Counter #731=1, Counter #732=1, Counter #733=1, Counter #734=1, Counter #735=1, Counter #736=1, Counter #737=1, Counter #738=1, Counter #739=1, Counter #74=1, Counter #740=1, Counter #741=1, Counter #742=1, Counter #743=1, Counter #744=1, Counter #745=1, Counter #746=1, Counter #747=1, Counter #748=1, Counter #749=1, Counter #75=1, Counter #750=1, Counter #751=1, Counter #752=1, Counter #753=1, Counter #754=1, Counter #755=1, Counter #756=1, Counter #757=1, Counter #758=1, Counter #759=1, Counter #76=1, Counter #760=1, Counter #761=1, Counter #762=1, Counter #763=1, Counter #764=1, Counter #765=1, Counter #766=1, Counter #767=1, Counter #768=1, Counter #769=1, Counter #77=1, Counter #770=1, Counter #771=1, Counter #772=1, Counter #773=1, Counter #774=1, Counter #775=1, Counter #776=1, Counter #777=1, Counter #778=1, Counter #779=1, Counter #78=1, Counter #780=1, Counter #781=1, Counter #782=1, Counter #783=1, Counter #784=1, Counter #785=1, Counter #786=1, Counter #787=1, Counter #788=1, Counter #789=1, Counter #79=1, Counter #790=1, Counter #791=1, Counter #792=1, Counter #793=1, Counter #794=1, Counter #795=1, Counter #796=1, Counter #797=1, Counter #798=1, Counter #799=1, Counter #8=1, Counter #80=1, Counter #800=1, Counter #801=1, Counter #802=1, Counter #803=1, Counter #804=1, Counter #805=1, Counter #806=1, Counter #807=1, Counter #808=1, Counter #809=1, Counter #81=1, Counter #810=1, Counter #811=1, Counter #812=1, Counter #813=1, Counter #814=1, Counter #815=1, Counter #816=1, Counter #817=1, Counter #818=1, Counter #819=1, Counter #82=1, Counter #820=1, Counter #821=1, Counter #822=1, Counter #823=1, Counter #824=1, Counter #825=1, Counter #826=1, Counter #827=1, Counter #828=1, Counter #829=1, Counter #83=1, Counter #830=1, Counter #831=1, Counter #832=1, Counter #833=1, Counter #834=1, Counter #835=1, Counter #836=1, Counter #837=1, Counter #838=1, Counter #839=1, Counter #84=1, Counter #840=1, Counter #841=1, Counter #842=1, Counter #843=1, Counter #844=1, Counter #845=1, Counter #846=1, Counter #847=1, Counter #848=1, Counter #849=1, Counter #85=1, Counter #850=1, Counter #851=1, Counter #852=1, Counter #853=1, Counter #854=1, Counter #855=1, Counter #856=1, Counter #857=1, Counter #858=1, Counter #859=1, Counter #86=1, Counter #860=1, Counter #861=1, Counter #862=1, Counter #863=1, Counter #864=1, Counter #865=1, Counter #866=1, Counter #867=1, Counter #868=1, Counter #869=1, Counter #87=1, Counter #870=1, Counter #871=1, Counter #872=1, Counter #873=1, Counter #874=1, Counter #875=1, Counter #876=1, Counter #877=1, Counter #878=1, Counter #879=1, Counter #88=1, Counter #880=1, Counter #881=1, Counter #882=1, Counter #883=1, Counter #884=1, Counter #885=1, Counter #886=1, Counter #887=1, Counter #888=1, Counter #889=1, Counter #89=1, Counter #890=1, Counter #891=1, Counter #892=1, Counter #893=1, Counter #894=1, Counter #895=1, Counter #896=1, Counter #897=1, Counter #898=1, Counter #899=1, Counter #9=1, Counter #90=1, Counter #900=1, Counter #901=1, Counter #902=1, Counter #903=1, Counter #904=1, Counter #905=1, Counter #906=1, Counter #907=1, Counter #908=1, Counter #909=1, Counter #91=1, Counter #910=1, Counter #911=1, Counter #912=1, Counter #913=1, Counter #914=1, Counter #915=1, Counter #916=1, Counter #917=1, Counter #918=1, Counter #919=1, Counter #92=1, Counter #920=1, Counter #921=1, Counter #922=1, Counter #923=1, Counter #924=1, Counter #925=1, Counter #926=1, Counter #927=1, Counter #928=1, Counter #929=1, Counter #93=1, Counter #930=1, Counter #931=1, Counter #932=1, Counter #933=1, Counter #934=1, Counter #935=1, Counter #936=1, Counter #937=1, Counter #938=1, Counter #939=1, Counter #94=1, Counter #940=1, Counter #941=1, Counter #942=1, Counter #943=1, Counter #944=1, Counter #945=1, Counter #946=1, Counter #947=1, Counter #948=1, Counter #949=1, Counter #95=1, Counter #950=1, Counter #951=1, Counter #952=1, Counter #953=1, Counter #954=1, Counter #955=1, Counter #956=1, Counter #957=1, Counter #958=1, Counter #959=1, Counter #96=1, Counter #960=1, Counter #961=1, Counter #962=1, Counter #963=1, Counter #964=1, Counter #965=1, Counter #966=1, Counter #967=1, Counter #968=1, Counter #969=1, Counter #97=1, Counter #970=1, Counter #971=1, Counter #972=1, Counter #973=1, Counter #974=1, Counter #975=1, Counter #976=1, Counter #977=1, Counter #978=1, Counter #979=1, Counter #98=1, Counter #980=1, Counter #981=1, Counter #982=1, Counter #983=1, Counter #984=1, Counter #985=1, Counter #986=1, Counter #987=1, Counter #988=1, Counter #989=1, Counter #99=1, Counter #990=1, Counter #991=1, Counter #992=1, Counter #993=1, Counter #994=1, Counter #995=1, Counter #996=1, Counter #997=1, Counter #998=1, Counter #999=1]]
2015-08-31 22:00:27,539 INFO [main] impl.MetricsSystemImpl: Stopping TezTask metrics system...
2015-08-31 22:00:27,540 INFO [main] impl.MetricsSystemImpl: TezTask metrics system stopped.
2015-08-31 22:00:27,540 INFO [main] impl.MetricsSystemImpl: TezTask metrics system shutdown complete.
{code}


---

* [TEZ-2768](https://issues.apache.org/jira/browse/TEZ-2768) | *Major* | **Log a useful error message when the summary stream cannot be closed when shutting down an AM**

Hive might delete the staging directory before recovery summary stream is closed. The exceptions in the logs could be suppressed though with a more useful WARN message rather than a trace which is confusing.
{code}
015-08-25 03:09:02,075 INFO [AMShutdownThread] recovery.RecoveryService: Closing Summary Stream
2015-08-25 03:09:02,086 WARN [AMShutdownThread] recovery.RecoveryService: Error when closing summary stream
org.apache.hadoop.ipc.RemoteException(java.io.FileNotFoundException): No lease on /user/jzhang/tez/staging/.tez/application\_1439860407967\_0134/recovery/1/summary (inode 510613): File does not exist. Holder DFSClient\_NONMAPREDUCE\_-40719795\_1 does not have any open files.
	at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkLease(FSNamesystem.java:2535)
	at org.apache.hadoop.hdfs.server.namenode.FSDirWriteFileOp.completeFileInternal(FSDirWriteFileOp.java:722)
	at org.apache.hadoop.hdfs.server.namenode.FSDirWriteFileOp.completeFile(FSDirWriteFileOp.java:691)
	at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.completeFile(FSNamesystem.java:2584)
	at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.complete(NameNodeRpcServer.java:773)
	at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.complete(ClientNamenodeProtocolServerSideTranslatorPB.java:540)
	at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:616)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:972)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2088)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2084)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1655)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2084)

	at org.apache.hadoop.ipc.Client.call(Client.java:1468)
	at org.apache.hadoop.ipc.Client.call(Client.java:1399)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:232)
	at com.sun.proxy.$Proxy11.complete(Unknown Source)
	at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolTranslatorPB.complete(ClientNamenodeProtocolTranslatorPB.java:443)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:497)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:187)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:102)
	at com.sun.proxy.$Proxy12.complete(Unknown Source)
	at org.apache.hadoop.hdfs.DFSOutputStream.completeFile(DFSOutputStream.java:2250)
	at org.apache.hadoop.hdfs.DFSOutputStream.close(DFSOutputStream.java:2234)
	at org.apache.hadoop.fs.FSDataOutputStream$PositionCache.close(FSDataOutputStream.java:72)
	at org.apache.hadoop.fs.FSDataOutputStream.close(FSDataOutputStream.java:106)
	at org.apache.tez.dag.history.recovery.RecoveryService.serviceStop(RecoveryService.java:216)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)
	at org.apache.hadoop.service.CompositeService.stop(CompositeService.java:157)
	at org.apache.hadoop.service.CompositeService.serviceStop(CompositeService.java:131)
	at org.apache.tez.dag.history.HistoryEventHandler.serviceStop(HistoryEventHandler.java:80)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:65)
	at org.apache.tez.dag.app.DAGAppMaster.stopServices(DAGAppMaster.java:1772)
	at org.apache.tez.dag.app.DAGAppMaster.serviceStop(DAGAppMaster.java:1946)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.tez.dag.app.DAGAppMaster$DAGAppMasterShutdownHandler$AMShutdownRunnable.run(DAGAppMaster.java:878)
	at java.lang.Thread.run(Thread.java:745)
2015-08-25 03:09:02,090 INFO [AMShutdownThread] recovery.RecoveryService: Closing Output Stream for DAG dag\_1439860407967\_0134\_1
2015-08-25 03:09:02,090 WARN [AMShutdownThread] recovery.RecoveryService: Error when closing output stream
java.nio.channels.ClosedChannelException
	at org.apache.hadoop.hdfs.DFSOutputStream.checkClosed(DFSOutputStream.java:1622)
	at org.apache.hadoop.hdfs.DFSOutputStream.flushOrSync(DFSOutputStream.java:1986)
	at org.apache.hadoop.hdfs.DFSOutputStream.hflush(DFSOutputStream.java:1946)
	at org.apache.hadoop.fs.FSDataOutputStream.hflush(FSDataOutputStream.java:130)
	at org.apache.tez.dag.history.recovery.RecoveryService.serviceStop(RecoveryService.java:224)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)
	at org.apache.hadoop.service.CompositeService.stop(CompositeService.java:157)
	at org.apache.hadoop.service.CompositeService.serviceStop(CompositeService.java:131)
	at org.apache.tez.dag.history.HistoryEventHandler.serviceStop(HistoryEventHandler.java:80)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:65)
	at org.apache.tez.dag.app.DAGAppMaster.stopServices(DAGAppMaster.java:1772)
	at org.apache.tez.dag.app.DAGAppMaster.serviceStop(DAGAppMaster.java:1946)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.tez.dag.app.DAGAppMaster$DAGAppMasterShutdownHandler$AMShutdownRunnable.run(DAGAppMaster.java:878)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [TEZ-2758](https://issues.apache.org/jira/browse/TEZ-2758) | *Major* | **Remove append API in RecoveryService after TEZ-1909**

After TEZ-1909, there would be no case for append recovery file.


---

* [TEZ-2752](https://issues.apache.org/jira/browse/TEZ-2752) | *Major* | **logUnsuccessful completion in Attempt should write original finish time to ATS**

Currently it overwrites with the current time and that results in wrong information since in reality the attempt might have finished earlier if the failure was output failure. Other failures also set the finish time in the terminate transition and thus even in non output failed cases the value of finishtime can be used instead of using current time.


---

* [TEZ-2745](https://issues.apache.org/jira/browse/TEZ-2745) | *Major* | **ClassNotFoundException of user code should fail dag**

This ClassNotFoundException is not captured now. The current behavior is AM crashed and relaunched again until max app attempt is reached. 

Here's user code used in AM:
\* EdgeManager
\* VertexManager
\* InputInitializer
\* OutputCommitter
\* Other user pluggable components (like DAGScheduler, HistoryServiceLogging etc.)


---

* [TEZ-2734](https://issues.apache.org/jira/browse/TEZ-2734) | *Major* | **Add a test to verify the filename generated by OnDiskMerge**

Follow up to TEZ-1808


---

* [TEZ-2719](https://issues.apache.org/jira/browse/TEZ-2719) | *Major* | **Consider reducing logs in unordered fetcher with shared-fetch option**

For large broadcast, this can be a problem
e.g 
In one of the jobs (query\_17 @ 10 TB scale), Map 7 generates around 1.1 GB of data which is given to 330 tasks in downstream Map 1.

Map 1 uses all slots in cluster (~ 224 per wave). Until data is downloaded, shared fetch would end up re-queuing fetches.  As a part of it, it would end up printing 3 logs per attempt. E.g

{noformat}
2015-08-14 02:09:11,761 INFO [Fetcher [Map\_7] #0] shuffle.Fetcher: Requeuing machine1:13562 downloads because we didn't get a lock
2015-08-14 02:09:11,761 INFO [Fetcher [Map\_7] #0] shuffle.Fetcher: Shared fetch failed to return 1 inputs on this try
2015-08-14 02:09:11,761 INFO [ShuffleRunner [Map\_7]] impl.ShuffleManager: Scheduling fetch for inputHost: machine1:13562
2015-08-14 02:09:11,761 INFO [ShuffleRunner [Map\_7]] impl.ShuffleManager: Created Fetcher for host: machine1 with inputs: [InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=0], attemptNumber=0, pathComponent=attempt\_1439264591968\_0058\_1\_04\_000000\_0\_10029, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1]]
{noformat}

Based on disk / network, it  might take time for fetcher to finish downloading and release the lock.  Since there was only one task in Map-1, it ended up in a sort of tight loop generating relatively larger logs.

Looks like 260-290 MB task log files are created in this case per attempt.  That would be around 2.3 GB to 3 GB (depending on number of slots waiting) in machine with 8-10 slots.


---

* [TEZ-2716](https://issues.apache.org/jira/browse/TEZ-2716) | *Major* | **DefaultSorter.isRleNeeded not thread safe**

TEZ-1997.
Should be targeted at the same set of versions that TEZ-1997 goes into.


---

* [TEZ-2687](https://issues.apache.org/jira/browse/TEZ-2687) | *Major* | **ATS History shutdown happens before the min-held containers are released**

When ATS goes into a GC pause under heavy loads and while it recovers, each Tez AM holds onto a few containers even though it is shutting down and will never accept any more DAGs.


---

* [TEZ-2630](https://issues.apache.org/jira/browse/TEZ-2630) | *Critical* | **TezChild receives IP address instead of FQDN**

I am running a yarn cluster on AWS. The slave nodes (NMs) are all configured to listen on private DNS. For example, a sample node manager listens on ip-10-16-141-168.ec2.internal:8042.

When I'm trying to run a Tez job (even simple ones like select count(\*) from nation) - they fail because child tasks are unable to connect to the AM. The issue is they are trying to connect to the IP instead of the private DNS. Here's a sample log line (couple of them added by me for debugging):

{code}
2015-07-21 17:08:21,919 INFO [main] task.TezChild: TezChild starting
2015-07-21 17:08:22,310 INFO [main] task.TezChild: Using socket factory class: org.apache.hadoop.net.StandardSocketFactory
2015-07-21 17:08:22,336 INFO [main] task.TezChild: PID, containerIdentifier:  3699, container\_1437498369268\_0001\_01\_000002
2015-07-21 17:08:22,418 INFO [main] Configuration.deprecation: fs.default.name is deprecated. Instead, use fs.defaultFS
2015-07-21 17:08:23,025 INFO [main] task.TezChild: Got host:port: 10.16.141.168:37949
2015-07-21 17:08:23,035 INFO [main] task.TezChild: address variables: 10.16.141.168:37949
2015-07-21 17:08:23,143 INFO [TezChild] task.ContainerReporter: Attempting to fetch new task
2015-07-21 17:08:24,201 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 0 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
2015-07-21 17:08:25,202 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 1 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
2015-07-21 17:08:26,757 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 2 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
2015-07-21 17:08:27,758 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 3 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
{code}

AM is listening at the right address. But TezChild is receiving the IP address instead of the private DNS. 

AM logs:
{code}
2015-07-21 18:09:27,906 INFO [ServiceThread:org.apache.tez.dag.app.TaskAttemptListenerImpTezDag] app.TaskAttemptListenerImpTezDag: Listening at address: ip-10-234-2-80.ec2.internal:49967
{code}

TezChild logs:
{code}
2015-07-21 18:09:35,353 INFO [main] task.TezChild: TezChild starting
2015-07-21 18:09:35,379 INFO [main] task.TezChild: Args: 10.234.2.80,49967,container\_1437501941642\_0001\_01\_000002,application\_1437501941642\_0001,1
2015-07-21 18:09:35,770 INFO [main] task.TezChild: Using socket factory class: org.apache.hadoop.net.StandardSocketFactory
2015-07-21 18:09:35,785 INFO [main] task.TezChild: PID, containerIdentifier:  8670, container\_1437501941642\_0001\_01\_000002
2015-07-21 18:09:35,864 INFO [main] Configuration.deprecation: fs.default.name is deprecated. Instead, use fs.defaultFS
2015-07-21 18:09:36,403 INFO [main] task.TezChild: Got host:port: 10.234.2.80:49967
2015-07-21 18:09:36,413 INFO [main] task.TezChild: address variables: 10.234.2.80:49967
{code}


---

* [TEZ-2629](https://issues.apache.org/jira/browse/TEZ-2629) | *Major* | **LimitExceededException in Tez client when DAG has exceeds the default max counters**

Original issue was HIVE-11303, seeing LimitExceededException when the client tries to get the counters for a completed job:

{noformat}
2015-07-17 18:18:11,830 INFO  [main]: counters.Limits (Limits.java:ensureInitialized(59)) - Counter limits initialized with parameters:  GROUP\_NAME\_MAX=256, MAX\_GROUPS=500, COUNTER\_NAME\_MAX=64, MAX\_COUNTERS=1200
2015-07-17 18:18:11,841 ERROR [main]: exec.Task (TezTask.java:execute(189)) - Failed to execute tez graph.
org.apache.tez.common.counters.LimitExceededException: Too many counters: 1201 max=1200
        at org.apache.tez.common.counters.Limits.checkCounters(Limits.java:87)
        at org.apache.tez.common.counters.Limits.incrCounters(Limits.java:94)
        at org.apache.tez.common.counters.AbstractCounterGroup.addCounter(AbstractCounterGroup.java:76)
        at org.apache.tez.common.counters.AbstractCounterGroup.addCounterImpl(AbstractCounterGroup.java:93)
        at org.apache.tez.common.counters.AbstractCounterGroup.findCounter(AbstractCounterGroup.java:104)
        at org.apache.tez.dag.api.DagTypeConverters.convertTezCountersFromProto(DagTypeConverters.java:567)
        at org.apache.tez.dag.api.client.DAGStatus.getDAGCounters(DAGStatus.java:148)
        at org.apache.hadoop.hive.ql.exec.tez.TezTask.execute(TezTask.java:175)
        at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:160)
        at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:89)
        at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1673)
        at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1432)
        at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1213)
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:1064)
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:1054)
        at org.apache.hadoop.hive.cli.CliDriver.processLocalCmd(CliDriver.java:213)
        at org.apache.hadoop.hive.cli.CliDriver.processCmd(CliDriver.java:165)
        at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:376)
        at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:311)
        at org.apache.hadoop.hive.cli.CliDriver.processReader(CliDriver.java:409)
        at org.apache.hadoop.hive.cli.CliDriver.processFile(CliDriver.java:425)
        at org.apache.hadoop.hive.cli.CliDriver.executeDriver(CliDriver.java:714)
        at org.apache.hadoop.hive.cli.CliDriver.run(CliDriver.java:681)
        at org.apache.hadoop.hive.cli.CliDriver.main(CliDriver.java:621)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:497)
        at org.apache.hadoop.util.RunJar.run(RunJar.java:221)
        at org.apache.hadoop.util.RunJar.main(RunJar.java:136)
{noformat}

It looks like Limits.ensureInitialized() is defaulting to an empty configuration, resulting in COUNTERS\_MAX being set to the default of 1200 (even though Hive's configuration specified tez.counters.max=16000).

Per [~sseth]:
{quote}
I think the Tez client does need to make this call to setup the Configuration correctly. We do this for the AM and the executing task - which is why it works. Could you please open a Tez jira for this ?
Also, Limits is making use of Configuration instead of TezConfiguration for default initialization, which implies changes to tez-site on the local node won't be picked up.
{quote}


---

* [TEZ-2290](https://issues.apache.org/jira/browse/TEZ-2290) | *Blocker* | **Scale memory for Default Sorter down to a max of 2047 MB if configured higher**

Given that Pipeline sorter is now the default, the memory configured may likely be more than 2 GB. If a user switches from pipeline to default, they will hit problems straight away. We should scale default sorter's memory config to a max of 2 GB and log a warning.


---

* [TEZ-2203](https://issues.apache.org/jira/browse/TEZ-2203) | *Major* | **Intern strings in tez counters**

Getting per IO counters is possible today. This jira tracks work needed to enabled them by default. Internalizing strings to save memory is one item needed.


---

* [TEZ-2097](https://issues.apache.org/jira/browse/TEZ-2097) | *Critical* | **TEZ-UI Add dag logs backend support**

If dag fails due to AM error, there's no way to check the dag logs on tez-ui. Users have to grab the app logs.


---

* [TEZ-814](https://issues.apache.org/jira/browse/TEZ-814) | *Major* | **Improve heuristic for determining a task has failed outputs**

Currently 25% of consumers need to report failure. However we may not always have those many error reports. Eg. this is the last consumer and it the source is lost. Or some consumers are cut off from the source. The job may hang on those consumers waiting for a re-run.



