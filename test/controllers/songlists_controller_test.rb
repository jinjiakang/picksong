require 'test_helper'

class SonglistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @songlist = songlists(:one)
  end

  test "should get index" do
    get songlists_url
    assert_response :success
  end

  test "should get new" do
    get new_songlist_url
    assert_response :success
  end

  test "should create songlist" do
    assert_difference('Songlist.count') do
      post songlists_url, params: { songlist: { band: @songlist.band, category: @songlist.category, key: @songlist.key, lyrics: @songlist.lyrics, mark: @songlist.mark, name: @songlist.name, url: @songlist.url, user: @songlist.user } }
    end

    assert_redirected_to songlist_url(Songlist.last)
  end

  test "should show songlist" do
    get songlist_url(@songlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_songlist_url(@songlist)
    assert_response :success
  end

  test "should update songlist" do
    patch songlist_url(@songlist), params: { songlist: { band: @songlist.band, category: @songlist.category, key: @songlist.key, lyrics: @songlist.lyrics, mark: @songlist.mark, name: @songlist.name, url: @songlist.url, user: @songlist.user } }
    assert_redirected_to songlist_url(@songlist)
  end

  test "should destroy songlist" do
    assert_difference('Songlist.count', -1) do
      delete songlist_url(@songlist)
    end

    assert_redirected_to songlists_url
  end
end
