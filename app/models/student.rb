class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
end

# create_table :my_objects do |t|
#   t.string :column_one, default: 'foo'
#   t.string :column_two
# end


# can generate a new column, but how to make it boolean and make the default false 

# def up
#   change_column :profiles, :show_attribute, :boolean, default: true
# end
#
# def down
#   change_column :profiles, :show_attribute, :boolean, default: nil
# end
