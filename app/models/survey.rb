class Survey < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :answers, through: :questions
end
