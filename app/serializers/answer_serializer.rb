class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :response
  has_one :question
end
