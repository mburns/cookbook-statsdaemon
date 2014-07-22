require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe port(8125) do
  it { should be_listening }
end
