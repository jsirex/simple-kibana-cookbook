# Kibana is served by a back end server. This controls which port to use.
default['kibana']['config']['port'] = 5601

# The host to bind the server to.
default['kibana']['config']['host'] = '0.0.0.0'

# The Elasticsearch instance to use for all your queries.
default['kibana']['config']['elasticsearch_url'] = 'http://localhost:9200'

# Kibana uses an index in Elasticsearch to store saved searches, visualizations
# and dashboards. It will create a new index if it doesn't already exist.
default['kibana']['config']['kibana_index'] = '.kibana'

# The default application to load.
default['kibana']['config']['default_app_id'] = 'discover'

# Time in milliseconds to wait for responses from the back end or elasticsearch.
# This must be > 0
default['kibana']['config']['request_timeout'] = 300000

# Time in milliseconds for Elasticsearch to wait for responses from shards.
# Note this should always be lower than "request_timeout".
# Set to 0 to disable (not recommended).
default['kibana']['config']['shard_timeout'] = 0

# Set to false to have a complete disregard for the validity of the SSL
# certificate.
default['kibana']['config']['verify_ssl'] = true

# Plugins that are included in the build, and no longer found in the plugins/ folder
default['kibana']['config']['bundled_plugin_ids'] = [
  'plugins/dashboard/index',
  'plugins/discover/index',
  'plugins/doc/index',
  'plugins/kibana/index',
  'plugins/metric_vis/index',
  'plugins/settings/index',
  'plugins/table_vis/index',
  'plugins/vis_types/index',
  'plugins/visualize/index'
]
