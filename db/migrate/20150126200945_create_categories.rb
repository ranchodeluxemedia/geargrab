class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :description
      t.boolean :featured

      t.timestamps null: false
    end
  end
end
