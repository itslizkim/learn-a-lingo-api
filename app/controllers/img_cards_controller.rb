class ImgCardsController < ApplicationController

    def index
        img_cards = ImgCard.all
        render json: img_cards
    end
end
