#!/usr/bin/env bash

export RDM=../buretoolbox/releasedocmaker/src/main/python/releasedocmaker.py


function print_and_run
{
  echo "${*}"
  # run the actual command
  "${@}"
}


## @description  Large display for the user console
## @audience     public
## @stability    stable
## @replaceable  no
## @param        string
## @return       large chunk of text
function big_console_header
{
  declare  text="$*"
  declare  spacing=$(( (75+${#text}) /2 ))

  printf "\n\n"
  echo "============================================================================"
  echo "============================================================================"
  printf "%*s\n"  ${spacing} "${text}"
  echo "============================================================================"
  echo "============================================================================"
  printf "\n\n"
}

function common_rdm
{
  declare project=$1
  declare v1=$2
  declare v2=$3
  declare title=${4}
  declare cap=${project^^}

  if [[ -z "${title}" ]]; then
    title=${project^}
  fi

  big_console_header "Apache ${title}"

  print_and_run \
	"${PYTHON}" "${RDM}" --project "${cap}" --outputdir "${cap}" \
          --projecttitle "Apache ${title}" \
          --version "${v1}" --version "${v2}" \
          --range --index --license --fileversions --dirversions
}


this="${BASH_SOURCE-$0}"
bin=$(cd -P -- "$(dirname -- "${this}")" >/dev/null && pwd -P)

#
# This is a good test for Yetus...
#

common_rdm yetus 0.9.0 1.0.0

common_rdm bigtop 1.3.0 2.0.0 BigTop

common_rdm falcon 0.11 1.0

common_rdm flink 1.6.0 2.0.0

common_rdm kudu 1.7.0 2.0.0

common_rdm impala "Impala 2.0.0" "Impala 3.0.0"

common_rdm knox 1.1 2

common_rdm mahout 0.13.0 2.0.0

common_rdm oozie 5 6

common_rdm orc 1.5.2 2.0.0

common_rdm parquet 1.10 2.0.0

common_rdm pig 0.17.0 1.0.0

common_rdm ranger 1 2

common_rdm sentry 2 3

common_rdm zookeeper 3.4 4.0.0

# Here are the problematic ones:

#common_rdm hbase 1.1.11 1.1.99 HBase
common_rdm hbase 1.2.8 1.2.99 HBase
common_rdm hbase 1.3.3 1.3.99 HBase
common_rdm hbase 1.4.2 2.0.0 HBase
common_rdm hbase 2.0.0 3.0.0 HBase

#common_rdm hive 1.1.2 1.4.0
common_rdm hive 2.1.2 3.0.0

common_rdm kafka 1.1.0 3.0.0

common_rdm spark 2.3.0 3.0.0

common_rdm tez 0.7.2 1.0.0

big_console_header Hadoop
# Hadoop is a mess.  There are now effectively 4 branches
# in active development, so this range is huge. :(
print_and_run \
	"${PYTHON}" "${RDM}" --project HADOOP --project HDFS --project YARN --project MAPREDUCE \
        --fileversions --dirversions \
        --projecttitle "Apache Hadoop" \
        --range --version 2.7.6 --version 2.7.9 \
        --index --license \
        --outputdir HADOOP

print_and_run \
        "${PYTHON}" "${RDM}" --project HADOOP --project HDFS --project YARN --project MAPREDUCE \
        --fileversions --dirversions \
        --projecttitle "Apache Hadoop" \
        --range --version 2.8.4 --version 2.8.9 \
        --index --license \
        --outputdir HADOOP

print_and_run \
	"${PYTHON}" "${RDM}" --project HADOOP --project HDFS --project YARN --project MAPREDUCE \
        --fileversions --dirversions \
        --projecttitle "Apache Hadoop" \
        --range --version 2.9.1 --version 2.9.9 \
        --index --license \
        --outputdir HADOOP

print_and_run \
        "${PYTHON}" "${RDM}" --project HADOOP --project HDFS --project YARN --project MAPREDUCE \
        --fileversions --dirversions \
        --projecttitle "Apache Hadoop" \
        --range --version 2.10.0 --version 2.10.9 \
        --index --license \
        --outputdir HADOOP

print_and_run \
        "${PYTHON}" "${RDM}" --project HADOOP --project HDFS --project YARN --project MAPREDUCE \
        --fileversions --dirversions \
        --projecttitle "Apache Hadoop" \
        --range --version 3.0.2 --version 4 \
        --index --license \
        --outputdir HADOOP


d=$(date -u "+%Y-%m-%d %H:%m")
git add -A
git commit -a -m "${d} UTC auto-commit"

