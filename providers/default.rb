def whyrun_supported?
  true
end

def flavor
  new_resource.flavor || node['statsdaemon']['flavor'] || 'bitly'
end

action :install do
  include_recipe 'golang'
  include_recipe 'golang::packages'

  # install package
  golang_package "github.com/#{flavor}/statsdaemon" do
    action :install
  end

  # log file
  file new_resource.log do
    owner node['go']['owner'] || 'root'
    group node['go']['group'] || 'root'
    mode '0644'
    action :create_if_missing
  end

  # implmentation-specific rules
  case flavor
  when 'vimeo'
    # default statsdaemon settings used by Vimeo binary
    template '/etc/statsdaemon.ini' do
      mode 0600
      owner 'root'
      group 'root'
      variables(
        listen_addr: new_resource.listen_addr,
        graphite_addr: new_resource.graphite_addr,
        admin_addr: new_resource.admin_addr,
        flush_interval: new_resource.flush_interval,
        prefix_rates: new_resource.prefix_rates,
        prefix_timers: new_resource.prefix_timers,
        prefix_gauges: new_resource.prefix_gauges,
        percentile_thresholds: new_resource.percentile_thresholds,
        max_timers_per_s: new_resource.max_timers_per_s
      )
    end
  end

  # init script
  template '/etc/init.d/statsdaemon' do
    mode 0755
    owner 'root'
    group 'root'
    notifies :reload, 'service[statsdaemon]', :delayed
    variables(
      listen_addr: new_resource.listen_addr,
      graphite_addr: new_resource.graphite_addr,
      flust_interval: new_resource.flush_interval,
      persist_count_keys: new_resource.persist_count_keys,
      receive_counter: new_resource.receive_counter,
      log: new_resource.log
    )
  end

  service 'statsdaemon' do
    action [:enable, :start]
    supports start: true, stop: true, restart: true
  end

  new_resource.updated_by_last_action(true)
end

action :uninstall do
  golang_package "github.com/#{flavor}/statsdaemon" do
    action :uninstall
  end

  new_resource.updated_by_last_action(true)
end
