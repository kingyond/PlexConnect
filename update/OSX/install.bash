#!/bin/bash

## save path to installer files
cd "$( cd "$( dirname "$0" )" && pwd )"
InstallerPath=${PWD}

## find PlexConnect main path
cd ../..
PlexConnectPath=${PWD}

## go back to InstallerPath
cd update/OSX
DefaultPath=${PWD}

#current user
whoami=${USER}

## copy webserver file
cp httpd.conf /etc/apache2

## copy gradient files
cp -R Gradientv /library/webserver/documents
cp -R Gradientmovies /library/webserver/documents


## navigate to update folder
cd update/osx

## fix permissions
chmod +x /usr/bin/websharing.bash
chmod -R 0777 /library/webserver/documents/gradienttv/*.*
chmod -R 0777 /library/webserver/documents/gradientmovies/*.*







