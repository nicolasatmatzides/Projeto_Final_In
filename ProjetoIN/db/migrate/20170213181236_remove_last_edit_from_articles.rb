class RemoveLastEditFromArticles < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :last_edit, :datetime
  end
end
