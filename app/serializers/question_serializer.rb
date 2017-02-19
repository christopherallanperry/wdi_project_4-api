class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_type, :question_text
  has_one :survey
end
