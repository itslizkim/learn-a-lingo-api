class FlashCardsController < ApplicationController
    
    def index
        flashcards = FlashCard.all
        render json: flashcards
    end

    def show
        flashcard = FlashCard.find_by(params[:lesson_id])
        render json: flashcard
    end


end
