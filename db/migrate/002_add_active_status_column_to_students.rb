class AddActiveStatusColumnToStudents < ActiveRecord::Migration
    def change
        change_table(:students) do |t|
            t.column :active, :boolean, :default => false
        end
    end
  end


  