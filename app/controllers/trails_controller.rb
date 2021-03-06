class TrailsController < ApplicationController
    def index
        trails = Trail.all
        render json: trails
    end

    def show
        trail = Trail.find_by(params[:user])
    end

    def create
        trail = Trail.create(trail_params)
        render json: trail
    end

    private

    def trail_params
        params.permit(:user, :language)
    end
end
