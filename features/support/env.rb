# Generated by cucumber-sinatra. (2014-11-03 21:29:46 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/flipper.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Flipper

class FlipperWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  FlipperWorld.new
end
