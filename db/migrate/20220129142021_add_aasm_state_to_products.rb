class AddAasmStateToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :aasm_state, :string
  end
end
