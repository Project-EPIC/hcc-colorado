CU Human Centered Computing Website
=====================================



## Built on Jekyll Bootstrap

This is the 


## Build Technologies
Ruby, Jekyll


##Finding the balance between static and dynamic webpages
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




## Bootstrap License
[MIT](http://opensource.org/licenses/MIT)
