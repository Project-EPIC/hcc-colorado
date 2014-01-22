#!/bin/bash

git pull

echo "Building the site now"
#Build the site with Jekyll to the proper directory...
jekyll build --destination /www/hcc