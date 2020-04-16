class LanguagesController < ApplicationController

    def index
        languages = Language.all
        render json: languages
    end

    def show 
        language = Language.find_by(params[:language])
        render json: language
    end
end
