class CreateUserArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_articles do |t|
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end
  end
end
