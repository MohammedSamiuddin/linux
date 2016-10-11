#
# Cookbook Name:: learn
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd"

service "httpd" do
	action [:enable, :start]
end

template "/var/www/html/index.html" do
	source "index.html.erb"
end

include_recipe "php::default"
include_recipe "security::default"
