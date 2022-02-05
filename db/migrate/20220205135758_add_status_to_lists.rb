class AddStatusToLists < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :status, :string
  end
end
