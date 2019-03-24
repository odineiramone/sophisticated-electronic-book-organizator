require 'bundler/setup'
require 'dotenv/load'

Bundler.require(:default, ENV['SINATRA_ENV'])

template = ERB.new(File.new('./config/database.yml').read)
db_yaml = YAML.load(template.result(binding))
ActiveRecord::Base.establish_connection(db_yaml[ENV['SINATRA_ENV']])

require './app/controllers/application_controller'
require_all 'app'
