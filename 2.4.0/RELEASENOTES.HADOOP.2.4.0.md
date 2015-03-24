# Hadoop HADOOP 2.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-10295](https://issues.apache.org/jira/browse/HADOOP-10295) | *Major* | **Allow distcp to automatically identify the checksum type of source files and use it for the target**

Add option for distcp to preserve the checksum type of the source files. Users can use "-pc" as distcp command option to preserve the checksum type.


---

* [HADOOP-10221](https://issues.apache.org/jira/browse/HADOOP-10221) | *Major* | **Add a plugin to specify SaslProperties for RPC protocol based on connection properties**

SaslPropertiesResolver  or its subclass is used to resolve the QOP used for a connection. The subclass can be specified via "hadoop.security.saslproperties.resolver.class" configuration property. If not specified, the full set of values specified in hadoop.rpc.protection is used while determining the QOP used for the  connection. If a class is specified, then the QOP values returned by the class will be used while determining the QOP used for the connection.

Note that this change, effectively removes SaslRpcServer.SASL\_PROPS which was a public field. Any use of this variable  should be replaced with the following code:
SaslPropertiesResolver saslPropsResolver = SaslPropertiesResolver.getInstance(conf);
Map<String, String> sasl\_props = saslPropsResolver.getDefaultProperties();


---

* [HADOOP-10211](https://issues.apache.org/jira/browse/HADOOP-10211) | *Major* | **Enable RPC protocol to negotiate SASL-QOP values between clients and servers**

The hadoop.rpc.protection configuration property previously supported specifying a single value: one of authentication, integrity or privacy.  An unrecognized value was silently assumed to mean authentication.  This configuration property now accepts a comma-separated list of any of the 3 values, and unrecognized values are rejected with an error. Existing configurations containing an invalid value must be corrected. If the property is empty or not specified, authentication is assumed.


---

* [HADOOP-8691](https://issues.apache.org/jira/browse/HADOOP-8691) | *Minor* | **FsShell can print "Found xxx items" unnecessarily often**

The `ls` command only prints "Found foo items" once when listing the directories recursively.



