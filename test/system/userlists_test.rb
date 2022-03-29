require "application_system_test_case"

class UserlistsTest < ApplicationSystemTestCase
  setup do
    @userlist = userlists(:one)
  end

  test "visiting the index" do
    visit userlists_url
    assert_selector "h1", text: "Userlists"
  end

  test "creating a Userlist" do
    visit userlists_url
    click_on "New Userlist"

    fill_in "Receipients", with: @userlist.receipients
    fill_in "Topic", with: @userlist.topic
    fill_in "User", with: @userlist.user_id
    click_on "Create Userlist"

    assert_text "Userlist was successfully created"
    click_on "Back"
  end

  test "updating a Userlist" do
    visit userlists_url
    click_on "Edit", match: :first

    fill_in "Receipients", with: @userlist.receipients
    fill_in "Topic", with: @userlist.topic
    fill_in "User", with: @userlist.user_id
    click_on "Update Userlist"

    assert_text "Userlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Userlist" do
    visit userlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userlist was successfully destroyed"
  end
end
