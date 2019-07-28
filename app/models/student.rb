class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def toggle
    if self.active === false
      self.active = true
    elsif self.active === true
      self.active = false
    end
    self.save
  end
  
end