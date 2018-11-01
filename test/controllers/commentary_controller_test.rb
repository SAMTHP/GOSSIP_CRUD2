require 'test_helper'

class CommentaryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get commentary_index_url
    assert_response :success
  end

  test "should get new" do
    get commentary_new_url
    assert_response :success
  end

  test "should get create" do
    get commentary_create_url
    assert_response :success
  end

  test "should get show" do
    get commentary_show_url
    assert_response :success
  end

  test "should get new" do
    get commentary_new_url
    assert_response :success
  end

  test "should get edit" do
    get commentary_edit_url
    assert_response :success
  end

  test "should get update" do
    get commentary_update_url
    assert_response :success
  end

  test "should get destroy" do
    get commentary_destroy_url
    assert_response :success
  end

end
