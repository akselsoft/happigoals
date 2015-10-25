class AddUserIdToDays < ActiveRecord::Migration
  def change
    add_column :days, :user_id, :integer
    add_index :days, :user_id
  end
end
