FROM openjdk:11
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.52/bin/apache-tomcat-9.0.52.tar.gz
RUN mkdir /opt/tomcat
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.52/* /opt/tomcat/.
RUN rm -R /opt/tomcat/webapps/*
COPY build/libs/springhello.war /opt/tomcat/webapps/ROOT.war
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

