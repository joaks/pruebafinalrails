class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.text :cv
      t.integer :ranking

      t.timestamps null: false
    end
  end
end
