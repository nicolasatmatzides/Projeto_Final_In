class RemoveLastEditFromQuestions < ActiveRecord::Migration[5.0]
  def change
    remove_column :questions, :last_edit, :datetime
  end
end
