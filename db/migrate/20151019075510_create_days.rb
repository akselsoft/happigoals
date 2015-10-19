class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :goal
      t.string :good
      t.string :bad
      t.string :actions
      t.string :regret

      t.timestamps null: false
    end
  end
end
