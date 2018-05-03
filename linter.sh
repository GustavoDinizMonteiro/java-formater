#!/bin/bash

find $1 -follow | grep "\.java" > files.txt

filename="files.txt"
while read -r line
do
    name="$line"
    java -jar ~/.m2/repository/com/google/googlejavaformat/google-java-format/1.5/google-java-format-1.5.jar -i -a $name
done < "$filename"

rm $filename