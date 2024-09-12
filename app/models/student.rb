class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate_student  
    if self.active == false 
      self.active = true 
    end 
  end 
end