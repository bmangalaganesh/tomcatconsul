FROM tomcat:8.0
MAINTAINER PoC Team

#Copy the  wrapper file and use that to start Tomcat  
COPY catalina-wrapper.sh /usr/local/tomcat/bin/catalina-wrapper.sh

#Change permissions so that execute permissions are available in catalina-wrapper.sh
RUN chmod 755 /usr/local/tomcat/bin/catalina-wrapper.sh 



CMD ["/usr/local/tomcat/bin/catalina-wrapper.sh", "run"]
