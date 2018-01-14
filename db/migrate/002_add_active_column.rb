class AddActiveColumn < ActiveRecord::Migration

  def change
    add_column :students, :active, :boolean, null: false, default: true
  end

end
