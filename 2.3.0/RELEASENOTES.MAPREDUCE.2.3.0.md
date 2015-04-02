
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
# Hadoop MAPREDUCE 2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [MAPREDUCE-1176](https://issues.apache.org/jira/browse/MAPREDUCE-1176) | *Major* | **FixedLengthInputFormat and FixedLengthRecordReader**

Addition of FixedLengthInputFormat and FixedLengthRecordReader in the org.apache.hadoop.mapreduce.lib.input package. These two classes can be used when you need to read data from files containing fixed length (fixed width) records. Such files have no CR/LF (or any combination thereof), no delimiters etc, but each record is a fixed length, and extra data is padded with spaces. The data is one gigantic line within a file. When creating a job that specifies this input format, the job must have the "mapreduce.input.fixedlengthinputformat.record.length" property set as follows myJobConf.setInt("mapreduce.input.fixedlengthinputformat.record.length",[myFixedRecordLength]); 

Please see javadoc for more details.



