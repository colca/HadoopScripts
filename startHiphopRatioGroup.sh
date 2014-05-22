#!/bin/bash

HADOOP_HOME=/usr/local/hadoop
HCAT="$HADOOP_HOME/bin/hadoop fs -cat"
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

mkdir hiphopHeuristic

for year in {2005..2014}
do 
  echo "$year"
  $HCAT ./hiphopH$year/part-00000 | ./groupHeuristic.rb
  mv groupedH.tsv ./hiphopHeuristic/groupedH$year.tsv
done

