class AddDateToDays < ActiveRecord::Migration
  def change
    add_column :days, :day, :date
  end
end
