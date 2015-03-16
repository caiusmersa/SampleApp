class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  before_save { self.email = email.downcase }


  validates :name, presence: true, length: { maximum: 20 }
  validates :email, presence: true, length: { maximum: 100 }, 
                    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end