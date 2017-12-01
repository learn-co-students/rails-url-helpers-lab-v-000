class Migrate2 < ActiveRecord::Migration
  def change
    remove_column :students, :active, :boolean, :default => true
    add_column :students, :active, :boolean, :default => false
  end

end
