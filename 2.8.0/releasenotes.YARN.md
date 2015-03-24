# Hadoop YARN 2.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [YARN-3241](https://issues.apache.org/jira/browse/YARN-3241) | *Major* | **FairScheduler handles "invalid" queue names inconsistently**

FairScheduler does not allow queue names with leading or tailing spaces or empty sub-queue names anymore.



