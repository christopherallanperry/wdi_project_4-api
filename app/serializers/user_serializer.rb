class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :image
  has_many :surveys
end
