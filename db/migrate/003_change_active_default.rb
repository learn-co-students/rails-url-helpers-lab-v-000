class ChangeActiveDefault < ActiveRecord::Migration
  def change
    change_column_default :students, :active, default: false
  end
end
