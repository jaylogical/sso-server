# app/models/oauth_client.rb
class OauthClient < ApplicationRecord
  before_validation :set_attributes

  validates :client_name, :presence => true # Added validation for name

  private
    def set_attributes
      if new_record?
        generate_client_id!
        generate_client_secret!
      end
    end

    def generate_client_id!
      begin
        self.client_id = SecureRandom.hex
      end while self.class.exists?(client_id: client_id)
    end

    def generate_client_secret!
      begin
        self.client_secret = SecureRandom.hex
      end while self.class.exists?(client_secret: client_secret)
    end
end
