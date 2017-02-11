class CreateCommentArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_articles do |t|
      t.integer :article_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
