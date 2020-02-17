class CreateTents < ActiveRecord::Migration[6.0]
  def change
    create_table :tents do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :capacity
      t.string :title
      t.integer :comfort_level
      t.text :description
      t.string :location
      t.integer :price
      t.string :photos

      t.timestamps
    end
  end
end
