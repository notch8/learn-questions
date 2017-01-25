FactoryGirl.define do
  factory :question do
    sequence :text do |n|
      "Question #{n}"
    end
  end
end
