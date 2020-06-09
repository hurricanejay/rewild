class User < ApplicationRecord
    has_many :carts
    has_many :user_plants

    has_many :plants, through: :carts, as: :orders
    has_many :plants, through: :user_plants
end
