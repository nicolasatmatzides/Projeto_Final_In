class RemoveLastEditFromAnswers < ActiveRecord::Migration[5.0]
  def change
    remove_column :answers, :last_edit, :datetime
  end
end
