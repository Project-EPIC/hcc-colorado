CU Human Centered Computing Website
=====================================
_Built on Jekyll Bootstrap, this site finds a balance between a static and dynamic website._

This site pulls data from flickr, Google Scholar, and Google Drive.

The database, therefore, is a google spreadsheet, offering a familiar UI for any user to update.

The majority of the images are hosted on flickr and organized by tags.  Values in the description of the image inside of square brackets ([]) are merged with existing flickr tags to organize images.

The site is built using the [Static-Bliss](http://github.com/jenningsanderson/Static-Bliss) gem.

Options for this particular site are as folllows:

````
	bliss publish
	bliss flickr
	bliss flickr hcc_photos
	bliss update courses [all]
	bliss update courses Undergraduate
	bliss update courses Graduate
	bliss update people [all]
	bliss update people Faculty
	bliss update people Students
	bliss update people Alumni
	bliss update people Researchers
	bliss update all
`````

##Publishing
The site should function when hosted on Github, provided the YAML files are up-to-date thorugh the bliss update functions.

The site is designed to be published to an amazon s3 bucket:
[HCC-Colorado on S3](http://hcc.colorado.edu.s3-website-us-east-1.amazonaws.com/)




## Bootstrap License
[MIT](http://opensource.org/licenses/MIT)
