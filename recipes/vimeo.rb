#
# Cookbook Name:: statsdaemon
# Recipe:: vimeo
#

include_recipe 'golang'
include_recipe 'golang::packages'

golang_package 'github.com/vimeo/statsdaemon' do
  action :install
end

template '/etc/statsdaemon.ini' do
  source 'statsdaemon.ini.erb'
  mode 0600
  owner 'root'
  group 'root'
end
