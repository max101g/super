class HeroesController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        heroes = Hero.all
        render json: heroes
    end

    def show
        hero = find_hero
        render json: hero, serializer: HeroShowSerializer
    end

    private

    def find_hero
        Hero.find(params[:id])
    end

    def render_unprocessable_entity_response(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def render_not_found_response
        render json: { error: "Hero not found" }, status: :not_found 
    end


end
