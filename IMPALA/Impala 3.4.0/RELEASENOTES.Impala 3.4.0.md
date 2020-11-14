
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
# Apache Impala  Impala 3.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [IMPALA-8909](https://issues.apache.org/jira/browse/IMPALA-8909) | *Blocker* | **Timestamp timezone conversion causes impalad crash**

step1: create two tables
{code:java}
CREATE TABLE temp.t\_one
(
  id string,
  test\_time timestamp,
  name string,
  PRIMARY KEY(id,test\_time)
)
PARTITION BY HASH (id) PARTITIONS 8,
RANGE(test\_time)
(
  PARTITION VALUES \< '2011-01-01 00:00:00',
  PARTITION '2011-01-01 00:00:00' \<= VALUES \< '2021-01-01 00:00:00',
  PARTITION '2021-01-01 00:00:00' \<= VALUES
)
STORED AS KUDU;

CREATE TABLE temp.t\_two
(
  cdate string,
  ctime string
);
{code}
step2:insert some data into t\_two
{code:java}
insert into temp.t\_two values('20190101','00:00:00');
{code}
step3:insert data into t\_one from t\_two,\*{color:#FF0000}cause impalad crash!!{color}\*{color:#172b4d}{color}
{code:java}
insert into temp.t\_one( id, test\_time, name )
select '1' as id,concat(cdate,ctime) as test\_time,'gogogo' as name
from temp.t\_two;
{code}
 

impalad.ERROR
{code:java}
terminate called after throwing an instance of 'boost::exception\_detail::clone\_impl\<boost::exception\_detail::error\_info\_injector\<boost::gregorian::bad\_year\> \>'
  what():  Year is out of valid range: 1400..10000
{code}



