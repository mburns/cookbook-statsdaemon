require_relative 'spec_helper'

describe 'statsdaemon::bitly' do
  before(:each) do
    stub_command("/usr/local/go/bin/go version | grep \"go1.4 \"").and_return(true)
  end

  let(:chef_run) { ChefSpec::SoloRunner.new(step_into: ['golang']).converge(described_recipe) }

  %w(
    golang
    golang::packages
  ).each do |cb|
    it "includes recipe: #{cb}" do
      expect(chef_run).to include_recipe(cb)
    end
  end

  it 'install bitly statsdaemon' do
    expect(chef_run).to install_golang_package('github.com/bitly/statsdaemon')
  end
end
