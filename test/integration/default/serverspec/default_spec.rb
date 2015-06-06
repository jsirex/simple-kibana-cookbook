require 'serverspec'

set :backend, :exec

describe command('/bin/true') do
  its(:exit_status) { should eq 0 }
end

describe file('/opt/kibana') do
  it { should be_link }
end
