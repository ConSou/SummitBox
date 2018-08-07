require 'test_helper'

class MountiansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mountians_index_url
    assert_response :success
  end

end
