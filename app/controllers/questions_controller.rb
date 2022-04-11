class QuestionsController < ApplicationController
    def new
    end

    def create
        @question = Question.new(params.require(:question).permit(:title,:text))
        @question.save
        redirect_to @question
    end
end
