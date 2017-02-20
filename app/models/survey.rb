class Survey < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :completions
end
