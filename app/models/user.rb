class User < ApplicationRecord
  has_secure_password
  has_many :surveys
  has_many :answers
  validates :email, presence: true, uniqueness: true
end
