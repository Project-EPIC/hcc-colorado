#!/bin/bash
mkdir testing
jekyll build
cp -r -v _site/* /www/hcc