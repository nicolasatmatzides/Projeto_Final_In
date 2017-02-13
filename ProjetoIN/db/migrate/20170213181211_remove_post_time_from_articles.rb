class RemovePostTimeFromArticles < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :post_time, :datetime
  end
end
