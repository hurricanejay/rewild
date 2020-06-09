class Plant < ApplicationRecord
    has_many :carts
    has_many :user_plants

    has_many :users, through: :user_plants

    def user_order
        return self.carts.map{|cart| cart.user}
    end
end
