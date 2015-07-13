require_relative 'spec_helper'

# daemon port
describe port(8125) do
  it { should be_listening }
end

# admin port
describe port(8126) do
  it { should be_listening }
end

describe file('/etc/statsdaemon.ini') do
  it { should be_file }
  it { should be_mode 600 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its(:content) { should match(/^listen_addr = ":8125"/) }
end
