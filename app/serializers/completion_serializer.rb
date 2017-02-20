class CompletionSerializer < ActiveModel::Serializer
  attributes :id, :survey_completed, :question_answered
  has_one :user
  has_one :survey
  has_one :question
end
