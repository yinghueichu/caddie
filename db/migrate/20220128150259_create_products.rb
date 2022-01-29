class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :state
      t.integer :frequency
      t.integer :quantity
      t.string :unity
      t.integer :price
      t.string :description
      t.integer :rating
      t.string :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
