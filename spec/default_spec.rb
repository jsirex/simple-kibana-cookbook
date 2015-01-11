require 'spec_helper'

describe 'simple-kibana::default' do
  cached(:chef_run) { ChefSpec::ServerRunner.new.converge described_recipe }

  it 'creates user for kibana' do
    expect(chef_run).to create_user('kibana')
  end

  it 'creates group for kibana' do
    expect(chef_run).to create_group('kibana')
  end

  # No matchers in 0.9.0 Wait for new version
  #  it 'arks kibana archive' do
  #    expect(chef_run).to install_ark('kibana')
  #  end

  it 'create kibana config file' do
    expect(chef_run).to render_file('/opt/kibana/config/kibana.yml')
  end

  it 'starts runit service kibana' do
    expect(chef_run).to enable_runit_service('kibana')
    expect(chef_run).to start_runit_service('kibana')
  end
end
