# Description

This cookbook installs kibana 4.x only.
It doesn't install or depends on java, apache, nginx, etc...

# Usage

Override both `node['kibana']['download_url']`, `node['kibana']['checsum']`, `node['kibana']['version']`.

# Requirements

## Platform:

* Debian
* Centos

## Cookbooks:

* ark
* runit

# Attributes

* `node['kibana']['config']['port']` -  Defaults to `5601`.
* `node['kibana']['config']['host']` -  Defaults to `0.0.0.0`.
* `node['kibana']['config']['elasticsearch_url']` -  Defaults to `http://localhost:9200`.
* `node['kibana']['config']['kibana_index']` -  Defaults to `.kibana`.
* `node['kibana']['config']['default_app_id']` -  Defaults to `discover`.
* `node['kibana']['config']['request_timeout']` -  Defaults to `300000`.
* `node['kibana']['config']['shard_timeout']` -  Defaults to `0`.
* `node['kibana']['config']['verify_ssl']` -  Defaults to `true`.
* `node['kibana']['config']['bundled_plugin_ids']` -  Defaults to `[ ... ]`.
* `node['kibana']['download_url']` -  Defaults to `https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-linux-x64.tar.gz`.
* `node['kibana']['checksum']` -  Defaults to `8f1de21f52803793dafeefe54f5b8933c2d3887ecbf69da6835430586b25cf2e`.
* `node['kibana']['version']` -  Defaults to `4.0.0`.
* `node['kibana']['user']` -  Defaults to `kibana`.
* `node['kibana']['group']` -  Defaults to `kibana`.
* `node['kibana']['dir']` -  Defaults to `/opt`.
* `node['kibana']['path']['logs']` -  Defaults to `/var/log/kibana`.

# Recipes

* simple-kibana::configure
* simple-kibana::default
* simple-kibana::install
* simple-kibana::service_runit
* simple-kibana::user

# License and Maintainer

Maintainer: Yauhen Artsiukhou <jsirex@gmail.com>
