#!/bin/bash

find $1 -follow | grep "\.java" > files.txt

filename="files.txt"
while read -r line
do
    name="$line"
    java -jar google-java-format-1.5-all-deps.jar -i -a $name
done < "$filename"

rm $filename