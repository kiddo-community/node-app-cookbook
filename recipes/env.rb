#
# Cookbook Name:: node_app
# Recipe:: env
#
# Setup environment variables
#
# Copyright 2015, Kiddo Labs
#
# All rights reserved - Do Not Redistribute
#

node[:node_app][:env].each do |env, v|
  magic_shell_environment env do
    value v
  end
end

global_npm_bin_path = '/usr/local/nodejs-binary/bin'
if !ENV['PATH'].include? global_npm_bin_path
  magic_shell_environment 'PATH' do
    value global_npm_bin_path + ':' + ENV['PATH']
  end
end
