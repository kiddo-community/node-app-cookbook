#
# Cookbook Name:: node_app
# Recipe:: pm2_start
#
# Run pm2 processes
#
# Copyright 2015, Kiddo Labs
#
# All rights reserved - Do Not Redistribute
#

if node[:node_app][:pm2_start]
  pm2_application node[:node_app][:name] do
    script node[:node_app][:pm2_process_file]
    cwd node[:node_app][:path]
    action [:start_or_restart]
  end
end
