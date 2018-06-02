class SetActiveDefaultOnStudents < ActiveRecord::Migration
  def change
    change_column_default :students, :active, true
  end
end
