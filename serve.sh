rm -r _site
git pull
jekyll build
rsync -rv _site/ ../../SubDomains/dev/
