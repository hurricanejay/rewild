class UserPlantsController < ApplicationController
    def index
        user_plants = UserPlant.all
        render json: user_plants
    end

    def show
        user_plant = UserPlant.find(params[:id])
        render json: user_plant
    end

    def create
        user_plant = UserPlant.new(user_plant_params)
        user_plant.save
        render json: user_plant
    end

    def my_plants
        user_plants = User.find(params[:user_id]).user_plants
        render json: user_plants
    end

    private def user_plant_params
        params.require(:user_plant).permit(:plant_id, :user_id)
    end
end
