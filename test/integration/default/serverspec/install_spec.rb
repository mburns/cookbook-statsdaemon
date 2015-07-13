require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe port(8125) do
  it { should be_listening }
end

describe port(8126) do
  it { should be_listening }
end

describe file('/etc/statsdaemon.ini') do
  it { should be_file }
  it { should be_mode 600 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
