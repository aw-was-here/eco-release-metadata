
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
# Apache Orc Changelog

## Release 1.6.2 - 2019-11-24



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-568](https://issues.apache.org/jira/browse/ORC-568) | Make the convert tool sort the old \_col\<number\> column names by number |  Major | . | Owen O'Malley | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-565](https://issues.apache.org/jira/browse/ORC-565) | Fix a couple c++ tests when building out of tree |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-562](https://issues.apache.org/jira/browse/ORC-562) | Don't wrap readerSchema in acidSchema, if readerSchema is already acid |  Major | Java | László Pintér | László Pintér |
| [ORC-569](https://issues.apache.org/jira/browse/ORC-569) | Empty positions list in first row index entry |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-563](https://issues.apache.org/jira/browse/ORC-563) | ORC-540 could break schema evolution on PPD codepaths |  Major | . | László Bodor | László Bodor |
| [ORC-571](https://issues.apache.org/jira/browse/ORC-571) | ArrayIndexOutOfBoundsException in StripePlanner.readRowIndex |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-570](https://issues.apache.org/jira/browse/ORC-570) | FS: ReaderOptions.filesystem should also accept a lazy Supplier |  Major | . | Gopal Vijayaraghavan | Mustafa İman |


