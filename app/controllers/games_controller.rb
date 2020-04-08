class GamesController < ApplicationController
    def create
        Game.create(game_params)
    end

    private

    def game_params
        params.permit(:lesson_id)
    end
end
