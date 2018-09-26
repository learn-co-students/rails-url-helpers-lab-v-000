class ModifyActiveColumnDefault < ActiveRecord::Migration
  def change
    change_column_default :students, :active, from: true, to: false
  end
end