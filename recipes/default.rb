#
# Cookbook Name:: statsdaemon
# Recipe:: default
#

include_recipe "statsdaemon::#{node['statsdaemon']['flavor']}"
include_recipe 'statsdaemon::service'
