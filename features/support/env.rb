require 'rubygems'
require 'rspec'
require 'webrat'
require 'mechanize'
require 'byebug'

Webrat.configure do |config|
  config.mode = :mechanize
end

World(Webrat::Methods)
World(Webrat::Matchers)
