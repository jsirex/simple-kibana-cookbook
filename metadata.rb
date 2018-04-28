# frozen_string_literal: true

name             'simple-kibana'
maintainer       'Yauhen Artsiukhou'
maintainer_email 'jsirex@gmail.com'
license          'Apache-2.0'
description      'Installs Kibana ~> 4.6'
version          '1.0.0'

issues_url       'https://github.com/jsirex/simple-kibana-cookbook/issues'
source_url       'https://github.com/jsirex/simple-kibana-cookbook'

supports 'debian'
supports 'ubuntu'
supports 'centos'

depends 'ark'
depends 'runit'

chef_version '>= 12'

# Provided recipes
recipe 'simple-kibana::default', 'Installs Kibana ~> 4.6'
