class QuestionsController < ApplicationController

  api :GET, 'questions'
  description <<-EOS
    Gets list of all open questions
    == Response
       [
         {
           text: 'What is the best way to write clean Javascript?'
         },
         {
           text: 'When will Javascript rule the world?'
         }
       ]
  EOS
  def index
    @questions = Question.all
    render json: @questions
  end

  api :POST, 'questions'
  param :text, String
  description <<-EOS
    Creats a new question
    == Example
        POST /questions
        {
          question:
            text: 'What is Javascript not great at?'
        }
  EOS
  def create
    @question = Question.create(question_params)
    render json: @question
  end

  def question_params
    params.require(:question).permit([:text])
  end
end
