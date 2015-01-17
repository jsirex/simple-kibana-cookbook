source 'https://rubygems.org'

gem 'chef', '~> 12.0'

group :lint do
  gem 'foodcritic', '~> 3.0'
  gem 'rubocop', '~> 0.24'
end

group :unit do
  gem 'berkshelf', '~> 3.1'
  gem 'chefspec', '>= 4.2.0.beta.1'
  gem 'ci_reporter_rspec'
end

group :development do
  gem 'rake'
end

group :knife do
  gem 'knife-cookbook-doc'
  gem 'knife-supermarket'
end

# Kitchen
# Currently there are conflicts
# gem 'test-kitchen', '~> 1.2'
# gem 'kitchen-docker'
