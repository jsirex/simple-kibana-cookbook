user 'kibana user' do
  username node['kibana']['user']
  comment 'Kibana User'
  home "#{node['kibana']['dir']}/kibana"
  shell '/bin/bash'
  supports manage_home: false
  action :create
  system true
end

group 'kibana group' do
  group_name node['kibana']['user']
  action :create
  system true
end

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

file ::File.join(node['kibana']['dir'], 'kibana', 'config', 'kibana.yml') do
  content YAML.dump(node['kibana']['config'].to_hash)
  owner node['kibana']['user']
  group node['kibana']['gorup']
  mode '0755'
  notifies :restart, 'runit_service[kibana]'
end

include_recipe 'runit'

runit_service 'kibana' do
  default_logger true
  options(
    'user' => node['kibana']['user'],
    'home' => ::File.join(node['kibana']['dir'], 'kibana')
  )
  action [:enable, :start]
end
