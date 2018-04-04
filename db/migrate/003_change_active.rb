class ChangeActive < ActiveRecord::Migration
  def change
  	remove_column :students, :active, :boolean, default: false
  	add_column :students, :active, :boolean, default:0
end
end