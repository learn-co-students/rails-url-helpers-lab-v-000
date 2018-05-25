class AddActiveDefault < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, :default => false
  end
end


# https://stackoverflow.com/questions/1186400/how-to-set-default-values-in-rails
