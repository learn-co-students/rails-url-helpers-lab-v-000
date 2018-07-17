class ChangeActiveToStatus < ActiveRecord::Migration
  def change
    rename_column :students, :active, :statusr
  end
end
