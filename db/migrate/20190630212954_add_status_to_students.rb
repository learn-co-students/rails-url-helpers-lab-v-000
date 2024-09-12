class AddStatusToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :boolean, null: false, default: false
  end
end
