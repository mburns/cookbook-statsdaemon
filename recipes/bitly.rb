#
# Cookbook Name:: statsdaemon
# Recipe:: bitly
#

include_recipe 'golang'
include_recipe 'golang::packages'

golang_package 'github.com/bitly/statsdaemon' do
  action :install
end
