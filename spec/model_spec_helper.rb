$LOAD_PATH.unshift File.expand_path('../../', __FILE__)
require 'bundler/setup'
Bundler.require :models, :unit_tests
require 'spec/support/require_helper'

database_yml = YAML.load_file(File.expand_path('config/database.yml'))
ActiveRecord::Base.establish_connection(database_yml['test'])

I18n.load_path << Dir['config/locales/*.yml']
I18n.locale = 'pt-BR'