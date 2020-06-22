class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    def top_three
        plants = Hash[UserPlant.group(:plant_id).count.sort_by{|k, v| -v}.first(3)].keys.map{|id| Plant.find(id)}
        render json: plants
    end
end
