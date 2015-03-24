# Hadoop HADOOP 2.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-10568](https://issues.apache.org/jira/browse/HADOOP-10568) | *Major* | **Add s3 server-side encryption**

s3 server-side encryption is now supported.

To enable this feature, specify the following in your client-side configuration:

name: fs.s3n.server-side-encryption-algorithm
value: AES256


---

* [HADOOP-10451](https://issues.apache.org/jira/browse/HADOOP-10451) | *Trivial* | **Remove unused field and imports from SaslRpcServer**

SaslRpcServer.SASL\_PROPS is removed.
Any use of this variable  should be replaced with the following code: 
SaslPropertiesResolver saslPropsResolver = SaslPropertiesResolver.getInstance(conf); 
Map<String, String> sasl\_props = saslPropsResolver.getDefaultProperties();


---

* [HADOOP-10342](https://issues.apache.org/jira/browse/HADOOP-10342) | *Major* | **Extend UserGroupInformation to return a UGI given a preauthenticated kerberos Subject**

Add getUGIFromSubject to leverage an external kerberos authentication


---

* [HADOOP-9919](https://issues.apache.org/jira/browse/HADOOP-9919) | *Major* | **Update hadoop-metrics2.properties examples to Yarn**

Remove MRv1 settings from hadoop-metrics2.properties, add YARN settings instead.



