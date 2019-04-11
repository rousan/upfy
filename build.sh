#!/usr/bin/env sh

rm -rf ./dist
mkdir ./dist
cd ./scripts
zip ../dist/scripts.zip *
