class SurveySerializer < ActiveModel::Serializer
  attributes :id, :title, :code, :started, :finished, :summary
  has_one :user
  has_many :questions
  has_many :answers, through: :questions
end
