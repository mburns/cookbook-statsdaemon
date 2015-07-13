#
# Cookbook Name:: statsdaemon
# Recipe:: default
#

file '/var/log/statsdaemon.log' do
  owner node['go']['owner']
  group node['go']['group']
  mode '0644'
  action :create_if_missing
end

template '/etc/init.d/statsdaemon' do
  source 'statsdaemon_init.erb'
  mode 0755
  owner 'root'
  group 'root'
  notifies :reload, 'service[statsdaemon]', :delayed
end

include_recipe "statsdaemon::#{node['statsdaemon']['flavor']}"

service 'statsdaemon' do
  action [:enable, :start]
  supports start: true, stop: true, restart: true
end
