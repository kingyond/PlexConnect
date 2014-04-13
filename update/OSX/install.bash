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

## copy files to /usr/bin for system wide access
cp createcert.bash /usr/bin
cp websharing.bash /usr/bin

## copy webserver file
cp httpd.conf /etc/apache2

## copy gradient files
cp -R Gradientv /library/webserver/documents
cp -R Gradientmovies /library/webserver/documents



## replace __INSTALLERPATH__ in default createcert.bash
## save directly to the /usr/bin folder
sed -e "s/__INSTALLERPATH__/${InstallerPath//\//\\/}/" "${InstallerPath}/createcert.bash" > /usr/bin/createcert.bash

## navigate to update folder
cd update/osx

## fix permissions
chmod +x /applications/plexconnect/update/osx/plexconnect.bash
chmod +x /usr/bin/createcert.bash
chmod +x /usr/bin/websharing.bash
chmod -R 0777 /library/webserver/documents/gradienttv/ *.*
chmod -R 0777 /library/webserver/documents/gradientmovies/ *.*







