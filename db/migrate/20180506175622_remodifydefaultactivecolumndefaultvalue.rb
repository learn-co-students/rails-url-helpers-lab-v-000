class Remodifydefaultactivecolumndefaultvalue < ActiveRecord::Migration
  def change
    change_column_default :students, :active, from: false, to: true
  end
end
