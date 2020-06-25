class LessonsController < ApplicationController
    def index
        lessons = Lesson.all
        render json: lessons
    end

    def show
        # byebug
        lesson = Lesson.find_by(name: params[:id])
        render json: lesson
    end

    private

    def lesson_params
        params.requirepermit(:name)
    end
end
