require_relative "../lib/qweb"
require "rspec"
require "rack/test"

ENV['RACK_ENV'] = 'test'

def app
  Sinatra::Application
end

# Will need to `include Rack::Test::Methods` in the describe block.

