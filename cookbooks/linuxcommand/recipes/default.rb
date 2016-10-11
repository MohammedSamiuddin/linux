#
# Cookbook Name:: linuxcommand
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "rmdir /etc/httpd/conf.d/test" do
	only_if do
	        File.exist?("/etc/httpd/conf.d/test")
       end
end

#notifies :restart, "service[httpd]"
