require "application_system_test_case"

class SonglistsTest < ApplicationSystemTestCase
  setup do
    @songlist = songlists(:one)
  end

  test "visiting the index" do
    visit songlists_url
    assert_selector "h1", text: "Songlists"
  end

  test "creating a Songlist" do
    visit songlists_url
    click_on "New Songlist"

    fill_in "Band", with: @songlist.band
    fill_in "Category", with: @songlist.category
    fill_in "Key", with: @songlist.key
    fill_in "Lyrics", with: @songlist.lyrics
    fill_in "Mark", with: @songlist.mark
    fill_in "Name", with: @songlist.name
    fill_in "Url", with: @songlist.url
    fill_in "User", with: @songlist.user
    click_on "Create Songlist"

    assert_text "Songlist was successfully created"
    click_on "Back"
  end

  test "updating a Songlist" do
    visit songlists_url
    click_on "Edit", match: :first

    fill_in "Band", with: @songlist.band
    fill_in "Category", with: @songlist.category
    fill_in "Key", with: @songlist.key
    fill_in "Lyrics", with: @songlist.lyrics
    fill_in "Mark", with: @songlist.mark
    fill_in "Name", with: @songlist.name
    fill_in "Url", with: @songlist.url
    fill_in "User", with: @songlist.user
    click_on "Update Songlist"

    assert_text "Songlist was successfully updated"
    click_on "Back"
  end

  test "destroying a Songlist" do
    visit songlists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Songlist was successfully destroyed"
  end
end
