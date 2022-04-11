class QuestionsController < ApplicationController
    def new
    end

    def create
        @question = Question.new(params.require(:question).permit(:title,:text))
        @question.save
        redirect_to @question
    end

    def show
        @question = Question.find(params[:id])
    end

    def index
        @questions = Question.all
    end
end
