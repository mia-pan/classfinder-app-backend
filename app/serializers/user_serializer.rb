class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password, :blog, :appointment 
end
