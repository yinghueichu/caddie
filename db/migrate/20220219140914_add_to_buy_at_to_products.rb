class AddToBuyAtToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :to_buy_at, :datetime
    add_column :products, :bought_at, :datetime
    add_column :products, :archive_at, :datetime
  end
end
