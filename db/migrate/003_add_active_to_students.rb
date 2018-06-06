
  class AddActiveToStudents < ActiveRecord::Migration 
    def change
      remove_column :students, :active  
      add_column :students, :active, :boolean, :default => true
      
    end
  
  end