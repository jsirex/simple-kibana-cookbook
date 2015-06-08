require 'spec_helper'

describe 'simple-kibana-test::default' do
  cached(:chef_run) { ChefSpec::ServerRunner.new.converge described_recipe }


  it 'expect calculated version right' do
    node = chef_run.node
    Chef::Log.warn(node['kibana']['calculated_version'])
  end
end
