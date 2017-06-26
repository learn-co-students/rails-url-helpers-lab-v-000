class AddActiveToStudents < ActiveRecord::Migration
  def change
    # add_column :table_name, :new_column_name, :type, options
    add_column :students, :active, :boolean, default: false 
  end
end
