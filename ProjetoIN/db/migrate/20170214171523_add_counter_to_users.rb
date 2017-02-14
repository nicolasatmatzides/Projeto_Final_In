class AddCounterToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :counter, :integer
  end
end
