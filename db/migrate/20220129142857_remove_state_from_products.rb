class RemoveStateFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :state, :string
  end
end
