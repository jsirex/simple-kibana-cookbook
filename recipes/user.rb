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
  group_name node['kibana']['group']
  action :create
  system true
end
