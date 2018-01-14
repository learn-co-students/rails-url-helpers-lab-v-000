class AddActiveStatusToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean
    change_column_default :students, :active, false
  end
end
