#!/bin/bash

#hadoop fs -rmr ./output_poppin/

HADOOP_HOME=/usr/local/hadoop
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

HSTREAMING="$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/$JAR"
MAPPER=poppinMapper.rb
REDUCER=poppinReducer.rb
echo $HSTREAMING

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/poppindance/2014*/*' -output ./output1/poppin2014 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/poppindance/2013*/*' -output output1/poppin2013 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/poppindance/2012*/*' -output output1/poppin2012 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/poppindance/2011*/*' -output output1/poppin2011 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/poppindance/2010*/*' -output output1/poppin2010 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/poppindance/2009*/*' -output output1/poppin2009 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/poppindance/2008*/*' -output output1/poppin2008 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/poppindance/2007*/*' -output output1/poppin2007 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/poppindance/2006*/*' -output output1/poppin2006 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/poppindance/2005*/*' -output output1/poppin2005 -jobconf "PATH=$PATH:/home/hduser/.rvm" 
