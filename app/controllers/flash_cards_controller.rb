class FlashCardsController < ApplicationController
    
    def index
        flashcards = FlashCard.all
        render json: flashcards
    end

    def show
        flashcard = FlashCard.(params[:lesson])
        render json: flashcard
    end


end
