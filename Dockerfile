FROM centos:centos7
MAINTAINER zmh "zhaomenghui93@163.com"

#try delete them at last
RUN mkdir /opt/java8
RUN mkdir /opt/tomcat9
RUN mkdir /opt/keys
RUN mkdir /home/data

ADD java8 /opt/java8/
ADD tomcat9 /opt/tomcat9/
ADD keys /opt/keys/

ENV JAVA_HOME /opt/java8
ENV CLASSPATH .:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $PATH:$JAVA_HOME/bin
ENV CATALINA_HOME /opt/tomcat9
ENV CATALINA_BASE /opt/tomcat9
ENV CATALINA_PID /opt/tomcat9 .pid
ENV CATALINA_SH /opt/tomcat9/bin/catalina.sh

VOLUME /home/data

EXPOSE 8442

CMD ["/opt/tomcat9/bin/catalina.sh","run"]

