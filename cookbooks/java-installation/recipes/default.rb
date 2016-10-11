#
# Cookbook Name:: java-installation
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
script "install_JAVA" do
interpreter "bash"
user "root"
cwd "/tmp"
code <<-EOH
#!/bin/bash
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u73-b02/jdk-8u73-linux-x64.rpm"
  
yum -y localinstall jdk-8u73-linux-x64.rpm
  
java -version

EOH
end
