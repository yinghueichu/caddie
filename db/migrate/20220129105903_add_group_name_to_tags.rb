class AddGroupNameToTags < ActiveRecord::Migration[6.1]
  def change
    add_column :tags, :group_name, :string
  end
end
