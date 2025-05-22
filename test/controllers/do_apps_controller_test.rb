require "test_helper"

class DoAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @do_app = do_apps(:one)
  end

  test "should get index" do
    get do_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_do_app_url
    assert_response :success
  end

  test "should create do_app" do
    assert_difference("DoApp.count") do
      post do_apps_url, params: { do_app: { description: @do_app.description, status: @do_app.status, title: @do_app.title } }
    end

    assert_redirected_to do_app_url(DoApp.last)
  end

  test "should show do_app" do
    get do_app_url(@do_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_do_app_url(@do_app)
    assert_response :success
  end

  test "should update do_app" do
    patch do_app_url(@do_app), params: { do_app: { description: @do_app.description, status: @do_app.status, title: @do_app.title } }
    assert_redirected_to do_app_url(@do_app)
  end

  test "should destroy do_app" do
    assert_difference("DoApp.count", -1) do
      delete do_app_url(@do_app)
    end

    assert_redirected_to do_apps_url
  end
end
