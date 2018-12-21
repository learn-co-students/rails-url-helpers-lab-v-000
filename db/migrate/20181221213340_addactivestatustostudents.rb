class Addactivestatustostudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :integer, default: 0
  end
end
