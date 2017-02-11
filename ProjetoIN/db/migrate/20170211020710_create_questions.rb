class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.datetime :date
      t.integer :views
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
