class AddColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, :null => false, :default => 0
  end
end
