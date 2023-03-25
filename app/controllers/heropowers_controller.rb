class HeropowersController < ApplicationController

    def index
        heropowers = Heropower.all 
        render json: heropowers
    end 

    def create
        heropower = Heropower.create!(heropower_params)
        render json: heropower, status: :created
    end

    private

    def heropower_params
        params.permit(:strength, :hero_id, :power_id)
    end
end
