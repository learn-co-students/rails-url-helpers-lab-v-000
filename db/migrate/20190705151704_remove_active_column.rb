class RemoveActiveColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :active 
  end
end
