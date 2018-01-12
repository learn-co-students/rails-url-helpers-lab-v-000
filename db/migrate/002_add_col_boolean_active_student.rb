class AddColBooleanActiveStudent < ActiveRecord::Migration
  def up
  add_column :students, :active, :boolean, default: false
 end

  def down
    add_column :students, :active, :boolean, default: true
  end
end
