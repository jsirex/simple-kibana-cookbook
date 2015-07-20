file ::File.join(node['kibana']['dir'], 'kibana', 'config', 'kibana.yml') do
  content JSON.parse(node['kibana']['config'].to_hash.dup.to_json).to_yaml
  owner node['kibana']['user']
  group node['kibana']['group']
  mode '0755'
end
