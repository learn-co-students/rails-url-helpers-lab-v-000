class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def active?
    if self.active
      "active"
    else
      "inactive"
      
    end
  end 
end