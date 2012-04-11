require 'rubygems'
require 'rspec'
require 'webrat'
require 'mechanize'

Webrat.configure do |config|
  config.mode = :mechanize
end

World(Webrat::Methods)
World(Webrat::Matchers)