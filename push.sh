#!/bin/bash

echo "i  Minify cssaudit.css..."
npm run minify-css
cp -f src/cssaudit.css.map cssaudit.css.map && sleep 1
echo "i  Push updates to GIT..."
git add . && sleep 1
echo "»  Apa yang diubah kali ini?"
read -r GIT_COMMENT && sleep 1
git commit -am "${GIT_COMMENT}" && sleep 1
git push -u origin master && sleep 1
