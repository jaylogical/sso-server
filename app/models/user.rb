# app/models/user.rb
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :access_grants, dependent: :delete_all

  def oauth_payload
    hash = {
      provider: 'sso',
      id: self.id,
      info: {
         email: self.email,
         name: "TEST",
      },
      extra: {
        first_name: "TEST",
        last_name: "TEST",
        mobile_number: "123456789",
      }
    }
    return hash
  end

end
