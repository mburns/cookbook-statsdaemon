#
# Cookbook Name:: statsdaemon
# Recipe:: vimeo
#

include_recipe 'golang'
include_recipe 'golang::packages'

golang_package 'github.com/vimeo/statsdaemon' do
  action :install
end

# ensure vimeo-related attributes are set correctly
node.default['statsdaemon']['flavor'] = 'vimeo'
node.default['statsdaemon']['flush_interval'] = 60

template '/etc/statsdaemon.ini' do
  mode 0600
  owner 'root'
  group 'root'
end

include_recipe 'statsdaemon::service'
