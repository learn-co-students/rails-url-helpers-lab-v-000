class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def active?
    if self.active == true 
      'This student is currently active.'
    else self.active == false 
      'This student is currently inactive.'
    end
  end
end