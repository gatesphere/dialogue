class QuestionController < ApplicationController
  def create
    @question = Question.new
    @question.replied_to = false
    if @question.save
      flash[:success] = "Your response has been added to the dialogue."
      redirect_to root_path
    else
      render 'pages/home'
    end
  end
end
