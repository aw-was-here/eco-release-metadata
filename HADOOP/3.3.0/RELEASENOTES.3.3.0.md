
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
# Apache Hadoop  3.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HADOOP-14833](https://issues.apache.org/jira/browse/HADOOP-14833) | *Major* | **Remove s3a user:secret authentication**

After this patch, the S3A connector no longer supports username and secrets in URLs of the form \`s3a://key:secret@bucket/\`. It is near-impossible to stop those secrets being logged —which is why a warning has been printed since Hadoop 2.8 whenever such a URL was used.

Fix: use a more secure mechanism to pass down the secrets.



