# Description

This cookbook installs kibana 4.5.x only.
It doesn't install or depends on java, apache, nginx, etc...

Since kibana 4.5.x requires elasticsearch >= 2.3.0 you will have to install that version or more recent.

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

* Debian
* Centos

## Cookbooks:

* ark
* runit

# Attributes

* `default['kibana']['download_url']` - Defaults to `'https://download.elastic.co/kibana/kibana/kibana-4.5.0-linux-x64.tar.gz'`.
* `default['kibana']['checksum']` - Defaults to `'fa3f675febb34c0f676f8a64537967959eb95d2f5a81bc6da17aa5c98b9c76ef'`.
* `default['kibana']['version']` - Defaults to `'4.5.0'`.
* `default['kibana']['user']` - Defaults to `'kibana'`.
* `default['kibana']['group']` - Defaults to `'kibana'`.
* `default['kibana']['dir']` - Defaults to `'/opt'`.
* `default['kibana']['path']['logs']` - Defaults to `'/var/log/kibana'`.

The following attributes map to entries in kibana configuration file:

* `default['kibana']['config']['port']` - Defaults to `5601`.
* `default['kibana']['config']['host']` - Defaults to `'0.0.0.0'`.
* `default['kibana']['config']['elasticsearch.url']` - Defaults to `'http://localhost:9200'`.
* `default['kibana']['config']['elasticsearch.preserveHost']` - Defaults to `true`.
* `default['kibana']['config']['kibana.index']` - Defaults to `'.kibana'`.
* `default['kibana']['config']['kibana.defaultAppId']` - Defaults to `'discover'`.
* `default['kibana']['config']['elasticsearch.ssl.verify']` - Defaults to `true`.
* `default['kibana']['config']['elasticsearch.requestTimeout']` - Defaults to `300000`.
* `default['kibana']['config']['elasticsearch.shardTimeout']` - Defaults to `0`.
* `default['kibana']['config']['elasticsearch.startupTimeout']` - Defaults to `5000`.

Other configuration file attributes may be used but they are not explicitly set in this cookbook.

# Recipes

* simple-kibana::configure
* simple-kibana::default
* simple-kibana::install
* simple-kibana::service_runit
* simple-kibana::user

# License and Maintainer

Maintainer:: Yauhen Artsiukhou (<jsirex@gmail.com>)

License:: Apache 2.0
