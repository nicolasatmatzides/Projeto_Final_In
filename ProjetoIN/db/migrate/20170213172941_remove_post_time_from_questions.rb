class RemovePostTimeFromQuestions < ActiveRecord::Migration[5.0]
  def change
    remove_column :questions, :post_time, :datetime
  end
end
