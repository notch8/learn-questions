class UpvotesController < ApplicationController

  api :POST, 'question/:question_id/upvote'
  description <<-EOS
    Adds an upvote for a question
    == Example
        POST /questions/1/upvote
        (will upvote question #1)
  EOS
  def create
    question = Question.find params[:question_id]
    @upvote = question.upvotes.create
    render json: @upvote
  end
end
