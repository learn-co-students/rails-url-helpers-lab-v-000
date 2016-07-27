class AddDefaultValueToActiveAttribute < ActiveRecord::Migration
  # http://stackoverflow.com/questions/8627156/adding-default-true-to-boolean-in-existing-rails-column

  def up
    change_column :students, :active, :boolean, :default => false
  end

  def down
    change_column :students, :active, :boolean, :default => nil
  end
end
