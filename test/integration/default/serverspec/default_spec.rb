require 'serverspec'

set :backend, :exec

describe command('/bin/true') do
  its(:exit_status) { should eq 0 }
end
