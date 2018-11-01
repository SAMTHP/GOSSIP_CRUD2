require 'test_helper'

class GossipControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get gossip_create_url
    assert_response :success
  end

  test "should get new" do
    get gossip_new_url
    assert_response :success
  end

  test "should get edit" do
    get gossip_edit_url
    assert_response :success
  end

  test "should get update" do
    get gossip_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gossip_destroy_url
    assert_response :success
  end

end
