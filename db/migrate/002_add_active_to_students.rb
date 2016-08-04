class AddActiveToStudents < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.boolean :active, default: false
      # could this also be?:
      # add_column :active, :boolean, default: false
    end
  end
end
