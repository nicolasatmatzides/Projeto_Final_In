class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.datetime :post_time
      t.datetime :last_edit
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end
  end
end
