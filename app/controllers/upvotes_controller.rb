class UpvotesController < ApplicationController
  def create
    question = Question.find params[:question_id]
    @upvote = question.upvotes.create
    render json: @upvote
  end
end
