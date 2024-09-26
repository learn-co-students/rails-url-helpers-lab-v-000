class Student < ActiveRecord::Base
  # attr_accessor :active
  
  def to_s
    self.first_name + " " + self.last_name
  end  

  def is_active?
     if self.active == true
  "This student is currently active."
    else 
  "This student is currently inactive."
    end 
  end 


  def activate
    self.active = !self.active 
    self.save
  end
end 