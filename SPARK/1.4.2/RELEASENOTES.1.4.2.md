
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
# Apache Spark  1.4.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-8868](https://issues.apache.org/jira/browse/SPARK-8868) | *Minor* | **SqlSerializer2 can go into infinite loop when row consists only of NullType columns**

The following SQL query will cause an infinite loop in SqlSerializer2 code:

{code}
val df = sqlContext.sql("select null where 1 = 1")
df.unionAll(df).sort("\_c0").collect()
{code}

The same problem occurs if we add more null-literals, but does not occur as long as there is a column of any other type (e.g. {{select 1, null where 1 == 1}}).

I think that what's happening here is that if you have a row that consists only of columns of NullType (not columns of other types which happen to only contain null values, but only columns of null literals), SqlSerializer will end up writing / reading no data for rows of this type.  Since the deserialization stream will never try to read any data but nevertheless will be able to return an empty row, DeserializationStream.asIterator will go into an infinite loop since there will never be a read to trigger an EOF exception.


---

* [SPARK-8821](https://issues.apache.org/jira/browse/SPARK-8821) | *Major* | **The ec2 script doesn't run on python 3 with an utf8 env**

Otherwise the script will crash with

 - Downloading boto...
Traceback (most recent call last):
  File "ec2/spark\_ec2.py", line 148, in <module>
    setup\_external\_libs(external\_libs)
  File "ec2/spark\_ec2.py", line 128, in setup\_external\_libs
    if hashlib.md5(tar.read()).hexdigest() != lib["md5"]:
  File "/usr/lib/python3.4/codecs.py", line 319, in decode
    (result, consumed) = self.\_buffer\_decode(data, self.errors, final)
UnicodeDecodeError: 'utf-8' codec can't decode byte 0x8b in position 1: invalid start byte

In case of an utf8 env setting.



