class RemoveStatusFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :status
  end
end
