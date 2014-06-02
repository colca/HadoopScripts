!/bin/bash

hadoop fs -rmr ./dancer_output

HADOOP_HOME=/usr/local/hadoop
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

HSTREAMING="$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/$JAR"
MAPPER=dancerMapper.rb
REDUCER=dancerReducer.rb
echo $HSTREAMING

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2014*/*' -output ./dancer_output/hiphop2014 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2013*/*' -output ./dancer_output/hiphop2013 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2012*/*' -output ./dancer_output/hiphop2012 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2011*/*' -output ./dancer_output/hiphop2011 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2010*/*' -output ./dancer_output/hiphop2010 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2009*/*' -output ./dancer_output/hiphop2009 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2008*/*' -output ./dancer_output/hiphop2008 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2007*/*' -output ./dancer_output/hiphop2007 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2006*/*' -output ./dancer_output/hiphop2006 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper $MAPPER -file $MAPPER -reducer $REDUCER -file $REDUCER -input './input/hiphopdance/2005*/*' -output ./dancer_output/hiphop2005 -jobconf "PATH=$PATH:/home/hduser/.rvm" 
