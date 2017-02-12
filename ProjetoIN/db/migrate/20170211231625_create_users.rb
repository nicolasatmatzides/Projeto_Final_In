class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :email
      t.string :name
      t.boolean :admin
      t.datetime :member_since
      t.datetime :last_time
      t.text :description

      t.timestamps
    end
  end
end
