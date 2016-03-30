class SetDefault < ActiveRecord::Migration
  def self.up
    add_column :students, :active, :boolean, :default => "false"
  end
end
