class FlashCardsController < ApplicationController
    
    def index
        flashcards = FlashCard.all
        render json: flashcards
    end


end
