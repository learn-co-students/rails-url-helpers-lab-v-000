class AddActiveToStudents < ActiveRecord::Migration
  def up
    add_column :students, :active, :boolean, default: true
  end
  def down
    add_column :students, :active, :boolean, default: nil
  end
end
