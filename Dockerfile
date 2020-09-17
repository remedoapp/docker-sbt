# This Dockerfile has two required ARGs to determine which base image
# to use for the JDK and which sbt version to install.
from amazonlinux:latest

ARG SCALA_VERSION=2.11.8
ARG SBT_VERSION=0.13.8

# install java
RUN yum install -y java-1.8.0-openjdk-devel

# install scala
RUN yum install -y https://downloads.lightbend.com/scala/2.11.6/scala-2.11.6.rpm

# install sbt
RUN yum install -y https://dl.bintray.com/sbt/rpm/sbt-0.13.8.rpm

# install node
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash -
RUN yum install -y nodejs

# install unzip
RUN yum install -y unzip

# install envsubst
RUN yum install -y gettext

# install newman
RUN npm -g install newman

# install maven
RUN yum install -y maven