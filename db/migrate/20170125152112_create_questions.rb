class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :upvotes_count, default: 0
      t.integer :comments_count, default: 0
      t.boolean :is_answered

      t.timestamps
    end
  end
end
