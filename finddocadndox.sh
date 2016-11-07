#!/bin/bash
read -p "要查找的关键字: " key
find . -name "*.doc" | 
while read i; do catdoc "$i" | 
grep --color=auto -iH --label="$i" "$key"; done
find . -name "*.docx" | 
while read i; do docx2txt < "$i" | 
grep --color=auto -iH --label="$i" "$key"; done
