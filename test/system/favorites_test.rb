require "application_system_test_case"

class FavoritesTest < ApplicationSystemTestCase
  setup do
    @favorite = favorites(:one)
  end

  test "visiting the index" do
    visit favorites_url
    assert_selector "h1", text: "私の推し"
  end

  test "should create favorite" do
    visit new_favorite_url

    fill_in "名前", with: "テスト推し"
    select Favorite.categories.keys.first.humanize, from: "カテゴリ"
    fill_in "メモ", with: "テストメモ"

    find("[data-testid='favorite-submit']").click

    assert_text "テスト推し"
  end

  test "should update Favorite" do
    visit edit_favorite_url(@favorite)

    fill_in "名前", with: "更新推し"
    find("[data-testid='favorite-submit']").click

    assert_text "更新推し"
  end

  test "should destroy Favorite" do
    visit favorite_url(@favorite)

    accept_confirm do
      find("[data-testid='favorite-destroy']").click
    end

    assert_no_text @favorite.name
  end
end
