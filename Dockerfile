# Pull base image 
From tomcat:8-jre8 

# Maintainer
MAINTAINER "p.debasish046@gmail.com" 
ADD */target/webapp.war /usr/local/tomcat/webapps
