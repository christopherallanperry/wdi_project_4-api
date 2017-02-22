class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :response, :user_id, :question_id
  has_one :question
  has_one :user
end
