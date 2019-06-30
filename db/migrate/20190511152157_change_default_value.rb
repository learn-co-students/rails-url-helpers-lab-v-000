class ChangeDefaultValue < ActiveRecord::Migration[5.0]
  def change
    change_column :students, :active, :boolean, :default => false
  end
end
