
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
# Apache Flink  1.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-6103](https://issues.apache.org/jira/browse/FLINK-6103) | *Major* | **LocalFileSystem rename() uses File.renameTo()**

I\'ve tried to move a directory to another on the LocalFilesystem and it doesn\'t work (in my case fs is an instance of java.io.UnixFileSystem).
As for Flink-1840 (there was a PR to fix the issue - https://github.com/apache/flink/pull/578) the problem is that {{File.renameTo()}} is not reliable.

Indeed, the Javadoc says:

bq. Renames the file denoted by this abstract pathname. Many aspects of the behavior of this method are inherently platform-dependent: The rename operation might not be able to move a file from one filesystem to another, it might not be atomic, and it might not succeed if a file with the destination abstract pathname already exists. The return value should always be checked to make sure that the rename operation was successful. Note that the java.nio.file.Files class defines the move method to move or rename a file in a platform independent manner



