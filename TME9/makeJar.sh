mkdir bin
find src -name "*.java" > "sources.txt"
l1="/usr/local/hadoop/share/hadoop/common/hadoop-common-2.5.0.jar"
l2="/usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-core-2.5.0.jar"
l3="/usr/local/hadoop/share/hadoop/common/lib/commons-cli-1.2.jar"
l4="/usr/local/hadoop/share/hadoop/common/lib/hadoop-annotations-2.5.0.jar"
l5="/usr/local/spark-1.1.0-bin-hadoop2.4/lib/spark-assembly-1.1.0-hadoop2.4.0.jar"

javac  -classpath $l1":"$l2":"$l3":"$l4":"$l5":lib/scala-library.jar:bin" -d bin @sources.txt
echo Main-Class: $1 > MANIFEST.MF
echo Class-Path: ./bin/ >> MANIFEST.MF		
jar cvmf MANIFEST.MF Main.jar -C bin .
