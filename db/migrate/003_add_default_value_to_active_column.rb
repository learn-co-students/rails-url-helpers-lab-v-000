class AddDefaultValueToActiveColumn < ActiveRecord::Migration
  def change
    change_column :students, :active, :boolean, default: false, null: false
  end  
end 