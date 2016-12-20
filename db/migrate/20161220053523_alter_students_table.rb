class AlterStudentsTable < ActiveRecord::Migration
  def change
  	change_table :students do |s|
  		s.boolean :active, :default => false
  	end
  end
end
