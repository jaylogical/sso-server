require "application_system_test_case"

class OauthClientsTest < ApplicationSystemTestCase
  setup do
    @oauth_client = oauth_clients(:one)
  end

  test "visiting the index" do
    visit oauth_clients_url
    assert_selector "h1", text: "Oauth clients"
  end

  test "should create oauth client" do
    visit oauth_clients_url
    click_on "New oauth client"

    fill_in "Client", with: @oauth_client.client_id
    fill_in "Client name", with: @oauth_client.client_name
    fill_in "Client secret", with: @oauth_client.client_secret
    click_on "Create Oauth client"

    assert_text "Oauth client was successfully created"
    click_on "Back"
  end

  test "should update Oauth client" do
    visit oauth_client_url(@oauth_client)
    click_on "Edit this oauth client", match: :first

    fill_in "Client", with: @oauth_client.client_id
    fill_in "Client name", with: @oauth_client.client_name
    fill_in "Client secret", with: @oauth_client.client_secret
    click_on "Update Oauth client"

    assert_text "Oauth client was successfully updated"
    click_on "Back"
  end

  test "should destroy Oauth client" do
    visit oauth_client_url(@oauth_client)
    click_on "Destroy this oauth client", match: :first

    assert_text "Oauth client was successfully destroyed"
  end
end
