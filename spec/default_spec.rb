require 'spec_helper'

describe 'simple-kibana::default' do
  cached(:chef_run) { ChefSpec::ServerRunner.new.converge described_recipe }

  it 'creates user for kibana' do
    expect(chef_run).to create_user('kibana')
  end
  
  it 'creates group for kibana' do
    expect(chef_run).to create_group('kibana')
  end
end
