
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
# Apache HBase  0.96.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | *Major* | **Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix**

- The additional JAR files specified with HBASE\_CLASSPATH are appended to the system JARs.
- The additional JAR files specified with HBASE\_CLASSPATH\_PREFIX are prefixed to the system JARs.


---

* [HBASE-9771](https://issues.apache.org/jira/browse/HBASE-9771) | *Trivial* | **[WebUI] Humanize store and blockcache statistics on RS**

Committed to 0.96 and trunk. Thanks for the review Elliott.


---

* [HBASE-7525](https://issues.apache.org/jira/browse/HBASE-7525) | *Critical* | **A canary monitoring program specifically for regionserver**

Tool to check cluster.  See $ ./bin/hbase org.apache.hadoop.hbase.tool.RegionServerCanary -help for how to use.

{code}
Usage: bin/hbase org.apache.hadoop.hbase.tool.Canary [opts] [table/regionserver 1 [table/regionserver 2...]] 
  where [opts] are: 
    -help Show this help and exit. 
    -regionserver replace the table argument to regionserver, which means to enable regionserver mode 
    -daemon Continuous check at defined intervals. 
    -interval \<N\> Interval between checks (sec) 
    -e Use region/regionserver as regular expression which means the region/regionserver is regular expression pattern 
    -f \<B\> stop whole program if first error occurs, default is true -t \<N\> timeout for a check, default is 600000 (milisecs)
{code}


---

* [HBASE-9848](https://issues.apache.org/jira/browse/HBASE-9848) | *Major* | **Make regionserver Canary exit with different exit codes**

Canary now has different return codes for different types of failures.


---

* [HBASE-9908](https://issues.apache.org/jira/browse/HBASE-9908) | *Major* | **[WINDOWS] Fix filesystem / classloader related unit tests**

Committed this. Thanks Nick for looking.


---

* [HBASE-9895](https://issues.apache.org/jira/browse/HBASE-9895) | *Major* | **0.96 Import utility can't import an exported file from 0.94**

To import 0.94 exported file in 0.96 cluster or onwards, you need to set system property "hbase.import.version" when running the import command as below:

./bin/hbase -Dhbase.import.version=0.94 org.apache.hadoop.hbase.mapreduce.Import \<table name\> \<import file folder\>


---

* [HBASE-9850](https://issues.apache.org/jira/browse/HBASE-9850) | *Major* | **Issues with UI for table compact/split operation completion. After split/compaction operation using UI, the page is not automatically redirecting back using IE8/Firefox.**

Support auto redirect for IE/firefox browsers upon completion of Split/compact operation


---

* [HBASE-9902](https://issues.apache.org/jira/browse/HBASE-9902) | *Major* | **Region Server is starting normally even if clock skew is more than default 30 seconds(or any configured). -\> Regionserver node time is greater than master node time**

Clock skew detection to be made absolute value comparison. Any time difference between master or region, high or low must prevent the region server startup


---

* [HBASE-9138](https://issues.apache.org/jira/browse/HBASE-9138) | *Trivial* | **getHaseIntegrationTestingUtility() is misspelled**

patch for 0.94.x


---

* [HBASE-9870](https://issues.apache.org/jira/browse/HBASE-9870) | *Major* | **HFileDataBlockEncoderImpl#diskToCacheFormat uses wrong format**

The patch makes sure that data block encoding in cache is always the same as that on disk. It deprecates the column family attribute ENCODE\_ON\_DISK since it doesn't apply any more. HColumnDescriptor#setEncodeOnDisk(boolean) is still there for compatibility issue. However, it doesn't do anything now. HColumnDescriptor#getDataBlockEncodingOnDisk() is also deprecated because the data block encoding on disk is always the same as that in cache for a given store file.


---

* [HBASE-9757](https://issues.apache.org/jira/browse/HBASE-9757) | *Major* | **Reenable fast region move in SlowDeterministicMonkey**

Online encoding change is enabled by default in both trunk and 0.96 now.


---

* [HBASE-9165](https://issues.apache.org/jira/browse/HBASE-9165) | *Major* | **Improvements to addDependencyJars**

Introduces the method TableMapReduceUtil#addHBaseDependencyJars for adding HBase and its direct dependencies (only) to the job configuration.

This is intended as a low-level API, facilitating code reuse between this class and its mapred counterpart. It is also of use to external tools that need to build a MapReduce job that interacts with HBase but want fine-grained control over the jars shipped to the cluster. See also PIG-3285 and HIVE-2055.


---

* [HBASE-9961](https://issues.apache.org/jira/browse/HBASE-9961) | *Major* | **[WINDOWS] Multicast should bind to local address**

Clients now bind to multicast address configured as "hbase.status.multicast.bind.address.ip", 0.0.0.0 by default.


---

* [HBASE-8438](https://issues.apache.org/jira/browse/HBASE-8438) | *Major* | **Extend bin/hbase to print a "mapreduce classpath"**

$ ./bin/hbase mapredcp --help
Usage: hbase mapredcp [-Dtmpjars=...]
  Construct a CLASSPATH containing dependency jars required to run a mapreduce job. By default, includes any jars detected by TableMapReduceUtils. Provide additional entries by specifying a comma-separated list in tmpjars.


---

* [HBASE-9985](https://issues.apache.org/jira/browse/HBASE-9985) | *Minor* | **Add HBase shell command to start/stop tracing**

Adds new trace 'start', trace 'status', and trace 'stop' commands to shell.


---

* [HBASE-9831](https://issues.apache.org/jira/browse/HBASE-9831) | *Minor* | **'hbasefsck.numthreads' property isn't passed to hbck via cmdline -D option**

try run hadoopqa for trunk


---

* [HBASE-9973](https://issues.apache.org/jira/browse/HBASE-9973) | *Major* | **[ACL]: Users with 'Admin' ACL permission will lose permissions after upgrade to 0.96.x from 0.94.x or 0.92.x**

**WARNING: No release note provided for this change.**


---

* [HBASE-10001](https://issues.apache.org/jira/browse/HBASE-10001) | *Minor* | **Add a coprocessor to help testing the performances without taking into account the i/o**

New coprocessor to help analysing the performances of the cluster. This coprocessor drops all the writes on the server side, allowing the measure the client and network performances without any limitation on the disk i/o. For a table created like this: create 'usertable', {NAME =\> 'f1', VERSIONS =\> 1}  . You can then add the coprocessor with this command:
alter 'usertable', 'coprocessor' =\> '\|org.apache.hadoop.hbase.tool.WriteSinkCoprocessor\|'


---

* [HBASE-8143](https://issues.apache.org/jira/browse/HBASE-8143) | *Critical* | **HBase on Hadoop 2 with local short circuit reads (ssr) causes OOM**

Committed 0.96 and trunk.  Thanks for reviews.


---

* [HBASE-10073](https://issues.apache.org/jira/browse/HBASE-10073) | *Major* | **Revert HBASE-9718 (Add a test scope dependency on org.slf4j:slf4j-api to hbase-client)**

**WARNING: No release note provided for this change.**


---

* [HBASE-10010](https://issues.apache.org/jira/browse/HBASE-10010) | *Major* | **eliminate the put latency spike on the new log file beginning**

Forward port of a 0.89fb patch where we issue sync on WAL file construction to force immediate setup of write pipeline (and do it outside of locks so don't hold up writes during setup).



