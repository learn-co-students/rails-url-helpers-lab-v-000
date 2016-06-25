class Student < ActiveRecord::Base
  # after_initialize :set_defaults
  
  def to_s
    self.first_name + " " + self.last_name
  end
end
