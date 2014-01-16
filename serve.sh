rm -r _site
echo "old _site folder removed"
git pull
echo "Calling build"
jekyll build
echo "Calling rsync"
rsync -rv _site/ ../../SubDomains/dev/
