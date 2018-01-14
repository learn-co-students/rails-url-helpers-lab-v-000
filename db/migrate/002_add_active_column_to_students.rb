class AddActiveColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, :null => false, :default => false
  end
end
