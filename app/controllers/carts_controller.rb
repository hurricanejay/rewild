class CartsController < ApplicationController
    def index
        carts = Cart.all
        render json: carts
    end

    def show
        cart = Cart.find(params[:id])
        render json: cart
    end

    def create
        cart = Cart.new(cart_params)
        cart.save
        render json: cart
    end

    def my_cart
        carts = Cart.find_by(user_id: params[:user_id])
        render json: carts
    end

    private def cart_params
        params.require(:cart).permit(:user_id, :plant_id, :quantity)
    end
end
