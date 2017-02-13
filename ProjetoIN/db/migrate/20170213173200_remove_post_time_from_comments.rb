class RemovePostTimeFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :post_time, :datetime
  end
end
