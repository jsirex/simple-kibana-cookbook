# frozen_string_literal: true

file ::File.join(node['kibana']['dir'], 'kibana', 'config', 'kibana.yml') do
  content YAML.dump(node['kibana']['config'].to_hash)
  owner node['kibana']['user']
  group node['kibana']['group']
  mode '0755'
end
