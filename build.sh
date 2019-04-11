#!/usr/bin/env bash

rm -rf ./dist
mkdir ./dist
cd ./scripts
zip ../dist/scripts.zip *
