class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def toggle_active_status
    self.active == true ? self.active = false : self.active = true 
    self.save
  end 
end