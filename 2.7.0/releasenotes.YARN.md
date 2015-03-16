# Hadoop YARN 2.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

## Changes since Hadoop 2.6.1

---

* [YARN-2230](https://issues.apache.org/jira/browse/YARN-2230) | *Minor* | **Fix description of yarn.scheduler.maximum-allocation-vcores in yarn-default.xml (or code)**

I have modified the description of the yarn.scheduler.maximum-allocation-vcores setting in yarn-default.xml to be reflective of the actual behavior (throw InvalidRequestException when the limit is crossed).

Since this is a documentation change, I have not added any test cases.

Please review the patch, thanks!

---

* [YARN-1904](https://issues.apache.org/jira/browse/YARN-1904) | *Major* | **Uniform the XXXXNotFound messages from ClientRMService and ApplicationHistoryClientService**

I just committed this. Thanks Zhijie!



