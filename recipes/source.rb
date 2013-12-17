#
# Cookbook Name:: simulationcraft
# Author:: Josiah Kiehl <(josiah@skirmisher.net)>
#
# Copyright 2013, Skirmisher Software
#
# License:: MIT
#

include_recipe "subversion::client"

node.normal[:simulationcraft][:source][:dir] = ::File.join node[:simulationcraft][:home], "src"

directory node[:simulationcraft][:source][:dir] do
  recursive true
end

subversion "simulationcraft" do
  repository node[:simulationcraft][:source][:repository]
  revision "HEAD"
  destination node[:simulationcraft][:source][:dir]
  action :sync
  notifies :run, "execute[make]"
end

execute "make" do
  cwd ::File.join(node[:simulationcraft][:source][:dir], "engine")
  action :nothing
end

link node[:simulationcraft][:bin_path] do
  to ::File.join(node[:simulationcraft][:source][:dir], "engine", "simc")
end
