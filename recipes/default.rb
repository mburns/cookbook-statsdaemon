include_recipe 'golang'
include_recipe 'golang::packages'

golang_package 'github.com/bitly/statsdaemon' do
  action :install
end

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

service 'statsdaemon' do
  action [:enable, :start]
  supports start: true, stop: true, restart: true
end
