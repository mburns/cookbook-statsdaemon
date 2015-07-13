require_relative 'spec_helper'

describe file('/var/log/statsdaemon.log') do
  it { should be_file }
  it { should be_mode '644' }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/etc/init.d/statsdaemon') do
  it { should be_file }
  it { should be_mode '755' }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its(:content) { should match(/-address=":8125"/) }
end
