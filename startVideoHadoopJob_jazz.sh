#!/bin/bash

hadoop fs -rmr ./output_jazz/

HADOOP_HOME=/usr/local/hadoop
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

HSTREAMING="$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/$JAR"
MAPPER=jazzMapper.rb
REDUCER=jazzReducer.rb
echo $HSTREAMING

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2014*/*' -output ./output1/jazz2014 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2013*/*' -output output1/jazz2013 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2012*/*' -output output1/jazz2012 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2011*/*' -output output1/jazz2011 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2010*/*' -output output1/jazz2010 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2009*/*' -output output1/jazz2009 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2008*/*' -output output1/jazz2008 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2007*/*' -output output1/jazz2007 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2006*/*' -output output1/jazz2006 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2005*/*' -output output1/jazz2005 -jobconf "PATH=$PATH:/home/hduser/.rvm" 
