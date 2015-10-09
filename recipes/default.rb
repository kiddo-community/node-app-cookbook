#
# Cookbook Name:: node_app
# Recipe:: default
#
# Copyright 2015, Kiddo Labs
#
# All rights reserved - Do Not Redistribute
#

# Setting folder permissions
directory node[:node_app][:path] do
  owner node[:node_app][:user]
  group node[:node_app][:user]
  mode "0755"
  recursive true
end

%w(env nginx_site pm2_start).each do |recipe|
  include_recipe "node_app::#{recipe}"
end
