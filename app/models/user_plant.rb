class UserPlant < ApplicationRecord
    belongs_to :plant
    belongs_to :user
    has_many :waterings
end
