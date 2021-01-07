class AddActiveColumnToStudents < ActiveRecord::Migration
  def change
    # https://stackoverflow.com/questions/1186400/how-to-set-default-values-in-rails
    # Example: change_column :people, :last_name, :type, :default => "Doe"
    add_column :students, :active, :boolean, default: false
  end
end