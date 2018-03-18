class AddActiveToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, default: 0
  end
end
