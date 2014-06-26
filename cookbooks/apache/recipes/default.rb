#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# 1. Install apache
# OLD: `apt-get install httpd`

package "httpd" do
  action :install
end

# 2. Put the homepage in place
default_index_page = node["apache"]["indexfile"]

cookbook_file "/var/www/html/index.html" do
  source default_index_page
  mode "0644"
end


# 3. Start and enable the service

service "httpd" do
  action [ :enable, :start ]
end
