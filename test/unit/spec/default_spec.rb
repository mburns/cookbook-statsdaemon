require_relative 'spec_helper'

describe 'statsdaemon::default' do
  before(:each) do
    # stub_command("/usr/local/go/bin/go version | grep \"go1.4 \"").and_return(true)
  end

  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }
end
