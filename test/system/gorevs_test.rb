require "application_system_test_case"

class GorevsTest < ApplicationSystemTestCase
  setup do
    @gorev = gorevs(:one)
  end

  test "visiting the index" do
    visit gorevs_url
    assert_selector "h1", text: "Gorevs"
  end

  test "should create gorev" do
    visit gorevs_url
    click_on "New gorev"

    check "Durum" if @gorev.durum
    fill_in "Isim", with: @gorev.isim
    fill_in "Notlar", with: @gorev.notlar
    fill_in "Oncelik", with: @gorev.oncelik
    fill_in "Sontarih", with: @gorev.sontarih
    click_on "Create Gorev"

    assert_text "Gorev was successfully created"
    click_on "Back"
  end

  test "should update Gorev" do
    visit gorev_url(@gorev)
    click_on "Edit this gorev", match: :first

    check "Durum" if @gorev.durum
    fill_in "Isim", with: @gorev.isim
    fill_in "Notlar", with: @gorev.notlar
    fill_in "Oncelik", with: @gorev.oncelik
    fill_in "Sontarih", with: @gorev.sontarih
    click_on "Update Gorev"

    assert_text "Gorev was successfully updated"
    click_on "Back"
  end

  test "should destroy Gorev" do
    visit gorev_url(@gorev)
    click_on "Destroy this gorev", match: :first

    assert_text "Gorev was successfully destroyed"
  end
end
