# frozen_string_literal: true

describe command('/bin/true') do
  its('exit_status') { should eq 0 }
end

describe file('/opt/kibana') do
  it { should be_symlink }
end

describe port(5601) do
  it { should be_listening }
end
