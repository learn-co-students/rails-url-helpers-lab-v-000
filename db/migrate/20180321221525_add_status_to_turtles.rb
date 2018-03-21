class AddStatusToTurtles < ActiveRecord::Migration
  def change
    add_column :turtles, :active, :boolean, default: false
  end
end
