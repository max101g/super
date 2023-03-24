class PowersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        powers = Power.all 
        render json: powers 
    end

    def show
        power = find_power
        render json: power
    end

    def update
        power = find_power
        power.update!(power_params)
        render json: power
    end

    private

    def power_params
        params.permit(:name, :description)
    end

    def find_power
        Power.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found 
    end

    def render_unprocessable_entity_response(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
