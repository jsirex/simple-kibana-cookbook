# Description

This cookbook installs kibana 4.x only.
It doesn't install or depends on java, apache, nginx, etc...

Since kibana 4.x requires elasticsearch >= 2.3.0 you will have to install that version or more recent.

# Usage

Override both `node['kibana']['download_url']`, `node['kibana']['checksum']`, `node['kibana']['version']`.

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

* debian
* ubuntu
* centos

## Cookbooks:

* ark
* runit

# Attributes

* `node['kibana']['config']['port']` -  Defaults to `5601`.
* `node['kibana']['config']['host']` -  Defaults to `0.0.0.0`.
* `node['kibana']['config']['elasticsearch.url']` -  Defaults to `http://localhost:9200`.
* `node['kibana']['config']['elasticsearch.preserveHost']` -  Defaults to `true`.
* `node['kibana']['config']['kibana.index']` -  Defaults to `.kibana`.
* `node['kibana']['config']['kibana.defaultAppId']` -  Defaults to `discover`.
* `node['kibana']['config']['elasticsearch.ssl.verify']` -  Defaults to `true`.
* `node['kibana']['config']['elasticsearch.requestTimeout']` -  Defaults to `300000`.
* `node['kibana']['config']['elasticsearch.shardTimeout']` -  Defaults to `0`.
* `node['kibana']['config']['elasticsearch.startupTimeout']` -  Defaults to `5000`.
* `node['kibana']['download_url']` -  Defaults to `https://download.elastic.co/kibana/kibana/kibana-4.6.6-linux-x86_64.tar.gz`.
* `node['kibana']['checksum']` -  Defaults to `8c3c1808349ac9645836cae35c5570a53091b44b2212c0826907efae1a865d17`.
* `node['kibana']['version']` -  Defaults to `4.6.6`.
* `node['kibana']['user']` -  Defaults to `kibana`.
* `node['kibana']['group']` -  Defaults to `kibana`.
* `node['kibana']['dir']` -  Defaults to `/opt`.
* `node['kibana']['path']['logs']` -  Defaults to `/var/log/kibana`.

# Recipes

* simple-kibana::default - Installs Kibana ~> 4.6

# License and Maintainer

Maintainer:: Yauhen Artsiukhou (<jsirex@gmail.com>)

Source:: https://github.com/jsirex/simple-kibana-cookbook

Issues:: https://github.com/jsirex/simple-kibana-cookbook/issues

License:: Apache-2.0
