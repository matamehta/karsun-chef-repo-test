#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# install package PRODUCTION
package 'httpd' do
  action :install
end

# start service
service 'httpd' do
  action [ :enable, :start ]
end

# set index file
cookbook_file "/var/www/html/index2.html" do
  source "index2.html"
  mode "0664"
end
