find src -name "*.java" > "sources.txt"
javac -classpath "/usr/local/hadoop/share/hadoop/common/hadoop-common-2.5.0.jar:/usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-core-2.5.0.jar:/usr/local/hadoop/share/hadoop/common/lib/commons-cli-1.2.jar:/usr/local/hadoop/share/hadoop/common/lib/hadoop-annotations-2.5.0.jar:bin/*" -d bin @sources.txt

echo Main-Class: $1 > MANIFEST.MF
echo Class-Path: ./bin/ >> MANIFEST.MF
jar cvmf MANIFEST.MF Main.jar -C bin .
