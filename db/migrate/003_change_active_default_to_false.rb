class ChangeActiveDefaultToFalse < ActiveRecord::Migration
  remove_column :students, :active
  add_column :students, :active, :boolean, default: false
end
