require_relative '../config/environment'
require 'rack/test'

def app()
  MyApp.new
end
RSpec.configure do |config|

  config.include Rack::Test::Methods

  config.order = 'default'
end
