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
        # Group UserPlant by plant_id, count them, sort by count/ value, get top 3, convert to hash, get keys, map id to Plant
        plants = Hash[UserPlant.group(:plant_id).count.sort_by{|k, v| -v}.first(3)].keys.map{|id| Plant.find(id)}
        render json: plants
    end

    def search 
        plants = Plant.where("name like ?", "%#{params[:plant_name]}%")
        render json:plants
    end

end
