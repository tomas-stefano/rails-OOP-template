
gem 'devise', :group => [:features, :models, :default] # Authentication
gem 'simple_form', :group => :features     # Awesome Form Builder
gem 'foreigner',   :group => :features     # Create Fks for MySQL

if yes?('Using Carrierwave?')
  gem 'carrierwave', :group => :features   # Upload Files
end

if yes?('Using mysql?')
  gem 'mysql2', :group => :models
end

if yes?('Using RSpec?')
  gem 'rspec', :group => :unit_testing
  gem 'rspec-rails', :group => [:development, :test]
  gem 'capybara', :group => [:development, :test]
end

run 'bundle install'
generate 'devise:install'
generate 'simple_form:install'
generate 'rspec:install'
generate 'devise', 'User' if yes?('Generate Devise User?')

run "rm -Rf README public/index.html"
run "rm -Rf test"

run "mkdir app/business"
run "mkdir -p spec"
run "mkdir spec/business"
run "mkdir -p app/presenters"

run "wget --no-check-certificate 'https://github.com/tomas-stefano/rails-OOP-template/raw/master/spec/model_spec_helper.rb' -O spec/model_spec_helper.rb"
run "wget --no-check-certificate 'https://github.com/tomas-stefano/rails-OOP-template/raw/master/spec/support/require_helper.rb' -O spec/support/require_helper.rb"

puts 'The generated template run successfuly. Happy Coding! :)'

