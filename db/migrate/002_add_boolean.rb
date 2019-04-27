class AddBoolean < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, defaut: false
  end
end
