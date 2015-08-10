
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
# Apache Tez  0.5.5 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2636](https://issues.apache.org/jira/browse/TEZ-2636) | *Major* | **MRInput and MultiMRInput should work for cases when there are 0 physical inputs**

It's possible that an Input is setup without any actual data. This is especially valid when a task is processing multiple MRInputs. One side has data, but the other does not. In such cases - we currently end up generating an error.


---

* [TEZ-2635](https://issues.apache.org/jira/browse/TEZ-2635) | *Major* | **Limit number of attempts being downloaded in unordered fetch**

{noformat}
2015-07-22 23:39:14,221 WARN [Fetcher [Map\_3] #4] shuffle.Fetcher: Fetch Failure from host while connecting: machine123, attempt: InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=12], attemptNumber=0, pathComponent=attempt\_1437098194051\_0178\_2\_02\_000012\_0\_10003\_0, fetchTypeInfo=INCREMENTAL\_UPDATE, spillEventId=0] Informing ShuffleManager: 
java.io.IOException: Server returned HTTP response code: 400 for URL: http://machine123:13562/mapOutput?job=job\_1437098194051\_0178&reduce=279&map=attempt\_1437098194051\_0178\_2\_02\_000012\_0\_10003\_0,attempt\_1437098194051\_0178\_2\_02\_000012\_0\_10003\_1,attempt\_1437098194051\_0178\_2\_02\_000012\_0\_10003\_2,attempt\_1437098194051\_0178\_2\_02\_000012\_0\_10003\_3,attempt\_1437098194051\_0178\_2\_02\_000031\_0\_10006\_0,attempt\_1437098194051\_0178\_2\_02\_000031\_0\_10006\_1,attempt\_1437098194051\_0178\_2\_02\_000031\_0\_10006\_2,attempt\_1437098194051\_0178\_2\_02\_000031\_0\_10006\_3,attempt\_1437098194051\_0178\_2\_02\_000031\_0\_10006\_4,attempt\_1437098194051\_0178\_2\_02\_000050\_0\_10009\_0,attempt\_1437098194051\_0178\_2\_02\_000050\_0\_10009\_1,attempt\_1437098194051\_0178\_2\_02\_000050\_0\_10009\_2,attempt\_1437098194051\_0178\_2\_02\_000050\_0\_10009\_3,attempt\_1437098194051\_0178\_2\_02\_000069\_0\_10012\_0,attempt\_1437098194051\_0178\_2\_02\_000088\_0\_10033\_0,attempt\_1437098194051\_0178\_2\_02\_000107\_0\_10033\_0,attempt\_1437098194051\_0178\_2\_02\_000126\_0\_10006\_0,attempt\_1437098194051\_0178\_2\_02\_000069\_0\_10012\_1,attempt\_1437098194051\_0178\_2\_02\_000088\_0\_10033\_1,attempt\_1437098194051\_0178\_2\_02\_000145\_0\_10006\_0,attempt\_1437098194051\_0178\_2\_02\_000107\_0\_10033\_1,attempt\_1437098194051\_0178\_2\_02\_000126\_0\_10006\_1,attempt\_1437098194051\_0178\_2\_02\_000069\_0\_10012\_2,attempt\_1437098194051\_0178\_2\_02\_000069\_0\_10012\_3,attempt\_1437098194051\_0178\_2\_02\_000145\_0\_10006\_1,attempt\_1437098194051\_0178\_2\_02\_000088\_0\_10033\_2,attempt\_1437098194051\_0178\_2\_02\_000107\_0\_10033\_2,attempt\_1437098194051\_0178\_2\_02\_000126\_0\_10006\_2,attempt\_1437098194051\_0178\_2\_02\_000164\_0\_10030\_0,attempt\_1437098194051\_0178\_2\_02\_000183\_0\_10006\_0,attempt\_1437098194051\_0178\_2\_02\_000107\_0\_10033\_3,attempt\_1437098194051\_0178\_2\_02\_000145\_0\_10006\_2,attempt\_1437098194051\_0178\_2\_02\_000088\_0\_10033\_3,attempt\_1437098194051\_0178\_2\_02\_000088\_0\_10033\_4,attempt\_1437098194051\_0178\_2\_02\_000202\_0\_10015\_0,attempt\_1437098194051\_0178\_2\_02\_000145\_0\_10006\_3,attempt\_1437098194051\_0178\_2\_02\_000126\_0\_10006\_3,attempt\_1437098194051\_0178\_2\_02\_000126\_0\_10006\_4,attempt\_1437098194051\_0178\_2\_02\_000164\_0\_10030\_1,attempt\_1437098194051\_0178\_2\_02\_000183\_0\_10006\_1,attempt\_1437098194051\_0178\_2\_02\_000202\_0\_10015\_1,attempt\_1437098194051\_0178\_2\_02\_000183\_0\_10006\_2,attempt\_1437098194051\_0178\_2\_02\_000164\_0\_10030\_2,attempt\_1437098194051\_0178\_2\_02\_000164\_0\_10030\_3,attempt\_1437098194051\_0178\_2\_02\_000183\_0\_10006\_3,attempt\_1437098194051\_0178\_2\_02\_000202\_0\_10015\_2,attempt\_1437098194051\_0178\_2\_02\_000202\_0\_10015\_3,attempt\_1437098194051\_0178\_2\_02\_000133\_0\_10036\_0,attempt\_1437098194051\_0178\_2\_02\_000096\_0\_10012\_0,attempt\_1437098194051\_0178\_2\_02\_000114\_0\_10009\_0,attempt\_1437098194051\_0178\_2\_02\_000095\_0\_10009\_0,attempt\_1437098194051\_0178\_2\_02\_000153\_0\_10041\_0,attempt\_1437098194051\_0178\_2\_02\_000143\_0\_10036\_0,attempt\_1437098194051\_0178\_2\_02\_000190\_0\_10015\_0,attempt\_1437098194051\_0178\_2\_02\_000181\_0\_10042\_0,attempt\_1437098194051\_0178\_2\_02\_000133\_0\_10036\_1,attempt\_1437098194051\_0178\_2\_02\_000143\_0\_10036\_1,attempt\_1437098194051\_0178\_2\_02\_000153\_0\_10041\_1,attempt\_1437098194051\_0178\_2\_02\_000190\_0\_10015\_1,attempt\_1437098194051\_0178\_2\_02\_000209\_0\_10018\_0,attempt\_1437098194051\_0178\_2\_02\_000095\_0\_10009\_1,attempt\_1437098194051\_0178\_2\_02\_000114\_0\_10009\_1,attempt\_1437098194051\_0178\_2\_02\_000096\_0\_10012\_1,attempt\_1437098194051\_0178\_2\_02\_000181\_0\_10042\_1,attempt\_1437098194051\_0178\_2\_02\_000133\_0\_10036\_2,attempt\_1437098194051\_0178\_2\_02\_000153\_0\_10041\_2,attempt\_1437098194051\_0178\_2\_02\_000143\_0\_10036\_2,attempt\_1437098194051\_0178\_2\_02\_000114\_0\_10009\_2,attempt\_1437098194051\_0178\_2\_02\_000190\_0\_10015\_2,attempt\_1437098194051\_0178\_2\_02\_000133\_0\_10036\_3,attempt\_1437098194051\_0178\_2\_02\_000095\_0\_10009\_2,attempt\_1437098194051\_0178\_2\_02\_000096\_0\_10012\_2,attempt\_1437098194051\_0178\_2\_02\_000209\_0\_10018\_1,attempt\_1437098194051\_0178\_2\_02\_000181\_0\_10042\_2,attempt\_1437098194051\_0178\_2\_02\_000153\_0\_10041\_3,attempt\_1437098194051\_0178\_2\_02\_000095\_0\_10009\_3,attempt\_1437098194051\_0178\_2\_02\_000096\_0\_10012\_3,attempt\_1437098194051\_0178\_2\_02\_000114\_0\_10009\_3,attempt\_1437098194051\_0178\_2\_02\_000190\_0\_10015\_3,attempt\_1437098194051\_0178\_2\_02\_000143\_0\_10036\_3,attempt\_1437098194051\_0178\_2\_02\_000190\_0\_10015\_4,attempt\_1437098194051\_0178\_2\_02\_000143\_0\_10036\_4,attempt\_1437098194051\_0178\_2\_02\_000181\_0\_10042\_3,attempt\_1437098194051\_0178\_2\_02\_000153\_0\_10041\_4,attempt\_1437098194051\_0178\_2\_02\_000181\_0\_10042\_4,attempt\_1437098194051\_0178\_2\_02\_000209\_0\_10018\_2,attempt\_1437098194051\_0178\_2\_02\_000209\_0\_10018\_3&keepAlive=true
	at sun.net.www.protocol.http.HttpURLConnection.getInputStream0(HttpURLConnection.java:1839)
	at sun.net.www.protocol.http.HttpURLConnection.getInputStream(HttpURLConnection.java:1440)
	at org.apache.tez.http.HttpConnection.getInputStream(HttpConnection.java:248)
	at org.apache.tez.runtime.library.common.shuffle.Fetcher.setupConnection(Fetcher.java:441)
	at org.apache.tez.runtime.library.common.shuffle.Fetcher.doHttpFetch(Fetcher.java:470)
	at org.apache.tez.runtime.library.common.shuffle.Fetcher.doHttpFetch(Fetcher.java:403)
	at org.apache.tez.runtime.library.common.shuffle.Fetcher.callInternal(Fetcher.java:199)
	at org.apache.tez.runtime.library.common.shuffle.Fetcher.callInternal(Fetcher.java:71)
	at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
{noformat}

tez.runtime.shuffle.fetch.max.task.output.at.once is provided only for ordered fetch, which defaults to 20. But for unordered case, this is not honored.

[~gopalv] got this issue when executing "select p.p\_partkey, li.l\_suppkey from (select distinct l\_partkey as p\_partkey from lineitem) p join lineitem li on p.p\_partkey = li.l\_partkey where li.l\_linenumber = 1 and li.l\_orderkey in (select l\_orderkey from lineitem where l\_shipmode = 'AIR') limit 2" @ 10 TB scale


---

* [TEZ-2630](https://issues.apache.org/jira/browse/TEZ-2630) | *Critical* | **TezChild receives IP address instead of FQDN**

I am running a yarn cluster on AWS. The slave nodes (NMs) are all configured to listen on private DNS. For example, a sample node manager listens on ip-10-16-141-168.ec2.internal:8042.

When I'm trying to run a Tez job (even simple ones like select count(*) from nation) - they fail because child tasks are unable to connect to the AM. The issue is they are trying to connect to the IP instead of the private DNS. Here's a sample log line (couple of them added by me for debugging):

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

* [TEZ-2552](https://issues.apache.org/jira/browse/TEZ-2552) | *Major* | **CRC errors can cause job to run for very long time in large jobs**

Ran a fairly large job at 10 TB scale which had 1009 reducers.

One of the machine had bad disk and NM did not delist that disk.  Machine hosting NM has disk issues (sdf & sde holds shuffle data).  exceptions.

{noformat}
Info fld=0x8960894
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 96 08 90 00 00 08 00
end\_request: critical medium error, dev sdf, sector 144050320
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x895a2b9
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 95 a2 b8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 144024248
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x895a2b9
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 95 a2 b8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 144024248
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x8849edb
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 84 9e d8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 142909144
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x8849edb
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 84 9e d8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 142909144
{noformat}

In-memory fetches start throwing CRC as follows.  

{noformat}
2015-06-11 01:01:03,728 INFO [ShuffleAndMergeRunner [Map\_11]] orderedgrouped.ShuffleScheduler: PendingHosts=[]
2015-06-11 01:01:03,730 INFO [Fetcher [Map\_11] #0] http.HttpConnection: for url=http://cn056-10.l42scl.hortonworks.com:13562/mapOutput?job=job\_1433813751839\_0124&reduce=3&map=attempt\_1433813751839\_0124\_1\_04\_000446\_0\_10027&keepAlive=true sent hash and receievd reply 0 ms
2015-06-11 01:01:03,730 INFO [Fetcher [Map\_11] #0] orderedgrouped.FetcherOrderedGrouped: fetcher#439 about to shuffle output of map InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=446], attemptNumber=0, pathComponent=attempt\_1433813751839\_0124\_1\_04\_000446\_0\_10027, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1] decomp: 45475 len: 23974 to MEMORY
2015-06-11 01:01:07,206 INFO [Fetcher [Map\_11] #0] impl.IFileInputStream:  CurrentOffset=2510, offset=2510, off=2502, dataLength=23966, origLen=21456, len=21456, length=23970, checksumSize=4
2015-06-11 01:01:07,207 INFO [Fetcher [Map\_11] #0] impl.IFileInputStream:  CurrentOffset=2510, offset=2510, off=0, dataLength=23966, origLen=21456, len=21456, length=23970, checksumSize=4
2015-06-11 01:01:07,207 WARN [Fetcher [Map\_11] #0] orderedgrouped.FetcherOrderedGrouped: Failed to shuffle output of InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=446], attemptNumber=0, pathComponent=attempt\_1433813751839\_0124\_1\_04\_000446\_0\_10027, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1] from cn056-10.l42scl.hortonworks.com:13562
org.apache.hadoop.fs.ChecksumException: Checksum Error:  CurrentOffset=2510, offset=2510, off=2502, dataLength=23966, origLen=21456, len=21456, length=23970, checksumSize=4
	at org.apache.tez.runtime.library.common.sort.impl.IFileInputStream.doRead(IFileInputStream.java:255)
	at org.apache.tez.runtime.library.common.sort.impl.IFileInputStream.read(IFileInputStream.java:185)
	at org.apache.hadoop.io.compress.BlockDecompressorStream.getCompressedData(BlockDecompressorStream.java:127)
	at org.apache.hadoop.io.compress.BlockDecompressorStream.decompress(BlockDecompressorStream.java:98)
	at org.apache.hadoop.io.compress.DecompressorStream.read(DecompressorStream.java:85)
	at org.apache.hadoop.io.IOUtils.readFully(IOUtils.java:192)
	at org.apache.tez.runtime.library.common.sort.impl.IFile$Reader.readToMemory(IFile.java:619)
	at org.apache.tez.runtime.library.common.shuffle.ShuffleUtils.shuffleToMemory(ShuffleUtils.java:113)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.copyMapOutput(FetcherOrderedGrouped.java:471)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.copyFromHost(FetcherOrderedGrouped.java:267)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.fetchNext(FetcherOrderedGrouped.java:164)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.callInternal(FetcherOrderedGrouped.java:177)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.callInternal(FetcherOrderedGrouped.java:52)
	at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
{noformat}

TaskAttemptImpl didn't fail it due to the following code

{noformat}
float failureFraction = ((float) attempt.uniquefailedOutputReports.size())
          / outputFailedEvent.getConsumerTaskNumber();
{noformat}

In this case, reducer ran in 180 slot waves.  So even if all 180 tasks report the error, it would be around 180/1009 = 0.17 (which is less than 0.25 MAX\_ALLOWED\_OUTPUT\_FAILURES\_FRACTION) and the job runs for ever (killed the job after 2 hours; normally run in couple of minutes)

In fetcher side, reducer state would be healthy and it would continue to wait.

Env: Tez master & Hive master
Ref: Query\_88 @ 10 TB scale.



