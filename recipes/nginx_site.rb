#
# Cookbook Name:: node_app
# Recipe:: default
#
# Create and enable nginx site
#
# Copyright 2015, Kiddo Labs
#
# All rights reserved - Do Not Redistribute
#

template "#{node[:nginx][:dir]}/sites-available/#{node[:node_app][:name]}.conf" do
  source "nginx.conf.erb"
  mode "0644"
end

nginx_site "#{node[:node_app][:name]}.conf"
