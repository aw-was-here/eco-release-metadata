# Apache Hadoop  1.0.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-1722](https://issues.apache.org/jira/browse/HADOOP-1722) | *Major* | **Make streaming to handle non-utf8 byte array**

Streaming allows binary (or other non-UTF8) streams.


---

* [MAPREDUCE-3851](https://issues.apache.org/jira/browse/MAPREDUCE-3851) | *Major* | **Allow more aggressive action on detection of the jetty issue**

added new configuration variables to control when TT aborts if it sees a certain number of exceptions:

    // Percent of shuffle exceptions (out of sample size) seen before it's
    // fatal - acceptable values are from 0 to 1.0, 0 disables the check.
    // ie. 0.3 = 30% of the last X number of requests matched the exception,
    // so abort.
      conf.getFloat(
          "mapreduce.reduce.shuffle.catch.exception.percent.limit.fatal", 0);

    // The number of trailing requests we track, used for the fatal
    // limit calculation
      conf.getInt("mapreduce.reduce.shuffle.catch.exception.sample.size", 1000);



