class RemoveMemberSinceFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :member_since, :datetime
  end
end
