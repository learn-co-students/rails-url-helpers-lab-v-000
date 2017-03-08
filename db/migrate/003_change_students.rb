class ChangeStudents < ActiveRecord::Migration

  def change
    change_column :students, :active, :boolean, null: false, default: false
  end

end
