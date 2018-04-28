# frozen_string_literal: true

ark 'kibana' do
  url node['kibana']['download_url']
  owner node['kibana']['user']
  group node['kibana']['group']
  version node['kibana']['version']
  has_binaries ['bin/kibana']
  checksum node['kibana']['checksum']

  prefix_root node['kibana']['dir']
  prefix_home node['kibana']['dir']
end
