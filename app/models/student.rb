class Student < ActiveRecord::Base
  
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    if !self.active?
      "inactive"
    else 
      "active"
    end
  end
 
end
