#!/bin/bash

hadoop fs -rmr ./output1/

HADOOP_HOME=/usr/local/hadoop
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

HSTREAMING="$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/$JAR"
MAPPER=basicMapper.rb
REDUCER=basicReducer.rb
echo $HSTREAMING

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2014*/*' -output ./output1/hiphop2014 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2013*/*' -output output1/hiphop2013 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2012*/*' -output output1/hiphop2012 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2011*/*' -output output1/hiphop2011 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2010*/*' -output output1/hiphop2010 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2009*/*' -output output1/hiphop2009 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2008*/*' -output output1/hiphop2008 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2007*/*' -output output1/hiphop2007 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2006*/*' -output output1/hiphop2006 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2005*/*' -output output1/hiphop2005 -jobconf "PATH=$PATH:/home/hduser/.rvm" 
