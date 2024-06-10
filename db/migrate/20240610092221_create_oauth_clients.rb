class CreateOauthClients < ActiveRecord::Migration[7.1]
  def change
    create_table :oauth_clients do |t|
      t.string :client_name
      t.string :client_id
      t.string :client_secret

      t.timestamps
    end
  end
end
