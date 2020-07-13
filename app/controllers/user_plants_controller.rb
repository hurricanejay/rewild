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
        user_plants = UserPlant.where(user_id: params[:user_id])
        render json: user_plants
    end

    def user_plant_watering
        user_plant_watering = Watering.create(user_plant_id: params[:id], date: params[:date])
        render json: user_plant_watering
    end


    private def user_plant_params
        params.require(:user_plant).permit(:plant_id, :user_id)
    end
end
