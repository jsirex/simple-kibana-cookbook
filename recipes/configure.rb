file ::File.join(node['kibana']['dir'], 'kibana', 'config', 'kibana.yml') do
  content YAML.dump(node['kibana']['config'].to_hash)
  owner node['kibana']['user']
  group node['kibana']['gorup']
  mode '0755'
end
