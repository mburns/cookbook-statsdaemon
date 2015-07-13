require_relative 'spec_helper'

describe port(8125) do
  it { should be_listening }
end

describe service('statsdaemon') do
  it { should be_enabled }
end
