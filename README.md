# Description

This cookbooks install kibana 4.x only.
It doesn't install or depends on java, apache, nginx, etc...




# Requirements

## Platform:

* Debian

## Cookbooks:

* ark
* runit

# Attributes

* `node['kibana']['config']['port']` -  Defaults to `"5601"`.
* `node['kibana']['config']['host']` -  Defaults to `"0.0.0.0"`.
* `node['kibana']['config']['elasticsearch']` -  Defaults to `"http://localhost:9200"`.
* `node['kibana']['config']['kibana_index']` -  Defaults to `".kibana"`.
* `node['kibana']['config']['default_app_id']` -  Defaults to `"discover"`.
* `node['kibana']['config']['request_timeout']` -  Defaults to `"60"`.
* `node['kibana']['config']['shard_timeout']` -  Defaults to `"30000"`.
* `node['kibana']['config']['verify_ssl']` -  Defaults to `"true"`.
* `node['kibana']['config']['bundledPluginIds']` -  Defaults to `"[ ... ]"`.
* `node['kibana']['download_url']` -  Defaults to `"https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-beta3.tar.gz"`.
* `node['kibana']['checksum']` -  Defaults to `"d593af567c5dd814e59fb2bc2e11a194add6caa0f58c54c82da8fb708554aded"`.
* `node['kibana']['version']` -  Defaults to `"4.0.0-beta3"`.
* `node['kibana']['user']` -  Defaults to `"kibana"`.
* `node['kibana']['group']` -  Defaults to `"kibana"`.
* `node['kibana']['dir']` -  Defaults to `"/opt"`.
* `node['kibana']['path']['logs']` -  Defaults to `"/var/log/kibana"`.

# Recipes

* simple-kibana::default

# License and Maintainer

Maintainer: Yauhen Artsiukhou <jsirex@gmail.com>
