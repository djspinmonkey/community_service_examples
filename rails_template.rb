gem_group :development, :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
end

generate('rspec:install')
