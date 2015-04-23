include_recipe 'runit'

runit_service 'kibana' do
  default_logger true
  options(
    'user' => node['kibana']['user'],
    'home' => ::File.join(node['kibana']['dir'], 'kibana')
  )
  action [:enable, :start]
end
