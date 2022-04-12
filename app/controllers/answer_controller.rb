class AnswerController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @article.answers.create(answer_params)
    redirect_to article_path(@article)
  end

  private

  def answer_params
    params.require(:comment).permit(:answer)
  end
end
