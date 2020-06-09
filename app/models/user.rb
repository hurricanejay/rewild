class User < ApplicationRecord
    has_many :carts
    has_many :user_plants

    has_many :plants, through: :user_plants

    def orders
        return self.carts.map{|cart| cart.plant}
    end
end
