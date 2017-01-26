class QuestionsController < ApplicationController

  api :GET, 'questions'
  description <<-EOS
    Gets list of all open questions
  EOS
  def index
    @questions = Question.all
    render json: @questions
  end

  api :POST, 'questions'
  param :text, String
  description <<-EOS
    Creats a new question
  EOS
  def create
    @question = Question.create(question_params)
    render json: @question
  end

  def question_params
    params.require(:question).permit([:text])
  end
end
