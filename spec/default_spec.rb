require 'spec_helper'

describe 'simple-kibana::default' do
  cached(:chef_run) { ChefSpec::ServerRunner.new.converge described_recipe }

  it 'creates user for kibana' do
    expect(chef_run).to create_user('kibana')
  end

  it 'creates group for kibana' do
    expect(chef_run).to create_group('kibana')
  end

  it 'arks kibana archive' do
    expect(chef_run).to install_ark('kibana')
  end

  it 'create kibana config file' do
    expect(chef_run).to render_file('/opt/kibana/config/kibana.yml')
  end

  it 'starts runit service kibana' do
    expect(chef_run).to enable_runit_service('kibana')
    expect(chef_run).to start_runit_service('kibana')
  end

  it 'runit service subscribes on file and ark' do
    svc = chef_run.runit_service('kibana')
    expect(svc).to subscribe_to('file[/opt/kibana/config/kibana.yml]').delayed
    expect(svc).to subscribe_to('ark[kibana]').delayed
  end
end
