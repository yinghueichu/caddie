class RemoveCategoryToProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :category, :string
  end
end
