require 'test_helper'

class SchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sches_index_url
    assert_response :success
  end

end
