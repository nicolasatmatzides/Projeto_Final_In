class RemovePostTimeFromAnswers < ActiveRecord::Migration[5.0]
  def change
    remove_column :answers, :post_time, :datetime
  end
end
