class AddDefaultBooleanToStudents < ActiveRecord::Migration
  def change
    change_column :students, :active, :boolean, :default => false
  end
end
