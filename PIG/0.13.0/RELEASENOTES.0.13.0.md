
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
#  0.13.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [PIG-3996](https://issues.apache.org/jira/browse/PIG-3996) | *Major* | **Delete zebra from svn**

Zebra is deleted in 0.13.


---

* [PIG-3950](https://issues.apache.org/jira/browse/PIG-3950) | *Trivial* | **Removing empty file PColFilterExtractor.java speeds up rebuilds**

removed empty file src/org/apache/pig/newplan/PColFilterExtractor.java


---

* [PIG-3945](https://issues.apache.org/jira/browse/PIG-3945) | *Major* | **Ant not sending hadoopversion to piggybank sub-ant**

Ant sends hadoopversion to piggybank sub-ant, fixes building piggybank from top level


---

* [PIG-3941](https://issues.apache.org/jira/browse/PIG-3941) | *Minor* | **Piggybank's Over UDF returns an output schema with named fields**

Passing a 'name:type' string to the constructor for Piggybank's Over UDF sets the name and type of the result in the output schema.


---

* [PIG-3940](https://issues.apache.org/jira/browse/PIG-3940) | *Major* | **NullPointerException writing .pig\_header for field with null name (in JsonMetadata.java)**

Fixed NullPointerException writing schema headers for fields with null names. They are now written as '$i' corresponding to the field's zero-based position.


---

* [PIG-3926](https://issues.apache.org/jira/browse/PIG-3926) | *Minor* | **ROUND\_TO function: rounds double/float to fixed number of decimal places**

The ROUND\_TO(val, digits[, mode]) function accepts a single float or double value, along with an integer number of digits, and returns the value to that number of decimal places. For example, ROUND\_TO(3.14159f, 3) returns 3.142f (a float); ROUND\_TO(3.14159d, 0) returns 3.0d (a double); and ROUND\_TO(1234.56d, -2) returns 1200d. The optional third argument controls the rounding mode; see the documentation.


---

* [PIG-3923](https://issues.apache.org/jira/browse/PIG-3923) | *Trivial* | **Gitignore file should ignore all generated artifacts**

.gitignore ignores some generated artifacts it should ignore


---

* [PIG-3915](https://issues.apache.org/jira/browse/PIG-3915) | *Major* | **MapReduce queries in Pigmix outputs different results than Pig's**

Bug fixes for the Pigmix queries


---

* [PIG-3901](https://issues.apache.org/jira/browse/PIG-3901) | *Minor* | **Organize the Pig properties file and document all properties**

Default conf/pig.properties file has been organized, and all properties are documented


---

* [PIG-3793](https://issues.apache.org/jira/browse/PIG-3793) | *Major* | **Provide info on number of LogicalRelationalOperator(s) used in the script through LogicalPlanData**

Exposes methods getNumLogicalRelationOperators(), getNumSources() and  getNumSinks() on LogicalPlanData.


---

* [PIG-3653](https://issues.apache.org/jira/browse/PIG-3653) | *Major* | **Add support for pre-deployed jars**

Ability to mark jars as predeployed to the cluster so they will not be included in the generated job jar; new pig.predeployed.jars property for specifying predeployed jars on the command line


---

* [PIG-3642](https://issues.apache.org/jira/browse/PIG-3642) | *Major* | **Direct HDFS access for small jobs (fetch)**

When the DUMP operator is used to execute Pig Latin statements, Pig can take the advantage to minimize latency by directly reading data from HDFS rather than launching MapReduce jobs.

Direct fetch is turned on by default. To turn it off set the property opt.fetch to false or start Pig with the "-N" or "-no\_fetch" option.


---

* [PIG-3608](https://issues.apache.org/jira/browse/PIG-3608) | *Minor* | **ClassCastException when looking up a value from AvroMapWrapper using a Utf8 key**

Committed to trunk.


---

* [PIG-3582](https://issues.apache.org/jira/browse/PIG-3582) | *Major* | **Document SUM, MIN, MAX, and AVG functions for BigInteger and BigDecimal**

documentation updated to reflect addition of bigdecimal and biginteger data types to SUM, AVG, MAX and MIN functions.


---

* [PIG-3580](https://issues.apache.org/jira/browse/PIG-3580) | *Critical* | **MIN, MAX and AVG functions for BigDecimal and BigInteger**

Attaced PIG\_3580.patch. All tests pass for the attached patch.


---

* [PIG-3569](https://issues.apache.org/jira/browse/PIG-3569) | *Critical* | **SUM function for BigDecimal and BigInteger**

Attached PIG\_3569.patch was tested with latest from trunk.


---

* [PIG-3485](https://issues.apache.org/jira/browse/PIG-3485) | *Major* | **Remove CastUtils.bytesToMap(byte[] b) method from LoadCaster interface**

This is a backward incompatible change in LoadCaster interface. Any loader that implements LoadCaster interface needs to replace the deprecated method "bytesToMap(bytes[])" with "bytesToMap(bytes[], ResourceFieldSchema)".


---

* [PIG-3373](https://issues.apache.org/jira/browse/PIG-3373) | *Major* | **XMLLoader returns non-matching nodes when a tag name spans through the block boundary**

I added a new patch that fixes this bug. It turned out that this bug happens only when the input file is .bz2 compressed and the non-matching tag spans two file splits in the compressed file. Since it's almost impossible to tailor an example that has this bug since the compression is virtually non-deterministic, I included a random generator that generates this test case.
I don't like the idea of discovering a bug using this randomly generated file since, by definition, it's non-deterministic, I attached the test file for reference.
The fix is still the same as the previous patch, but this time, the test fails without this fix.


---

* [PIG-3299](https://issues.apache.org/jira/browse/PIG-3299) | *Major* | **Provide support for LazyOutputFormat to avoid creating empty files**

With this patch, the bundled Hadoop bump up to 1.0.4.


---

* [PIG-3295](https://issues.apache.org/jira/browse/PIG-3295) | *Minor* | **Casting from bytearray failing after Union (even when each field is from a single Loader)**

Before, LoadCaster after Union was only available when two union-ed relations were from the same Loader with same parameters.  Now, LoadCaster would work for cases when Loaders return the same LoadCaster that only have a default constructor.


---

* [PIG-2132](https://issues.apache.org/jira/browse/PIG-2132) | *Minor* | **Piggybank: MIN and MAX functions should ignore nulls**

All I did was go through all of the Max and Min functions in Piggybank and add
if (first==null)
    return second;
if (second==null)
    return first;

Following conversation on the message board, the desired outputs are:
null,null -> null
1,null -> 1
null,1 -> 1
1,1 -> 1

This change gives that.


---

* [PIG-1577](https://issues.apache.org/jira/browse/PIG-1577) | *Major* | **support to variable number of arguments in UDF**

Fixed as part of PIG-3444.



