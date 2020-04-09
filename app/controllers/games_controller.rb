class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games
    end

    def create
        Game.create(game_params)
    end

    private

    def game_params
        params.permit(:lesson_id)
    end
end
