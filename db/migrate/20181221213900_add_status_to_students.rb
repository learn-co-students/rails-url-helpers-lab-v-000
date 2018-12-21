class AddStatusToStudents < ActiveRecord::Migration
  def change
    add_column :students, :status, :integer, default: 0
  end
end
