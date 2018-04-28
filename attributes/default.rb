# frozen_string_literal: true

default['kibana']['download_url'] = 'https://download.elastic.co/kibana/kibana/kibana-4.6.6-linux-x86_64.tar.gz'
default['kibana']['checksum'] = '8c3c1808349ac9645836cae35c5570a53091b44b2212c0826907efae1a865d17'
default['kibana']['version'] = '4.6.6'

default['kibana']['user'] = 'kibana'
default['kibana']['group'] = 'kibana'
default['kibana']['dir'] = '/opt'

default['kibana']['path']['logs'] = '/var/log/kibana'
