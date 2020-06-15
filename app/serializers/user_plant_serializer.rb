class UserPlantSerializer < ActiveModel::Serializer
  attributes :id
  has_many :waterings
  belongs_to :user
  belongs_to :plant
end
