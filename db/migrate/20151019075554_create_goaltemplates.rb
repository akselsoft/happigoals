class CreateGoaltemplates < ActiveRecord::Migration
  def change
    create_table :goaltemplates do |t|
      t.string :goal
      t.string :area

      t.timestamps null: false
    end
  end
end
