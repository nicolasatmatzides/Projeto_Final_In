class RemoveUrlFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :url, :string
  end
end
