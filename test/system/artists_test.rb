require "application_system_test_case"

class ArtistsTest < ApplicationSystemTestCase
  setup do
    @artist = artists(:one)
  end

  test "visiting the index" do
    visit artists_url
    assert_selector "h1", text: "出演者一覧"
  end

  test "should create artist" do
    visit new_artist_url

    fill_in "名前", with: "テスト出演者"
    assert_current_path artist_path(Artist.last)

    assert_text "出演者を追加"
    assert_text "テスト出演者"
  end

  test "should update Artist" do
    visit edit_artist_url(@artist)

    fill_in "名前", with: "更新テスト"
    find("[data-testid='artist-submit']").click

    assert_text "更新テスト"
  end

  test "should destroy Artist" do
    visit artist_url(@artist)

    accept_confirm do
      find("[data-testid='artist-destroy']").click
    end

    assert_no_text @artist.name
  end
end
