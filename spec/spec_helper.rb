# -*- encoding: utf-8; mode: ruby -*-

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'bundler'
Bundler.setup(:default, :test)


require "effin_utf8"
require "rspec"
require "json"
require "rabbitmq/http/client"
require "bunny"
require "rantly"
require "pry"

RSpec.configure do |config|
  config.filter_run_including :focus => true
  config.run_all_when_everything_filtered = true
  config.treat_symbols_as_metadata_keys_with_true_values = true
end
