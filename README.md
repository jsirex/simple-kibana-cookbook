# Description

This cookbook installs kibana 4.x only.
It doesn't install or depends on java, apache, nginx, etc...

# Usage

Override both `node['kibana']['download_url']`, `node['kibana']['checsum']`, `node['kibana']['version']`.

# Custom init service

This cookbook is designed to be wrapped by yours project cookbook.
In this use-case you don't need to include simple-kibana::default recipe.

Do something like this in yours default recipe:

```ruby
include_recipe 'simple-kibana::install'
include_recipe 'simple-kibana::configure'
include_recipe 'mywrapper-kibana::service_upstart' # I want to use upstart
...
```

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
* `node['kibana']['download_url']` -  Defaults to `https://download.elasticsearch.org/kibana/kibana/kibana-4.0.2-linux-x64.tar.gz`.
* `node['kibana']['checksum']` -  Defaults to `4cc36e5c6ca7c495667319df75feda1facb7c43a3d9686841f07a2522adec294`.
* `node['kibana']['version']` -  Defaults to `4.0.2`.
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

Maintainer:: Yauhen Artsiukhou (<jsirex@gmail.com>)

License:: Apache 2.0
