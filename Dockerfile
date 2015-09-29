FROM centos:latest

RUN yum update  -y

RUN yum install -y wget which

# INSTALL JAVA
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm
RUN rpm -ivh jdk-8u45-linux-x64.rpm
RUN rm -f jdk-8u45-linux-x64.rpm

ENV JAVA_HOME /usr/java/default
