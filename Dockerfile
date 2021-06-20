# Pull base image 
From tomcat

# Maintainer
MAINTAINER "p.debasish046@gmail.com" 
ADD */target/webapp.war /usr/local/tomcat/webapps
