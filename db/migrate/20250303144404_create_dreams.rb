class CreateDreams < ActiveRecord::Migration[7.1]
  def change
    create_table :dreams do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.string :category
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
