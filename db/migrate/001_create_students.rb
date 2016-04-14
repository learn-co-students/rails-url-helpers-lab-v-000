class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.boolean :active, default: 0, null: false
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end