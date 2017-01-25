require 'rails_helper'

RSpec.feature "Comments", type: :request do
  describe "Index" do
    let!(:questions){ FactoryGirl.create_list(:question, 2) }

    it "should list questions" do
      get "/questions"
      data = JSON.parse(response.body)
      expect(response).to be_success
      expect(data.length).to eq(2)
    end

    it "should include upvotes" do
      questions.first.upvotes.create
      get "/questions"
      data = JSON.parse(response.body)
      expect(data[0][:upvote_count]).to eq(1)
    end
  end
end
