class HeropowersController < ApplicationController

    def index
        heropowers = Heropower.all 
        render json: heropowers
    end 
end
