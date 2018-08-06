class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

 def status
    if self.active
      "active"
    else
      "inactive" 
    end
end 

def change_status
  if !self.active
    self.active= true
    self.save 
  end
end 

end