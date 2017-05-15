class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :active, default: 0
      t.timestamps null: false
    end
  end
end
