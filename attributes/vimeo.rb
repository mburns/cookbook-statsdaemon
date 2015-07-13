#
# Cookbook Name:: statsdaemon
# Attributes:: vimeo
#

# init.d script configuration
default['statsdaemon']['vimeo']['config_file'] = '/etc/statsdaemon.ini'
default['statsdaemon']['vimeo']['cpuprofile']  = ''
default['statsdaemon']['vimeo']['memprofile']  = ''
default['statsdaemon']['vimeo']['debug']       = false
default['statsdaemon']['vimeo']['admin_addr']  = ':8126'

# statsdaemon.ini configuration
default['statsdaemon']['vimeo']['prefix_rates']          = 'stats.'
default['statsdaemon']['vimeo']['prefix_timers']         = 'stats.timers'
default['statsdaemon']['vimeo']['prefix_gauges']         = 'stats.gauges'
default['statsdaemon']['vimeo']['percentile_thresholds'] = '90,75'
default['statsdaemon']['vimeo']['max_timers_per_s']      = 1000
