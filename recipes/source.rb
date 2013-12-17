#
# Cookbook Name:: simulationcraft
# Author:: Josiah Kiehl <(josiah@skirmisher.net)>
#
# Copyright 2013, Skirmisher Software
#
# License:: MIT
#

include_recipe "subversion::client"

directory source_dir

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
