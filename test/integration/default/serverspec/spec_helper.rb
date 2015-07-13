require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

# Set backend type
set :backend, :exec
