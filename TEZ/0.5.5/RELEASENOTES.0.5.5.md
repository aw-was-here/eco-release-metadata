
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



