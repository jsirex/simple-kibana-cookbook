default['kibana']['version'] = '4.0.0'
default['kibana']['download_url'] = "https://download.elasticsearch.org/kibana/kibana/kibana-#{node['kibana']['version']}-linux-x64.tar.gz"
default['kibana']['checksum'] = '8f1de21f52803793dafeefe54f5b8933c2d3887ecbf69da6835430586b25cf2e'

default['kibana']['user'] = 'kibana'
default['kibana']['group'] = 'kibana'
default['kibana']['dir'] = '/opt'

default['kibana']['path']['logs'] = '/var/log/kibana'
