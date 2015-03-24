# Hadoop MAPREDUCE 2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [MAPREDUCE-1176](https://issues.apache.org/jira/browse/MAPREDUCE-1176) | *Major* | **FixedLengthInputFormat and FixedLengthRecordReader**

Addition of FixedLengthInputFormat and FixedLengthRecordReader in the org.apache.hadoop.mapreduce.lib.input package. These two classes can be used when you need to read data from files containing fixed length (fixed width) records. Such files have no CR/LF (or any combination thereof), no delimiters etc, but each record is a fixed length, and extra data is padded with spaces. The data is one gigantic line within a file. When creating a job that specifies this input format, the job must have the "mapreduce.input.fixedlengthinputformat.record.length" property set as follows myJobConf.setInt("mapreduce.input.fixedlengthinputformat.record.length",[myFixedRecordLength]); 

Please see javadoc for more details.



