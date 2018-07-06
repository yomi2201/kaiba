require 'test_helper'

class AppControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_index_url
    assert_response :success
    assert_select "title", "Home | Kaiba"
  end
  #assert_selectメソッドでは、特定のHTMLタグが存在するかどうかをテストします

  test "should get help" do
    get app_help_url
    assert_response :success
    assert_select "title", "Help | Kaiba"
  end

  test "should get about" do
    get app_about_url
    assert_response :success
    assert_select "title", "About | Kaiba"
  end

end
