#!/bin/bash

## find PlexConnect path
cd /Applications/plexconnect/update/OSX/

## copy webserver file
cp httpd.conf /etc/apache2

## copy gradient files
cp -R GradientMovies /library/webserver/documents
cp -R GradientTV /library/webserver/documents


## fix permissions
chmod +x /Applications/plexconnect/update/OSX/websharing.bash
chmod -R 0777 /library/webserver/documents/gradienttv/*.*
chmod -R 0777 /library/webserver/documents/gradientmovies/*.*



