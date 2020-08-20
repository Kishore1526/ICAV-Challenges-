FROM ubuntu 
MAINTAINER PNKishore

RUN apt-get update && apt-get install -y git openjdk-8-jdk
ADD http://mirrors.jenkins.io/war-stable/lastest/jenkins.war
ENTRYPOINT ["java","-jar","jenkins.war"]

