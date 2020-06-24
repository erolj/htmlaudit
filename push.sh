#!/bin/bash

echo "» Update cssaudit.css..."
cp -f src/cssaudit.css cssaudit.css && sleep 1
echo "» Push updates to GIT..."
git add . && sleep 1
echo "Apa yang diubah kali ini?"
read -r GIT_COMMENT && sleep 1
git commit -am "${GIT_COMMENT}" && sleep 1
git push -u origin master && sleep 1
