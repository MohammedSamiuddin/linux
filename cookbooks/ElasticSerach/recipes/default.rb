#
# Cookbook Name:: ElasticSerach
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
script "install_ElasticSearch" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
  wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.3.noarch.rpm
  rpm -ivh elasticsearch-1.7.3.noarch.rpm
 # service elasticsearch enable
  #systemctl enable elasticsearch.service
  EOH
end

service "elasticsearch" do
	action [:enable, :start]
end
