class ChangeActiveDefaultToStudents < ActiveRecord::Migration
  def up
    change_column :students, :active, :boolean, default: false
  end
  def down
    change_column :students, :active, :boolean, default: true
  end
end
