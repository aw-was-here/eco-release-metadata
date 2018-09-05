
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
# Apache Impala Changelog

## Release Impala 0.6 - 2013-02-26



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2](https://issues.apache.org/jira/browse/IMPALA-2) | Support for Avro data files |  Major | . | Hans W. Uhlig | Skye Wanderman-Milne |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-69](https://issues.apache.org/jira/browse/IMPALA-69) | Add exit as alias for quit to shell |  Minor | . | Alan Jackoway | Ishaan Joshi |
| [IMPALA-42](https://issues.apache.org/jira/browse/IMPALA-42) | Shell: connect with no arguments can fail unintuitively |  Major | Clients | Henry Robinson | Ishaan Joshi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-21](https://issues.apache.org/jira/browse/IMPALA-21) | impalad coredumps running stress on rc/snappy table format in impala::SnappyBlockDecompressor::ProcessBlock ( ... )  at be/src/util/decompress.cc:213 |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-58](https://issues.apache.org/jira/browse/IMPALA-58) | Impala should retry connection to metastore instead of dying |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-64](https://issues.apache.org/jira/browse/IMPALA-64) | Queries fail on secure environment due to an impalad's Kerberos ticket expiring |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-18](https://issues.apache.org/jira/browse/IMPALA-18) | Impala does not ignore hidden HDFS files (files prefixed with a ".") |  Minor | . | Lenni Kuff | Alan Choi |
| [IMPALA-32](https://issues.apache.org/jira/browse/IMPALA-32) | Impala Shell quits working in kerberos mode if the python 'sasl' package is installed after installing python-saslwrapper (Centos6) |  Major | . | Lenni Kuff | Ishaan Joshi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-74](https://issues.apache.org/jira/browse/IMPALA-74) | Impala's hdfs-fs-cache values for namenode host and port should be read from core-site.xml file rather than input as command line args |  Critical | . | Marcel Kornacker | Henry Robinson |


