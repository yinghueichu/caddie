class CreateProductLists < ActiveRecord::Migration[6.1]
  def change
    create_table :product_lists do |t|
      t.references :product, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
