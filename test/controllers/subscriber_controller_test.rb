require 'test_helper'

class SubscriberControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subscriber_index_url
    assert_response :success
  end

end
