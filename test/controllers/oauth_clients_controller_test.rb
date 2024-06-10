require "test_helper"

class OauthClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oauth_client = oauth_clients(:one)
  end

  test "should get index" do
    get oauth_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_oauth_client_url
    assert_response :success
  end

  test "should create oauth_client" do
    assert_difference("OauthClient.count") do
      post oauth_clients_url, params: { oauth_client: { client_id: @oauth_client.client_id, client_name: @oauth_client.client_name, client_secret: @oauth_client.client_secret } }
    end

    assert_redirected_to oauth_client_url(OauthClient.last)
  end

  test "should show oauth_client" do
    get oauth_client_url(@oauth_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_oauth_client_url(@oauth_client)
    assert_response :success
  end

  test "should update oauth_client" do
    patch oauth_client_url(@oauth_client), params: { oauth_client: { client_id: @oauth_client.client_id, client_name: @oauth_client.client_name, client_secret: @oauth_client.client_secret } }
    assert_redirected_to oauth_client_url(@oauth_client)
  end

  test "should destroy oauth_client" do
    assert_difference("OauthClient.count", -1) do
      delete oauth_client_url(@oauth_client)
    end

    assert_redirected_to oauth_clients_url
  end
end
