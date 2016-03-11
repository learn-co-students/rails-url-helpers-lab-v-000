class Student < ActiveRecord::Base
  after_initialize :set_default_values
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def set_default_values 
    self.active ||= false
  end
end