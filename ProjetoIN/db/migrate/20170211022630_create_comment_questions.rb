class CreateCommentQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_questions do |t|
      t.integer :question_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
