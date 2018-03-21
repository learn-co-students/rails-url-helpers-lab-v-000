class CreateTurtles < ActiveRecord::Migration
  def change
    create_table :turtles do |t|
      t.string :name
      t.integer :age
    # t.boolean :active, default: false <= This basically won't work for shit
    end
  end
end
