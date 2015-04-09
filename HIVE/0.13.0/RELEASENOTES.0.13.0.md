
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

* [HIVE-6752](https://issues.apache.org/jira/browse/HIVE-6752) | *Major* | **Vectorized Between and IN expressions don't work with decimal, date types.**

I have committed this to trunk and branch-0.13


---

* [HIVE-6748](https://issues.apache.org/jira/browse/HIVE-6748) | *Major* | **FileSinkOperator needs to cleanup held references for container reuse**

FileSinkOperator cleanliness of references on closeOp/initializeOp


---

* [HIVE-6662](https://issues.apache.org/jira/browse/HIVE-6662) | *Major* | **Vector Join operations with DATE columns fail**

Add VectorColumnAssignFactory methods to assign DATE into LongColumn vectors


---

* [HIVE-6643](https://issues.apache.org/jira/browse/HIVE-6643) | *Major* | **Add a check for cross products in plans and output a warning**

Added new config parameter 'hive.exec.check.crossproducts' to warn about Cross Products. By default this check is on.


---

* [HIVE-6636](https://issues.apache.org/jira/browse/HIVE-6636) | *Major* | **/user/hive is a bad default for HDFS jars path for Tez**

Hive on Tez will now use /user/<current Hadoop user name>, rather than just /user/hive, as default HDFS directory for jars. {{hive.jar.directory}} can still be used to set the path explicitly.


---

* [HIVE-6587](https://issues.apache.org/jira/browse/HIVE-6587) | *Trivial* | **allow specifying additional Hive classpath for Hadoop**

HIVE\_CLASSPATH environment variable support has been added. This is added to Hadoop classpath for jobs.


---

* [HIVE-6518](https://issues.apache.org/jira/browse/HIVE-6518) | *Minor* | **Add a GC canary to the VectorGroupByOperator to flush whenever a GC is triggered**

Flush VectorGroupBy aggregation hashes in case of a full GC


---

* [HIVE-6507](https://issues.apache.org/jira/browse/HIVE-6507) | *Major* | **OrcFile table property names are specified as strings**

(none, this is minor refactoring so as to avoid future issues where new orc properties are added and not accounted for in HCatalog/etc)


---

* [HIVE-6499](https://issues.apache.org/jira/browse/HIVE-6499) | *Major* | **Using Metastore-side Auth errors on non-resolvable IF/OF/SerDe**

Fixes bug where if Metastore-side authorization was used, tables that used a custom IF/OF/SerDe that was not accessible from the metastore-side could not be created or dropped.


---

* [HIVE-6486](https://issues.apache.org/jira/browse/HIVE-6486) | *Major* | **Support secure Subject.doAs() in HiveServer2 JDBC client.**

Using Kerberos with Pre-Authenticated Subject:
In the current approach of using Kerberos you will need to have valid Kerberos ticket in the ticket cache before connecting. This will entail static login(using kinit, key tab or ticketcache) and restriction of one Kerberos user per client. These restrictions will limit the usage in multi-user scenarios and in scenarios where in the client wants to login programmatically to Kerberos KDC. Using proxy users (see https://issues.apache.org/jira/browse/HIVE-5155 )  is one way to mitigate the problem of multi-user scenarios. The other way is to use pre-authenticated subject(see https://issues.apache.org/jira/browse/HIVE-6486 ). In this method, Hive JDBC client uses a pre-authenticated Kerberos Subject to authenticate to HiveServer2. To use pre-authenticated Subject you will need the following changes.

+ Add hive-exec*.jar to the classpath in addition to the regular Hive JDBC jars (commons-configuration-1.6.jar and hadoop-core*.jar are not required).
+ Add auth=kerberos and kerberosAuthType=fromSubject JDBC URL properties in addition to having the “principal" url property.
+ Open the connection in Subject.doAs()

The following code snippet illustrates the usage (refer to https://issues.apache.org/jira/browse/HIVE-6486 for complete test case):

	static Connection getConnection( Subject signedOnUserSubject ) throws Exception{

		Connection conn = (Connection) Subject.doAs(signedOnUserSubject, new PrivilegedExceptionAction<Object>()
				{
			public Object run()
			{    	        	  
				Connection con = null;
				String JDBC\_DB\_URL = "jdbc:hive2://HiveHost:10000/default;principal=hive/localhost.localdomain@EXAMPLE.COM;auth=kerberos;kerberosAuthType=fromSubject";
				try {
					Class.forName(JDBC\_DRIVER);
					con =  DriverManager.getConnection(JDBC\_DB\_URL);
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} 
				return con;
			}
				});

		return conn;
	}


---

* [HIVE-6475](https://issues.apache.org/jira/browse/HIVE-6475) | *Major* | **Implement support for appending to mutable tables in HCatalog**

Introduces append feature for HCatalog writes.

Previously, if an unpartitioned table had data in it, or if a partition in a partitioned table had data in it, or if the partition even existed, HCat would fail if a user attempted to write to them. Now, that behaviour is extended so that the strict behaviour exists only if the table in question has a parameter "immutable" set to "true" (see HIVE-6406).

With this patch, we can append to existing partitions or non-partitioned tables that already have data in them, as long as the new data being written is compatible to the old data (i.e. one cannot mix fileformats when attempting an append)

As a further note, append is currently not compatible with dynamic partitioning, and a dynamic partitioning job is still unable to append to a table, even if it is a mutable table.


---

* [HIVE-6466](https://issues.apache.org/jira/browse/HIVE-6466) | *Major* | **Add support for pluggable authentication modules (PAM) in Hive**

*Release notes:*
PAM support allows Hive to use existing PAM services for authentication. PAM requires the native [JPAM|http://sourceforge.net/projects/jpam/files/jpam/jpam-1.1/] library. To enable PAM usage:
1. Download the JPAM native library [JPAM|http://sourceforge.net/projects/jpam/files/jpam/jpam-1.1/] for the relevant architecture.
2. Unzip and copy libjpam.so to a directory (<libjmap-directory>) on the system.
3. Add the directory to the LD\_LIBRARY\_PATH environment variable like so: export LD\_LIBRARY\_PATH=$LD\_LIBRARY\_PATH:<libjmap-directory>
4. Set the "hive.server2.authentication" to PAM in hive-site.xml
5. Set the "hive.server2.authentication.pam.services" to a list of comma separated PAM services that will be used. Note that a file with the same name as the PAM service must exist in /etc/pam.d
6. Start HiveServer2


---

* [HIVE-6460](https://issues.apache.org/jira/browse/HIVE-6460) | *Major* | **Need new "show" functionality for transactions**

A new command SHOW TRANSACTIONS has been added.  This will show a list of all currently open and aborted transactions in the system.  It is intended for use by administrators.  It will print out:
	•	transaction id
	•	transaction state
	•	user who started the transaction
	•	machine where it was started

A new command SHOW COMPACTIONS has been added.  This will provide a list of all tables and partitions currently being compacted or scheduled for compaction.  For details on compaction see Basic Design below.  This will print:
	•	database name
	•	table name 
	•	partition name (if this is a partitioned table)
	•	whether it is a major or minor compaction
	•	the state the compaction is in, which can be:
	⁃	'initiated' - waiting in the queue to be done         [could use dashes instead of commas for these 3 state definitions] [I never understand when to use dashes versus commas.]
	⁃	'working' - being compacted
	⁃	'ready for cleaning' - the compaction has been done and the old files are scheduled to be cleaned
	•	thread id of the worker thread doing the compaction (only if in working state)
	•	the time at which the compaction started (only if in working or ready for cleaning state)

The SHOW LOCKS command has been altered to provide information about the new locks associated with transactions.  If you are using the ZooKeeper or in-memory lock managers you will notice no difference in the output of this command.  If you are using transactions then SHOW LOCKS will return:
	•	database name
	•	table name 
	•	partition (if this is a partitioned table)
	•	the state the lock is in, which can be:
	⁃	'acquired' - the requestor holds the lock
	⁃	'waiting' - the requestor is waiting for the lock
	⁃	'aborted' - the lock has timed out but not yet been cleaned up
	•	the type of lock, which can be:
	⁃	'exclusive' - no one else can hold the lock at the same time (obtained mostly by DDL operations such as drop table)
	⁃	'shared\_read’ - any number of other shared\_read locks can lock the same resource at the same time (obtained by reads; confusingly, an insert operation also obtains a shared\_read lock)
	⁃	'shared\_write' - any number of shared\_read locks can lock the same resource at the same time, but no other shared\_write locks are allowed (obtained by update and delete)
	•	id of the transaction this lock is associated with, if there is one
	•	last time the holder of this lock sent a heartbeat indicating it was still alive
	•	the time the lock was acquired, if it has been acquired
	•	Hive user who requested the lock
	•	host the user is running on

A new option has been added to ALTER TABLE to request a compaction of a table or partition.  In general users do not need to request compactions, as the system will detect the need for them and initiate the compaction.  However, if compaction is turned off for a table or a user wants to compact the table at a time the system would not choose to, ALTER TABLE can be used to initiate the compaction.  The syntax is:

ALTER TABLE tablename [PARTITION (partition\_key = 'partition\_value' [, ...])] COMPACT 'compaction\_type'

where compaction\_type can be MAJOR or MINOR.  This will enqueue a request for compaction and return.  To watch the progress of the compaction the user can use SHOW COMPACTIONS.


---

* [HIVE-6455](https://issues.apache.org/jira/browse/HIVE-6455) | *Major* | **Scalable dynamic partitioning and bucketing optimization**

Added the new config to https://cwiki.apache.org/confluence/display/Hive/Configuration+Properties


---

* [HIVE-6440](https://issues.apache.org/jira/browse/HIVE-6440) | *Major* | **sql std auth - add command to change owner of database**

Adds support for following statement that can be used to set owner of a database:

alter database [dbname] set owner [user|group|role] [username]

Note that 'group' in above command is for parity with grant/revoke statement syntax. But the concept of group is not supported with the new sql standard authorization (only user/role are ).


---

* [HIVE-6433](https://issues.apache.org/jira/browse/HIVE-6433) | *Major* | **SQL std auth - allow grant/revoke roles if user has ADMIN OPTION**

If a user/role has admin option on a role, then user should be able to grant /revoke other users to/from the role.


---

* [HIVE-6406](https://issues.apache.org/jira/browse/HIVE-6406) | *Major* | **Introduce immutable-table table property and if set, disallow insert-into**

This patch introduces a new table property "immutable".

If we create a table with TBLPROPERTIES("immutable"="true"), then INSERT INTO behaviour into that table will be disallowed if there is any data already present that the INSERT INTO would append to.

INSERT INTO will still work if it is empty.

INSERT OVERWRITE behaviour is not modified by this property, since an INSERT OVERWRITE's intent is effectively to drop and re-create.

The desirability of having an immutable flag for a table is that it allows a table to be flagged to be protected against accidental updates due to a script loading data into it being run multiple times by mistake. With the flag set, the first insert would succeed, and successive inserts would fail, thus resulting in only one set of data in the table, instead of silently succeeding with 4 copies(say) of the data in the table.


---

* [HIVE-6403](https://issues.apache.org/jira/browse/HIVE-6403) | *Major* | **uncorrelated subquery is failing with auto.convert.join=true**

also added to 0.13
thanks Navis


---

* [HIVE-6380](https://issues.apache.org/jira/browse/HIVE-6380) | *Major* | **Specify jars/files when creating permanent UDFs**

This allows the user to specify what jars/files/archives are required for a permanent UDF:

CREATE FUNCTION [db\_name.]function\_name AS class\_name [USING JAR|FILE|ARCHIVE 'file\_uri' [, JAR|FILE|ARCHIVE 'file\_uri'] ]

When the function is referenced for the first time by a Hive session, these resources will be added to the environment.


---

* [HIVE-6342](https://issues.apache.org/jira/browse/HIVE-6342) | *Major* | **hive drop partitions should use standard expr filter instead of some custom class**

Hive now supports non-string columns and any operators when parsing the partition specification to drop partitions.


---

* [HIVE-6339](https://issues.apache.org/jira/browse/HIVE-6339) | *Major* | **Implement new JDK7 schema management APIs in java.sql.Connection**

Now supports getSchema()/setSchema() in jdbc for hiveserver2


---

* [HIVE-6327](https://issues.apache.org/jira/browse/HIVE-6327) | *Major* | **A few mathematic functions don't take decimal input**

Wiki updated.


---

* [HIVE-6251](https://issues.apache.org/jira/browse/HIVE-6251) | *Major* | **Add ability to specify delimiter in HCatalog Java API to create tables - HCatCreateTableDesc**

Added ability to set serde parameters from webhcat-java client.


---

* [HIVE-6248](https://issues.apache.org/jira/browse/HIVE-6248) | *Major* | **HCatReader/Writer should hide Hadoop and Hive classes**

HCatReader and HCatWriter API changed.  See https://cwiki.apache.org/confluence/display/Hive/HCatalog+ReaderWriter for details.


---

* [HIVE-6226](https://issues.apache.org/jira/browse/HIVE-6226) | *Major* | **It should be possible to get hadoop, hive, and pig version being used by WebHCat**

Added new call in webhcat to allow version/hadoop and version/hive which will return the versions of hadoop and hive being run.


---

* [HIVE-6173](https://issues.apache.org/jira/browse/HIVE-6173) | *Major* | **Beeline doesn't accept --hiveconf option as Hive CLI does**

This (--hiveconf option) needs documentation if not being documented yet.


---

* [HIVE-6109](https://issues.apache.org/jira/browse/HIVE-6109) | *Major* | **Support customized location for EXTERNAL tables created by Dynamic Partitioning**

A new Job conf property "hcat.dynamic.partitioning.custom.pattern" is introduced that can be configured to provide custom path pattern in case of dynamic partitioning. E.g. "${year}/${month}/${day}/${hour}/${minute}/${country}"


---

* [HIVE-6098](https://issues.apache.org/jira/browse/HIVE-6098) | *Major* | **Merge Tez branch into trunk**

Here are the instructions for setting up Tez on your hadoop 2 cluster: https://github.com/apache/incubator-tez/blob/branch-0.2.0/INSTALL.txt

Notes:

- I start hive with "hive -hiveconf hive.execution.engine=tez", not exactly necessary, but it will start the AM/containers right away instead of on first query.
- hive-exec jar should be copied to hdfs:///user/hive/ (location can be changed with: hive.jar.directory). This avoids re-localization of the hive jar.

Hive settings:

// needed because SMB isn't supported on tez yet
set hive.optimize.bucketmapjoin=false;
set hive.optimize.bucketmapjoin.sortedmerge=false;
set hive.auto.convert.sortmerge.join=false;
set hive.auto.convert.sortmerge.join.noconditionaltask=false;
set hive.auto.convert.join.noconditionaltask=true;

// depends on your available mem/cluster, but map/reduce mb should be set to the same for container reuse
set hive.auto.convert.join.noconditionaltask.size=64000000;
set mapred.map.child.java.opts=-server -Xmx3584m -Djava.net.preferIPv4Stack=true;
set mapred.reduce.child.java.opts=-server -Xmx3584m -Djava.net.preferIPv4Stack=true;
set mapreduce.map.memory.mb=4096;
set mapreduce.reduce.memory.mb=4096;

// generic opts
set hive.optimize.reducededuplication.min.reducer=1;
set hive.optimize.mapjoin.mapreduce=true;

// autogather might require you to up the max number of counters, if you run into issues
set hive.stats.autogather=true;
set hive.stats.dbclass=counter;

// tea settings can also go into fez-site if desired
set mapreduce.map.output.compress=true;
set mapreduce.map.output.compress.codec=org.apache.hadoop.io.compress.DefaultCodec;
set tez.runtime.intermediate-output.should-compress=true;
set tez.runtime.intermediate-output.compress.codec=org.apache.hadoop.io.compress.DefaultCodec;
set tez.runtime.intermdiate-input.is-compressed=true;
set tez.runtime.intermediate-input.compress.codec=org.apache.hadoop.io.compress.DefaultCodec;

// tez groups in the AM
set hive.input.format=org.apache.hadoop.hive.ql.io.HiveInputFormat;

set hive.orc.splits.include.file.footer=true;

set hive.root.logger=ERROR,console;
set hive.execution.engine=tez;
set hive.vectorized.execution.enabled=true;
set hive.exec.local.cache=true;
set hive.compute.query.using.stats=true;

for tez:

  <property>
    <name>tez.am.resource.memory.mb</name>
    <value>8192</value>
  </property>
  <property>
    <name>tez.am.java.opts</name>
    <value>-server -Xmx7168m -Djava.net.preferIPv4Stack=true</value>
  </property>
  <property>
    <name>tez.am.grouping.min-size</name>
    <value>16777216</value>
  </property>
  <!-- Client Submission timeout value when submitting DAGs to a session -->
  <property>
    <name>tez.session.client.timeout.secs</name>
    <value>-1</value>
  </property>
  <!-- prewarm stuff -->
  <property>
    <name>tez.session.pre-warm.enabled</name>
    <value>true</value>
  </property>

  <property>
    <name>tez.session.pre-warm.num.containers</name>
    <value>10</value>
  </property>
  <property>
    <name>tez.am.grouping.split-waves</name>
    <value>0.9</value>
  </property>

  <property>
    <name>tez.am.container.reuse.enabled</name>
    <value>true</value>
  </property>
  <property>
    <name>tez.am.container.reuse.rack-fallback.enabled</name>
    <value>true</value>
  </property>
  <property>
    <name>tez.am.container.reuse.non-local-fallback.enabled</name>
    <value>true</value>
  </property>
  <property>
    <name>tez.am.container.session.delay-allocation-millis</name>
    <value>-1</value>
  </property>
  <property>
    <name>tez.am.container.reuse.locality.delay-allocation-millis</name>
    <value>250</value>
  </property>


---

* [HIVE-6052](https://issues.apache.org/jira/browse/HIVE-6052) | *Major* | **metastore JDO filter pushdown for integers may produce unexpected results with non-normalized integer columns**

JDO pushdown for integers in metastore didn't work correctly for some legacy data in partition columns in Hive 0.12. In 0.13, hive.metastore.integral.jdo.pushdown setting is added to enable it, and it's disabled by default. Enabling it improves metastore perf for integral columns, especially if there's a large number of partitions. However, it doesn't work correctly with integral values that are not normalized (e.g. have leading zeroes, like 0012). If metastore direct SQL is enabled and works, this optimization is also irrelevant.


---

* [HIVE-6013](https://issues.apache.org/jira/browse/HIVE-6013) | *Major* | **Supporting Quoted Identifiers in Column Names**

The default behavior for quoted identifiers has been changed. Now at the language level any Column Name that is specified within back-ticks(`) is treated literally. This is inline with standard sql behavior for quoted identifiers. Within back-tick strings use double back-ticks to escape. 

To revert to old behavior(that of interpreting back-ticked names as regular expressions) use the new parameter: hive.support.quoted.identifiers; set to the value 'none'.


---

* [HIVE-5985](https://issues.apache.org/jira/browse/HIVE-5985) | *Trivial* | **Make qfile\_regex to accept multiple patterns**

Committed to trunk. Thanks for a review, Ashutosh!


---

* [HIVE-5960](https://issues.apache.org/jira/browse/HIVE-5960) | *Major* | **SQL std auth - special handling of PUBLIC role**

In sql standard authorization mode all users by default belong to PUBLIC role


---

* [HIVE-5959](https://issues.apache.org/jira/browse/HIVE-5959) | *Major* | **SQL std auth - bootstrap SUPERUSER roles**

A new property is added in HiveConf. {{hive.users.in.admin.role}} An admin can provide a comma separated list of users which will be added to admin role when metastore starts up. More users can still be added later on.


---

* [HIVE-5953](https://issues.apache.org/jira/browse/HIVE-5953) | *Major* | **SQL std auth - authorize grant/revoke on table**

Granting privileges on a table now requires the grantor to have the same privileges 'with grant option'.

Also, note that this patch adds a new method setSessionState to the authentication interface. Any users of the interface would need to add that method.


---

* [HIVE-5941](https://issues.apache.org/jira/browse/HIVE-5941) | *Major* | **SQL std auth - support 'show roles'**

This jira adds support for "show roles" statement, it list all existing roles.


---

* [HIVE-5923](https://issues.apache.org/jira/browse/HIVE-5923) | *Major* | **SQL std auth - parser changes**

Grant privilege and revoke privilege statements don't have the requirement (but not the option) for the noise word TABLE. 
 TABLE is the assumed default for grant and revoke statements. 
Hive’s syntax changes from "GRANT action ON TABLE table TO grantee" to  "GRANT action ON [TABLE] table TO grantee".

Grant role and revoke role statements has been changed to remove the need for keyword ROLE.

Support for WITH ADMIN OPTION has been added to grant role and revoke role statement syntax.


---

* [HIVE-5879](https://issues.apache.org/jira/browse/HIVE-5879) | *Trivial* | **Fix spelling errors in hive-default.xml**

Fix spelling and name capitalizations in hive-default.xml.template file.


---

* [HIVE-5795](https://issues.apache.org/jira/browse/HIVE-5795) | *Major* | **Hive should be able to skip header and footer rows when reading data file for a table**

hive.file.max.footer
  Default Value: 100
  Max number of lines of footer user can set for a table file.
skip.header.line.count
  Default Value: 0
  Number of header lines for the table file.
skip.footer.line.count
  Default Value: 0
  Number of footer lines for the table file.

"skip.footer.line.count" and "skip.header.line.count" should be specified in the table property during creating the table. Following example shows the usage of these two properties:

Create external table testtable (name string, message string) row format delimited fields terminated by '\t' lines terminated by '\n' location '/testtable' tblproperties ("skip.header.line.count"="1", "skip.footer.line.count"="2");


---

* [HIVE-5783](https://issues.apache.org/jira/browse/HIVE-5783) | *Minor* | **Native Parquet Support in Hive**

Added support for 'STORED AS PARQUET' and for setting parquet as the default storage engine.


---

* [HIVE-5687](https://issues.apache.org/jira/browse/HIVE-5687) | *Major* | **Streaming support in Hive**

New transactional APIs to support Streaming data directly into Hive.


---

* [HIVE-5682](https://issues.apache.org/jira/browse/HIVE-5682) | *Major* | **can not display the table's comment in chinese**

the hive-0.12.0 can not display the table's comment in chinese(not unicode),so it is displayed in messy code,the patch HIVE-5682 can fix this.and i have test it.


---

* [HIVE-5663](https://issues.apache.org/jira/browse/HIVE-5663) | *Major* | **Refactor ORC RecordReader to operate on direct & wrapped ByteBuffers**

Refactor ORC RecordReader to use ByteBuffer APIs instead of relying on underlying array()


---

* [HIVE-5655](https://issues.apache.org/jira/browse/HIVE-5655) | *Major* | **Hive incorrecly handles divide-by-zero case**

The behaviour needs to be documented.


---

* [HIVE-5636](https://issues.apache.org/jira/browse/HIVE-5636) | *Major* | **Introduce getPartitionColumns() functionality from HCatInputFormat**

Introduces 2 static functions on HCatInputFormat:

public static HCatSchema getPartitionColumns(Configuration conf) throws IOException
public static HCatSchema getDataColumns(Configuration conf) throws IOException

These return the partitioning columns and data column schemas for a HCatInputFormat user, and can be used after HCatInputFormat.setInput has been called on a job with an associated conf.


---

* [HIVE-5504](https://issues.apache.org/jira/browse/HIVE-5504) | *Major* | **OrcOutputFormat honors  compression  properties only from within hive**

Allows OrcOutputFormat.createRecordWriter() to use its table property parameters (like "orc.compress") if specified in JobConf as well. This codepath is not called from Hive, but will be helpful to those that want to use OrcOutputFormat as a generic M/R OutputFormat.

In addition, makes changes to HCatalog to look for certain Orc table properties, and if present, copies them out to JobConf before instantiating OrcOutputFormat, thus passing the properties back to it. This allows users of Orc from outside Hive to have Orc behave as the metadata dictates.


---

* [HIVE-5454](https://issues.apache.org/jira/browse/HIVE-5454) | *Major* | **HCatalog runs a partition listing with an empty filter**

Deprecated the HCatInputFormat#setFilter(…) chain API call in favor of a new, filter-passing, HCatInputFormat#setInput(…) method.


---

* [HIVE-5400](https://issues.apache.org/jira/browse/HIVE-5400) | *Major* | **Allow admins to disable compile and other commands**

Introduces new hive config parameter -
hive.security.command.whitelist .
This can use used to restrict the set of commands that can be run. Currently supported command list is -  "set,reset,dfs,add,delete" and by default all these commands are supported. If you want to restrict any of these commands, you can set the config to a value that does not have the command in it.


---

* [HIVE-5380](https://issues.apache.org/jira/browse/HIVE-5380) | *Minor* | **Non-default OI constructors should be supported for backwards compatibility**

Apache Hive recommends that custom ObjectInspectors created for use with custom Serdes have a no-argument constructor in addition to their normal constructors for serialization purposes. See HIVE-5380 for more details.


---

* [HIVE-5356](https://issues.apache.org/jira/browse/HIVE-5356) | *Major* | **Move arithmatic UDFs to generic UDF implementations**

**WARNING: No release note provided for this incompatible change.**


---

* [HIVE-5345](https://issues.apache.org/jira/browse/HIVE-5345) | *Major* | **Operator::close() leaks Operator::out, holding reference to buffers**

Prevent  OutputCollector leaks from an Operator by clearing the Operator::out reference on close()


---

* [HIVE-5269](https://issues.apache.org/jira/browse/HIVE-5269) | *Trivial* | **Use thrift binary type for conveying binary values in hiveserver2**

Merged into HIVE-3746. Now uses ByteBuffer for binary types.


---

* [HIVE-5217](https://issues.apache.org/jira/browse/HIVE-5217) | *Major* | **Add long polling to asynchronous execution in HiveServer2**

Change to use Long polling as described in description.
Adds hive.server2.long.polling.timeout configuration parameter, which can be used to configure how long the long poll waits. Most users would not need to bother about changing this configuration parameter.


---

* [HIVE-5193](https://issues.apache.org/jira/browse/HIVE-5193) | *Major* | **Columnar Pushdown for RC/ORC File not happening in HCatLoader**

(Columnar pushdown will now work with HCatLoader - basically, what this means is that when using RC/ORC tables, not all rows are necessarily read and processed if pig would discard (by filtering) it anyway. This allows reads to be a bit faster.)


---

* [HIVE-5191](https://issues.apache.org/jira/browse/HIVE-5191) | *Major* | **Add char data type**

The new datatype (char) has been documented in Types and DDL wikidocs.


---

* [HIVE-4971](https://issues.apache.org/jira/browse/HIVE-4971) | *Major* | **Unit test failure in TestVectorTimestampExpressions**

Fix vectorized TIMESTAMP() to handle negative timestamps with fractional seconds


---

* [HIVE-4884](https://issues.apache.org/jira/browse/HIVE-4884) | *Major* | **ORC TimestampTreeReader.nextVector() off by a second when time in fractional**

Adjust milliseconds down when encountering a negative second value with a fractional second stored as nanoseconds.


---

* [HIVE-4758](https://issues.apache.org/jira/browse/HIVE-4758) | *Major* | **NULLs and record separators broken with vectorization branch intermediate outputs**

Fix the NULL serialization and record separator insertion for VectorizedRowBatch.toString()


---

* [HIVE-4699](https://issues.apache.org/jira/browse/HIVE-4699) | *Minor* | **Integrate basic UDFs for Timesamp**

Integrate vectorized Year, Month, Week, Day,  Hour, Minute, Second & UnixTimestamp UDFs for Timestamp fields.


---

* [HIVE-4694](https://issues.apache.org/jira/browse/HIVE-4694) | *Minor* | **Fix ORC TestVectorizedORCReader testcase for Timestamps**

Fix ORC TestVectorizedORCReader for Timestamps containing sub-second timings


---

* [HIVE-4681](https://issues.apache.org/jira/browse/HIVE-4681) | *Major* | **Fix ORC TimestampTreeReader.nextVector() to handle milli-nano math corectly**

Fix ORC TimestampTreeReader to sum the second and nanosecond fraction timestamp vectors correctly


---

* [HIVE-4608](https://issues.apache.org/jira/browse/HIVE-4608) | *Minor* | **Vectorized UDFs for Timestamp in nanoseconds**

Vectorized UDFs for timestamp functions which accept long vectors


---

* [HIVE-4518](https://issues.apache.org/jira/browse/HIVE-4518) | *Major* | **Counter Strike: Operation Operator**

Added config setting hive.counters.group.name: counter group name for counters used during query execution.


---

* [HIVE-4485](https://issues.apache.org/jira/browse/HIVE-4485) | *Major* | **beeline prints null as empty strings**

This introduces a backward incompatible change.
Earlier, null was getting printed as an empty string. There was no way to distinguish between an empty string an a null value. 
With this change null values will be printed as NULL. 
To get the old behavior you can set the property nullemptystring to values.
This can be done via commandline argument : beeline --nullemptystring=true
Or within the beeline shell
> !set nullemptystring true


---

* [HIVE-3976](https://issues.apache.org/jira/browse/HIVE-3976) | *Major* | **Support specifying scale and precision with Hive decimal type**

**WARNING: No release note provided for this incompatible change.**


---

* [HIVE-3611](https://issues.apache.org/jira/browse/HIVE-3611) | *Major* | **Hive JDBC doesn't support BINARY column**

Path to support BINARY type in Hive JDBC - Jira: HIVE-3611


---

* [HIVE-3455](https://issues.apache.org/jira/browse/HIVE-3455) | *Major* | **ANSI CORR(X,Y) is incorrect**

the patch for the
src/ql/src/java/org/apache/hadoop/hive/ql/udf/generic


---

* [HIVE-2817](https://issues.apache.org/jira/browse/HIVE-2817) | *Major* | **Drop any table even without privilege**

Fix bug drop any table even without privilege


---

* [HIVE-2055](https://issues.apache.org/jira/browse/HIVE-2055) | *Major* | **Hive should add HBase classpath dependencies when available**

HBase will be detected via HBASE\_HOME and HBASE\_CONF\_DIR. HBASE\_HOME defaults to BigTop path /usr/lib/hbase.


---

* [HIVE-1511](https://issues.apache.org/jira/browse/HIVE-1511) | *Major* | **Hive plan serialization is slow**

Any 3rd party UDFs used must be declared as public classes.


---

* [HIVE-1466](https://issues.apache.org/jira/browse/HIVE-1466) | *Major* | **Add NULL DEFINED AS to ROW FORMAT specification**

This features enables defining a custom null format for a table via 'create table' statement. A custom null format can also be specified while exporting data to local filesystem using 'insert overwrite .. local dir' statement.


---

* [HIVE-784](https://issues.apache.org/jira/browse/HIVE-784) | *Major* | **Support uncorrelated subqueries in the WHERE clause**

Not ready for release



