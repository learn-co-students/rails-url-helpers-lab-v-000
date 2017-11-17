class AddActiveColumn < ActiveRecord::Migration

  def change
    change_table :students do |t|
      t.boolean :active, :null => false, :default => 0
    end
  end

end
