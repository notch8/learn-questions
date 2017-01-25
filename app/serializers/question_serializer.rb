class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text, :upvotes_count, :comments_count, :is_answered
end
