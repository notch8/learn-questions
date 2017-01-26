require 'rails_helper'

RSpec.feature "Upvotes", type: :request do
  describe "adding an upvote" do
    let(:question){ FactoryGirl.create :question }

    it "should add to question" do
      post "/questions/#{question.id}/upvotes"
      expect(response).to be_success
      expect(question.upvotes.count).to eq(1)
    end
  end
end

