require "test_helper"

class MypageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mypage_index_url
    assert_response :success
  end

  test "should get new" do
    get mypage_new_url
    assert_response :success
  end

  test "should get create" do
    get mypage_create_url
    assert_response :success
  end

  test "should get edit" do
    get mypage_edit_url
    assert_response :success
  end

  test "should get update" do
    get mypage_update_url
    assert_response :success
  end

  test "should get destroy" do
    get mypage_destroy_url
    assert_response :success
  end
end
