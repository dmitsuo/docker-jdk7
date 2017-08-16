# Based on JBoss official docker images: https://github.com/jboss-dockerfiles 
FROM davimss/centos-base
MAINTAINER Davi Shibayama <davimss@gmail.com>

USER root

RUN yum update -y && yum -y install java-1.7.0-openjdk-devel && yum clean all

# Specify the user which should be used to execute all commands below
USER caos

ENV JAVA_HOME /usr/lib/jvm/java
# ENV JAVA_OPTS="$JAVA_OPTS -XX:MaxPermSize=512m -Duser.language=pt -Duser.country=BR -Duser.timezone=America/Belem -Djava.net.preferIPv4Stack=true"