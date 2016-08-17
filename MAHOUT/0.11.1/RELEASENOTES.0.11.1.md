
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
# Apache Mahout  0.11.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [MAHOUT-1772](https://issues.apache.org/jira/browse/MAHOUT-1772) | *Major* | **delimiterPattern instance variable of FileDataModel should be marked as a Transient field**

I am trying to implement a recommender using Mahout. To create the DataModel I am using FileDataModel type. After creating the Recommender object , I want to save the model for later usage , just like what we have in Spark models.
FileDataModel is implementing and inheriting Serializable classes , so this means that it can be Serialized. However  when I try to write it the "java.io.NotSerializableException: com.google.common.base.Splitter" exception is thrown.
The root cause of this exception is "private final Splitter delimiterPattern;" variable of FileDataModel class. It is a non-serializable third party class which is not marked as a transient field in the FileDataModel class, as a result of this we get the exception mentioned above.
As a workaround , I created my own "MyFileDataModel" which is an exact copy of "FileDataModel" class but the "delimiterPattern" variable is marked as transient and it works perfectly. It would be better to mark the field as transient in the original class.



