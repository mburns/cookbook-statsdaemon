actions :add, :create, :install, :remove, :delete, :uninstall
default_action :install

attribute :name, kind_of: String, name_attribute: true

attribute :listen_addr, kind_of: String, default: ':8125'
attribute :admin_addr, kind_of: String, default: ':8126'
attribute :graphite_addr, kind_of: String, default: '127.0.0.1:2003'

attribute :log, kind_of: String, default: '/var/log/statsdaemon.log'
attribute :config, kind_of: String, default: '/etc/statsdaemon.ini'

attribute :flush_interval, kind_of: String, default: '10'
attribute :persist_count_keys, kind_of: String, default: '60'
attribute :receive_counter, kind_of: String, default: ''
attribute :flavor, kind_of: String, default: 'bitly'

# init.d script configuration
attribute :cpuprofile, kind_of: String, default: ''
attribute :memprofile, kind_of: String, default: ''
attribute :debug, kind_of: [TrueClass, FalseClass], default: false

# statsdaemon.ini configuration
attribute :prefix_rates, kind_of: String, default: 'stats.'
attribute :prefix_timers, kind_of: String, default: 'stats.timers'
attribute :prefix_gauges, kind_of: String, default: 'stats.gauges'
attribute :percentile_thresholds, kind_of: String, default: '90,75'
attribute :max_timers_per_s, kind_of: Integer, default: 1000
