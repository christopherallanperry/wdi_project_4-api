class SurveySerializer < ActiveModel::Serializer
  attributes :id, :title, :code, :user_id, :started, :finished
  has_one :user
  has_many :questions
  def length
    object.body.length
  end

  def url
    Rails.application.routes.url_helpers.post_url object, only_path: true
  end
end
