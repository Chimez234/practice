#!/bin/bash
# TOMCAT.SH
# Steps for Installing tomcat9 on rhel7&8
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
# https://github.com/LandmakTechnology/package-management/tree/main/Tomcat-installation
#Author Engr. Kingsley
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
sudo hostnamectl set-hostname tomcat
cd /opt
sudo yum install git wget -y
sudo yum install java-1.8.0-openjdk-devel -y
# install wget unzip packages.
sudo yum install wget unzip -y
sudo wget  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.76/bin/apache-tomcat-9.0.76.zip
sudo unzip apache-tomcat-9.0.76.zip
sudo rm -rf apache-tomcat-9.0.76.zip
### rename tomcat for good naming convention
sudo mv apache-tomcat-9.0.76 tomcat9
### assign executable permissions to the tomcat home directory
sudo chmod 777 -R /opt/tomcat9
sudo chown ec2-user -R /opt/tomcat9
### start tomcat
sh /opt/tomcat9/bin/startup.sh
# create a soft link to start and stop tomcat
# This will enable us to manage tomcat as a service
sudo ln -s /opt/tomcat9/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat9/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat
sudo su - ec2-user
echo "end on tomcat installation by engr. Kingsley"

pat4kc---->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

