#
# Cookbook Name:: statsdaemon
# Recipe:: service
#

include_recipe 'golang'

# log file
file node['statsdaemon']['log'] do
  owner node['go']['owner']
  group node['go']['group']
  mode '0644'
  action :create_if_missing
end

template '/etc/init.d/statsdaemon' do
  mode 0755
  owner 'root'
  group 'root'
  notifies :reload, 'service[statsdaemon]', :delayed
end

service 'statsdaemon' do
  action [:enable, :start]
  supports start: true, stop: true, restart: true
end
