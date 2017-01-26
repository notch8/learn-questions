# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
["What time is it?",
  "Where is San Diego?",
  "How do you run a marathon?"].each do |question|
    question.create text: question
  end
