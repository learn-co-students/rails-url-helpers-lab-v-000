class AddActiveToStudents < ActiveRecord::Migration

  def up
    add_column :students, :active, :boolean, default: false
  end

  def down
    remove_column :students, :active
  end
end
