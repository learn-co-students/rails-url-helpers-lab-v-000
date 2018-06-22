class RemoveActivateColumnFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :activate, :boolean
  end
end
