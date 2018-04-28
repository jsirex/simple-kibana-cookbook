# frozen_string_literal: true

user 'kibana user' do
  username node['kibana']['user']
  comment 'Kibana User'
  home "#{node['kibana']['dir']}/kibana"
  shell '/bin/bash'
  manage_home false
  system true

  action :create
end

group 'kibana group' do
  group_name node['kibana']['group']
  system true

  action :create
end
