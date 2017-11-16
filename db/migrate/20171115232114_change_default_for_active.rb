class ChangeDefaultForActive < ActiveRecord::Migration
  def change
    change_column_default(:students, :active, 0)
  end
end
