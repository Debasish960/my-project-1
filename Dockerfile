# Pull base image 
From tomcat:8-jre8 

# Maintainer
MAINTAINER "debasish@gmail.com" 
ADD */target/webapp.war /usr/local/tomcat/webapps
