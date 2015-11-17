#!/bin/bash

## @description  Large display for the user console
## @audience     public
## @stability    stable
## @replaceable  no
## @param        string
## @return       large chunk of text
function big_console_header
{
  local text="$*"
  local spacing=$(( (75+${#text}) /2 ))
  printf "\n\n"
  echo "============================================================================"
  echo "============================================================================"
  printf "%*s\n"  ${spacing} "${text}"
  echo "============================================================================"
  echo "============================================================================"
  printf "\n\n"
}

this="${BASH_SOURCE-$0}"
bin=$(cd -P -- "$(dirname -- "${this}")" >/dev/null && pwd -P)

#
# This is a good test for Yetus...
#
RDM=${HOME}/Src/aw-github/yetus/release-doc-maker/releasedocmaker.py

big_console_header Yetus
cd ${HOME}/Src/aw-github/eco-release-metadata/YETUS
${RDM} --project YETUS \
        --projecttitle "Apache Yetus" \
        --version 0.0.0 --version 1.0.0 i\
        --range --index

big_console_header Bigtop
cd ${HOME}/Src/aw-github/eco-release-metadata/BIGTOP
${RDM} --project BIGTOP --projecttitle "Apache BigTop" \
        --range --version 1.0.1 --version 2.0.0 \
        --index

big_console_header Flink
cd ${HOME}/Src/aw-github/eco-release-metadata/FLINK
${RDM} --project FLINK --projecttitle "Apache Flink" \
        --range --version 0.9.2 --version 1.0.0 \
        --index

big_console_header Hadoop
# Hadoop is a mess.  There are now effectively 4 branches
# in active development, so this range is huge. :(
cd ${HOME}/Src/aw-github/eco-release-metadata/HADOOP
${RDM} --project HADOOP --project HDFS --project YARN --project MAPREDUCE \
        --projecttitle "Apache Hadoop" \
        --version 2.6.3
${RDM} --project HADOOP --project HDFS --project YARN --project MAPREDUCE \
        --projecttitle "Apache Hadoop" \
        --range --version 2.7.2 --version 3.0.0 --index


big_console_header HBase
cd ${HOME}/Src/aw-github/eco-release-metadata/HBASE
${RDM} --project HBASE --projecttitle "Apache HBase" \
        --range --version 1.0.3 --version 1.0.4
${RDM} --project HBASE --projecttitle "Apache HBase" \
        --range --version 1.1.1 --version 2.0.0 --index


big_console_header Hive
cd ${HOME}/Src/aw-github/eco-release-metadata/HIVE
${RDM} --project HIVE --projecttitle "Apache Hive" \
        --range --version 1.1.0 --version 1.1.2
${RDM} --project HIVE --projecttitle "Apache Hive" \
        --range --version 1.2.2 --version 1.2.5
${RDM} --project HIVE --projecttitle "Apache Hive" \
        --range --version 1.3.0 --version 2.0.0 --index

big_console_header Kafka
cd ${HOME}/Src/aw-github/eco-release-metadata/KAFKA
${RDM} --project KAFKA --projecttitle "Apache Kafka" \
        --range --version 0.8.1 --version 1.0.0.0 --index
${RDM} --project KAFKA --projecttitle "Apache Kafka" \
        --range --version 0.10.0.0 --version 0.11.0.0 --index

big_console_header Oozie
cd ${HOME}/Src/aw-github/eco-release-metadata/OOZIE
${RDM} --project OOZIE --projecttitle "Apache Oozie" \
        --range --version 4.3.0 --version 5.0.0 --index

big_console_header Orc
cd ${HOME}/Src/aw-github/eco-release-metadata/ORC
${RDM} --project ORC --projecttitle "Apache Orc" \
        --range --version 1.0.0 --version 2.0.0 --index

big_console_header Pig
cd ${HOME}/Src/aw-github/eco-release-metadata/PIG
${RDM} --project PIG --projecttitle "Apache Pig" \
        --range --version 0.15.1 --version 0.17.0 --index

# Spark is a mess. It effectively has like 5 branches in
# active development at a time. "Released" versions
# still get updates at random points in time.  As a
# result, this range is HUGE. :(
big_console_header Spark
cd ${HOME}/Src/aw-github/eco-release-metadata/SPARK
${RDM} --project SPARK --projecttitle "Apache Spark" \
        --range --version 1.2.3 --version 1.2.9
${RDM} --project SPARK --projecttitle "Apache Spark" \
        --range --version 1.3.2 --version 1.3.9
${RDM} --project SPARK --projecttitle "Apache Spark" \
        --range --version 1.4.2 --version 1.4.9
${RDM} --project SPARK --projecttitle "Apache Spark" \
        --range --version 1.5.2 --version 1.5.9
${RDM} --project SPARK --projecttitle "Apache Spark" \
        --range --version 1.6.0 --version 2+ --index

big_console_header Tez
cd ${HOME}/Src/aw-github/eco-release-metadata/TEZ
${RDM} --project TEZ --projecttitle "Apache Tez" \
        --range --version 0.5.5 --version 0.5.9
${RDM} --project TEZ --projecttitle "Apache Tez" \
        --range --version 0.6.3 --version 0.6.9
${RDM} --project TEZ --projecttitle "Apache Tez" \
        --range --version 0.7.1 --version 0.7.9
${RDM} --project TEZ --projecttitle "Apache Tez" \
        --range --version 0.8.2 --version 1.0.0 --index

big_console_header Zookeeper
cd ${HOME}/Src/aw-github/eco-release-metadata/ZOOKEEPER
${RDM} --project ZOOKEEPER --projecttitle "Apache Zookeeper" \
        --range --version 3.5.2 --version 4.0.0 --index


d=$(date -u "+%Y-%m-%d %H:%m")
git add -A
git commit -a -m "${d} UTC auto-commit"
