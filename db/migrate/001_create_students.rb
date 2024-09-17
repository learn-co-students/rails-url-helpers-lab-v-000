class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      #Create a new boolean attribute called active in the students table.
      t.boolean :active, :default =>  false
      #Ex:- :default =>''
      t.timestamps null: false
    end
  end
end