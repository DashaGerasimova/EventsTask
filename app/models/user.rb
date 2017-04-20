	class User < ApplicationRecord

  has_secure_password

  has_many :events

  validates :email, :password, presence: true

  validates :email, uniqueness: true, 
    email_format: { message: "Email is incorrect" }

end
