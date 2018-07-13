class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      # t.boolean :active, :default => false

      t.timestamps null: false
    end
    # change_table :students do |t|
    # t.boolean :active, :default => false
    # end
    # add_column :students, :active, :boolean
  end
end
