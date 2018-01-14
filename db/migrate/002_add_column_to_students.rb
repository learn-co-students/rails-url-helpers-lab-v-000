class AddColumnToStudents < ActiveRecord::Migration
	def change
		add_column :students, :active, :integer, :null => false, :default => 0
    end
end