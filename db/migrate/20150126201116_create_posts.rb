class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.string :description
      t.decimal :price
      t.string :location
      t.boolean :featured_post

      t.timestamps null: false
    end
  end
end
