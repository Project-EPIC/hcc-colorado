_Master branch (Jekyll) is deprecated.  Please see the gh-pages branch._

--- 

CU Human Centered Computing Website
=====================================
_Built on Jekyll Bootstrap, this site finds a balance between a static and dynamic website._

This site pulls data from Flickr, Google Scholar, and Google Drive.

The database, therefore, is a series of google spreadsheet, offering a familiar UI for any user to update.

The majority of the images are hosted on flickr and organized by tags.  Values in the description of the image inside of square brackets ```[]``` are merged with existing flickr tags to organize images.

The site is built and maintained using the [Static-Bliss](http://github.com/jenningsanderson/Static-Bliss) gem. This gem requires ```_config.yml``` to be properly defined (See [Configuration](#configuration))


##Publishing
The site should function when hosted on Github, provided the YAML files are up-to-date thorugh the bliss update functions.

The site is designed to be published to an amazon s3 bucket:
[HCC-Colorado on S3](http://hcc.colorado.edu.s3-website-us-east-1.amazonaws.com/)

If you would like ability to publish the site, just email Jennings and he'll provide access to the S3 bucket.

The gh-pages branch here is for development and production is then pushed out to the s3 bucket: http://hcc.colorado.edu.s3-website-us-east-1.amazonaws.com/ (which is where hcc.colorado.edu points).

## Configuration

### _config.yml

````
sheets :
  courses :
    key     : 0AhQ6tqeOTfwBdDdyY1U4UlBnTk5rc1BIRDhnckhoQ1E
    object  : Course
    types   : ['Undergraduate', 'Graduate']

  people  :
    key     : 0AhQ6tqeOTfwBdFhrTmxXM0oxYkx2Vl9ucXJpd0hQRHc
    object  : Person
    types   : ['Faculty', 'Students', 'Alumni', 'Researchers']

flickr:
  hcc_photos :
    set : '72157646414725101'

data_directory : './_data'

credentials: _secret_config.yml
````

### _secret_config.yml

````

#Amazon S3 hcc_colorado account credentials
s3_id: *************
s3_secret: *************
production_bucket: hcc.colorado.edu

flickr_api_key : ***************
````

## Bootstrap License
[MIT](http://opensource.org/licenses/MIT)
