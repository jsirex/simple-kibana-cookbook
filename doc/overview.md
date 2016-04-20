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
