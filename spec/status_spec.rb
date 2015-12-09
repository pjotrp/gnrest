# require 'test_helper'

require 'minitest'
require 'minitest/autorun'
require 'rack/test'
require 'gnrest/gnrest'

class GNRest::APITest < MiniTest::Test
  include Rack::Test::Methods

  def app
    GNRest::API
  end

  def test_get_api_status_version
    get '/api/status/version'
    assert last_response.ok?
    assert_equal '"0.0.1"', last_response.body
  end

  def test_get_api_status_database
    get '/api/status/database'
    assert last_response.ok?
    assert_equal '"testmode"', last_response.body
  end

end
