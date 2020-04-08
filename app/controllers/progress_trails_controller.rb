class ProgressTrailsController < ApplicationController
    def index
        progress_trails = ProgressTrail.all
        render json: progress_trails
    end

    def create
        progress_trail = ProgressTrail.create(progress_trail_params)
        render json: progress_trail
    end

    private

    def progress_trail_params
        params.permit(:user_id, :language_id)
    end
end
