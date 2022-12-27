require "test_helper"

class GorevsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gorev = gorevs(:one)
  end

  test "should get index" do
    get gorevs_url
    assert_response :success
  end

  test "should get new" do
    get new_gorev_url
    assert_response :success
  end

  test "should create gorev" do
    assert_difference("Gorev.count") do
      post gorevs_url, params: { gorev: { durum: @gorev.durum, isim: @gorev.isim, notlar: @gorev.notlar, oncelik: @gorev.oncelik, sontarih: @gorev.sontarih } }
    end

    assert_redirected_to gorev_url(Gorev.last)
  end

  test "should show gorev" do
    get gorev_url(@gorev)
    assert_response :success
  end

  test "should get edit" do
    get edit_gorev_url(@gorev)
    assert_response :success
  end

  test "should update gorev" do
    patch gorev_url(@gorev), params: { gorev: { durum: @gorev.durum, isim: @gorev.isim, notlar: @gorev.notlar, oncelik: @gorev.oncelik, sontarih: @gorev.sontarih } }
    assert_redirected_to gorev_url(@gorev)
  end

  test "should destroy gorev" do
    assert_difference("Gorev.count", -1) do
      delete gorev_url(@gorev)
    end

    assert_redirected_to gorevs_url
  end
end
