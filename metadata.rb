name             'simple-kibana'
maintainer       'Yauhen Artsiukhou'
maintainer_email 'jsirex@gmail.com'
license          'Apache 2.0'
description      'Installs Kibana ~> 4.5'
long_description 'Installs Kibana ~> 4.5. No less, no more'
issues_url       'https://github.com/jsirex/simple-kibana-cookbook/issues' if respond_to?(:issues_url)
source_url       'https://github.com/jsirex/simple-kibana-cookbook' if respond_to?(:source_url)

version          '1.0.0'

depends 'ark'
depends 'runit'

supports 'debian'
supports 'centos'
