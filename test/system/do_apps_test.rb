require "application_system_test_case"

class DoAppsTest < ApplicationSystemTestCase
  setup do
    @do_app = do_apps(:one)
  end

  test "visiting the index" do
    visit do_apps_url
    assert_selector "h1", text: "Do apps"
  end

  test "should create do app" do
    visit do_apps_url
    click_on "New do app"

    fill_in "Description", with: @do_app.description
    fill_in "Status", with: @do_app.status
    fill_in "Title", with: @do_app.title
    click_on "Create Do app"

    assert_text "Do app was successfully created"
    click_on "Back"
  end

  test "should update Do app" do
    visit do_app_url(@do_app)
    click_on "Edit this do app", match: :first

    fill_in "Description", with: @do_app.description
    fill_in "Status", with: @do_app.status
    fill_in "Title", with: @do_app.title
    click_on "Update Do app"

    assert_text "Do app was successfully updated"
    click_on "Back"
  end

  test "should destroy Do app" do
    visit do_app_url(@do_app)
    click_on "Destroy this do app", match: :first

    assert_text "Do app was successfully destroyed"
  end
end
