class AddActive < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, :default => "active"
  end
end
