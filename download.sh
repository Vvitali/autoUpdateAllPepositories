#!/bin/bash
input="./list.txt"
while IFS= read -r line
do
  git clone "$line" &
done < "$input"