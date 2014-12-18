FROM ryanshi/tomcat
MAINTAINER Ryan "shiymail@gmail.com"
RUN apt-get -qq update
#COPY ./apache-maven-3.2.3-bin.tar.gz /usr/local/apache-maven.tar.gz
RUN wget -O /usr/local/apache-maven.tar.gz http://apache.stu.edu.tw/maven/maven-3/3.2.3/binaries/apache-maven-3.2.3-bin.tar.gz
#COPY ./hudson-3.2.1.war /www/webapps/hudson.war
RUN wget -O /www/webapps/hudson.war http://eclipse.org/downloads/download.php?file=/hudson/war/hudson-3.2.1.war
RUN (   cd /usr/local && \
	tar zxf apache-maven.tar.gz && \
	mv /usr/local/apache-maven-3.2.3 /usr/local/maven && \
	rm /usr/local/apache-maven.tar.gz)
VOLUME ["/data/hudson"]
ENV HUDSON_HOME /data/hudson
EXPOSE 8080
CMD ["/bin/sh", "-e", "/usr/local/bin/run"]
