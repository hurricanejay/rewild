class UserPlantSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_many :waterings
  belongs_to :user
  belongs_to :plant
end
