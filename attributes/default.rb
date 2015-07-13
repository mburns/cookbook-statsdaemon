#
# Cookbook Name:: statsdaemon
# Attributes:: default
#

default['statsdaemon']['log'] = '/var/log/statsdaemon.log'
default['statsdaemon']['listen_addr'] = ':8125'
default['statsdaemon']['flush_interval'] = 10
default['statsdaemon']['graphite_addr'] = '127.0.0.1:2003'
default['statsdaemon']['persist_count_keys'] = 60
default['statsdaemon']['receive_counter'] = ''
default['statsdaemon']['flavor'] = 'bitly' # bitly, vimeo
