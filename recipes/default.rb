#
# Cookbook Name:: statsdaemon
# Recipe:: default
#
# Copyright 2014, Olivier Dolbeau
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy
# of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.
#

include_recipe 'golang'

include_recipe 'golang::packages'

golang_package 'github.com/bitly/statsdaemon' do
  action :install
end

command = <<-EOH
sh -x #{node['go']['gobin']}/statsdaemon \
-address="#{node['statsdaemon']['address']}" \
-flush-interval=#{node['statsdaemon']['flush_interval']} \
-graphite="#{node['statsdaemon']['graphite']}" \
-persist-count-keys=#{node['statsdaemon']['persist_count_keys']} \
-receive-counter="#{node['statsdaemon']['receive_counter']}" \
> output.out 2>&1 &
EOH

log command
log node['go']['gobin']
log node['go']['owner']
log node['go']['group']

bash 'run_statsdaemon' do
  action :run
  user node['go']['owner']
  group node['go']['group']
  cwd node['go']['gobin']
  code command
end
