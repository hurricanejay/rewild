class Watering < ApplicationRecord
    belongs_to :user_plant
    belongs_to :plant
end
