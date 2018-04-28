# frozen_string_literal: true

include_recipe 'simple-kibana::user'
include_recipe 'simple-kibana::install'
include_recipe 'simple-kibana::configure'
include_recipe 'simple-kibana::service_runit'
