class QuestionsController < ApplicationController
  def create
    archive_id = params[:question][:archive_id].to_i
    @question = Archive.find(archive_id).questions.build(params[:question])
    if @question.save
      flash[:success] = "Your response has been added to the dialogue."
      redirect_to root_path
    else
      render 'pages/home'
    end
  end
end
