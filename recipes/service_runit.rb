# frozen_string_literal: true

include_recipe 'runit'

cfg = ::File.join(node['kibana']['dir'], 'kibana', 'config', 'kibana.yml')

runit_service 'kibana' do
  default_logger true
  options(
    'user' => node['kibana']['user'],
    'home' => ::File.join(node['kibana']['dir'], 'kibana')
  )
  subscribes :restart, "file[#{cfg}]"
  subscribes :restart, 'ark[kibana]'

  action [:enable, :start]
end
