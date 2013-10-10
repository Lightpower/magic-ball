$:.unshift File.dirname(File.expand_path(__FILE__))
ENV["RACK_ENV"] ||= (ENV["RAILS_ENV"] || "development")

require 'bundler'

Bundler.require :default, ENV['RACK_ENV']

require 'app'

run Sinatra::Application.new