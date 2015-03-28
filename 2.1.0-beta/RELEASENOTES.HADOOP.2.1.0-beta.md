# Hadoop HADOOP 2.1.0-beta Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-9832](https://issues.apache.org/jira/browse/HADOOP-9832) | *Blocker* | **Add RPC header to client ping**

Client ping will be sent as a RPC header with a reserved callId instead of as a sentinel RPC packet length.


---

* [HADOOP-9820](https://issues.apache.org/jira/browse/HADOOP-9820) | *Blocker* | **RPCv9 wire protocol is insufficient to support multiplexing**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-9698](https://issues.apache.org/jira/browse/HADOOP-9698) | *Blocker* | **RPCv9 client must honor server's SASL negotiate response**

The RPC client now waits for the Server's SASL negotiate response before instantiating its SASL client.


---

* [HADOOP-9683](https://issues.apache.org/jira/browse/HADOOP-9683) | *Blocker* | **Wrap IpcConnectionContext in RPC headers**

Connection context is now sent as a rpc header wrapped protobuf.


---

* [HADOOP-9649](https://issues.apache.org/jira/browse/HADOOP-9649) | *Blocker* | **Promote YARN service life-cycle libraries into Hadoop Common**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-9630](https://issues.apache.org/jira/browse/HADOOP-9630) | *Major* | **Remove IpcSerializationType**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-9425](https://issues.apache.org/jira/browse/HADOOP-9425) | *Major* | **Add error codes to rpc-response**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-9421](https://issues.apache.org/jira/browse/HADOOP-9421) | *Blocker* | **Convert SASL to use ProtoBuf and provide negotiation capabilities**

Raw SASL protocol now uses protobufs wrapped with RPC headers.
The negotiation sequence incorporates the state of the exchange.
The server now has the ability to advertise its supported auth types.


---

* [HADOOP-9380](https://issues.apache.org/jira/browse/HADOOP-9380) | *Major* | **Add totalLength to rpc response**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-9228](https://issues.apache.org/jira/browse/HADOOP-9228) | *Minor* | **FileSystemContractTestBase never verifies that files are files**

fixed in HADOOP-9258


---

* [HADOOP-9227](https://issues.apache.org/jira/browse/HADOOP-9227) | *Trivial* | **FileSystemContractBaseTest doesn't test filesystem's mkdir/isDirectory() logic rigorously enough**

fixed in HADOOP-9258


---

* [HADOOP-9194](https://issues.apache.org/jira/browse/HADOOP-9194) | *Major* | **RPC Support for QoS**

Part of the RPC version 9 change. A service class byte is added after the version byte.


---

* [HADOOP-9163](https://issues.apache.org/jira/browse/HADOOP-9163) | *Major* | **The rpc msg in  ProtobufRpcEngine.proto should be moved out to avoid an extra copy**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-9151](https://issues.apache.org/jira/browse/HADOOP-9151) | *Major* | **Include RPC error info in RpcResponseHeader instead of sending it separately**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-8886](https://issues.apache.org/jira/browse/HADOOP-8886) | *Major* | **Remove KFS support**

Kosmos FS (KFS) is no longer maintained and Hadoop support has been removed. KFS has been replaced by QFS (HADOOP-8885).


---

* [HADOOP-8562](https://issues.apache.org/jira/browse/HADOOP-8562) | *Major* | **Enhancements to support Hadoop on Windows Server and Windows Azure environments**

This umbrella jira makes enhancements to support Hadoop natively on Windows Server and Windows Azure environments.


---

* [HADOOP-8470](https://issues.apache.org/jira/browse/HADOOP-8470) | *Major* | **Implementation of 4-layer subclass of NetworkTopology (NetworkTopologyWithNodeGroup)**

This patch should be checked in together (or after) with JIRA Hadoop-8469: https://issues.apache.org/jira/browse/HADOOP-8469



