class ChangeStudentsDefault < ActiveRecord::Migration
  def change
    change_column_default :students, :active, false
  end
end
