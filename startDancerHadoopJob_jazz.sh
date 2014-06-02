!/bin/bash

hadoop fs -rmr ./dancer_output

HADOOP_HOME=/usr/local/hadoop
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

HSTREAMING="$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/$JAR"
MAPPER=dancerMapper.rb
REDUCER=dancerReducer_jazz.rb
echo $HSTREAMING

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2014*/*' -output ./dancer_output/jazz2014 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2013*/*' -output ./dancer_output/jazz2013 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2012*/*' -output ./dancer_output/jazz2012 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2011*/*' -output ./dancer_output/jazz2011 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2010*/*' -output ./dancer_output/jazz2010 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2009*/*' -output ./dancer_output/jazz2009 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2008*/*' -output ./dancer_output/jazz2008 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2007*/*' -output ./dancer_output/jazz2007 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2006*/*' -output ./dancer_output/jazz2006 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/jazzdance/2005*/*' -output ./dancer_output/jazz2005 -jobconf "PATH=$PATH:/home/hduser/.rvm" 
