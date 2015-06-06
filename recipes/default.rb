%w( user install configure service_runit ).each do |r|
  include_recipe "#{cookbook_name}::#{r}"
end
