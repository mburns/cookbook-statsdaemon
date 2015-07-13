require_relative 'spec_helper'

describe 'statsdaemon::service' do
  before(:each) do
    stub_command("/usr/local/go/bin/go version | grep \"go1.4 \"").and_return(true)
  end

  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'creates log file' do
    expect(chef_run).to create_file_if_missing('/var/log/statsdaemon.log').with(
      user:   'root',
      group:  'root'
    )
  end

  it 'creates a template with an explicit action' do
    expect(chef_run).to create_template('/etc/init.d/statsdaemon').with(
      user:   'root',
      group:  'root'
    )
  end

  it 'enables statsdaemon service' do
    expect(chef_run).to enable_service('statsdaemon')
  end
end
