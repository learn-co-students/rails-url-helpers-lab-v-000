class AddColumnActiveToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean
  end
end
