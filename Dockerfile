#Name of container: oscar19   

# Pull base image
FROM ubuntu:18.04   

#Install latest patches
RUN apt-get update && apt-get install -y \
    && apt-get install -y wget 

#Obtain the package
https://sourceforge.net/projects/oscarmcmaster/files/Oscar%20Debian%2BUbuntu%20deb%20Package/oscar_emr19-68~2239.deb -O oscar19.deb

#Install it
RUN dpkg -i oscar19.deb

#Install VuFind's dependecies
RUN apt-get install -y -f
